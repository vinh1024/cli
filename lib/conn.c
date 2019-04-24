#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

#include <sys/socket.h>

#include <sys/epoll.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <errno.h>

#include "conn.h"

#define BUF_SIZE (1024 * 1024)
#define MSG_W_MAX (1024)
#define MSG_R_MAX (1024 * 1024)
#define PORT 8086
#define SERVER_ADDR "192.168.2.67"



int read_msg(int fd, char *msg, int max_len)
{
	int size_recv;
	size_recv = read(fd, msg, max_len);

	if (size_recv > 0) {
		msg[size_recv] = '\0';
		printf("%s", msg);
		fflush(stdout);
	}
	return size_recv;
}

struct conn *conn_init(void) {

	struct sockaddr_in server_addr;
	struct conn *conn;
	int fd_client, status, ret, fd_server_group, event_count;
	int i; 
	struct epoll_event event, events[MAXEVENT];

	conn = calloc(1, sizeof(struct conn));
	if (conn == NULL)
		return NULL;
	conn->buf = calloc(1, BUF_SIZE);
	conn->msg_r = calloc(1, MSG_R_MAX);
	conn->msg_w = calloc(1, MSG_W_MAX);

	if ((conn->buf == NULL) ||
		(conn->msg_r == NULL) ||
		(conn->msg_w == NULL)) {
		conn_free(conn);
		return NULL;
	}

	server_addr.sin_family = AF_INET;
	server_addr.sin_addr.s_addr = inet_addr(SERVER_ADDR);
	server_addr.sin_port = htons(PORT);

	//create socket
	fd_client = socket(AF_INET, SOCK_STREAM, 0);
	if (fd_client == -1) {
		conn_free(conn);
		return NULL;
	}

	// Establish connection
	status = connect(fd_client, (struct sockaddr *)&server_addr, sizeof(server_addr));
	if (status < 0) {
		perror("Cannot connect to the server");
		conn_free(conn);
		return NULL;
	}

	fd_server_group = epoll_create(1);
	if (fd_server_group == -1) {
		conn_free(conn);
		close(fd_client);
		return NULL;
	}
	

	conn->buf_size = BUF_SIZE;
	conn->msg_w_len_max = MSG_W_MAX;
	conn->msg_r_len_max = MSG_R_MAX;
	conn->msg_r_len = 0;
	conn->fd_server_group = fd_server_group;
	conn->fd_client = fd_client;

	event.events = EPOLLIN;
	event.data.fd = fd_client;

	status = epoll_ctl(conn->fd_server_group, EPOLL_CTL_ADD, fd_client, &event);

	event_count = epoll_wait(conn->fd_server_group, events, MAXEVENT, 0);
	
	for (i = 0; i < event_count; i++) {
		printf("Reading file discriptor: %d\n", events[i].data.fd);
		ret = read(events[i].data.fd,conn->msg_r, conn->msg_r_len_max);
		conn->msg_r[ret] = '\0';
		printf("%s\n", conn->msg_r);
	}

	/*if (event.events & EPOLLIN) {
		ret = read(event.data.fd, conn->msg_r, conn->msg_r_len_max);
		if (ret > 0) {
			conn->msg_r[ret] = '\0';
			printf("%s\n", conn->msg_r);
			printf("status: %d\n", status);
		}
	}*/

	return conn;
}

void conn_free(struct conn *conn)
{
	if (conn == NULL)
		return;

	if (conn->fd_server_group)
		close(conn->fd_server_group);

	if (conn->fd_client)
		close(conn->fd_client);

	free(conn->msg_r);
	free(conn->msg_w);
	free(conn);
}
