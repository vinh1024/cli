#include <netdb.h> 
#include <stdio.h> 
#include <stdlib.h> 
#include <string.h> 
#include <sys/socket.h>
#include <zebra.h>

#include <readline/readline.h>
#include <readline/history.h>

#include "command.h"
#include "vtysh.h"
#include "if.h"


#include <sys/epoll.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <errno.h>

#include "lib/conn.h"

#define MAX_SIZE (1024 * 1024)
#define PORT 8086
#define SER_ADDR "127.0.0.1"

struct conn *conn;

int conn_poll_for_msg(struct conn *conn);

char history_ippp[MAXPATHLEN];
static char *cmd_line;

char * ip_rl_gets ()
{
	if (cmd_line) {
		free(cmd_line);
		cmd_line = NULL;
	}

	/* Get a line from the user. */
	cmd_line = readline ("");

	return cmd_line;
}

DEFUN(ippp_config,
      ippp_config_cmd,
      "ippp enable",
      "Config: ip_pipeline")
{
	int cmd_len;
	int status, size_recv;
	char mess[MAX_SIZE], command[MAX_SIZE];
	struct sockaddr_in server_addr; 

	// Create a socket for server communication
	int fd_server = socket(AF_INET, SOCK_STREAM, 0);
	if (fd_server < 0) {
		perror("Create socket failed");
		return CMD_SUCCESS;
	}

	// Establish connection
	server_addr.sin_family = AF_INET;
	server_addr.sin_addr.s_addr = inet_addr(SER_ADDR);
	server_addr.sin_port = htons(PORT);

	if (connect(fd_server, (struct sockaddr *) &server_addr, sizeof(server_addr)) < 0)
	{
		perror("Cannot connect to the server");
		return CMD_SUCCESS;
	}
	sleep(3);
	size_recv = read(fd_server, mess, MAX_SIZE);

	if (size_recv > 0) {
		mess[size_recv] = '\0';
		printf("%s", mess);
		fflush(stdout);
	}

	while (1) {
		ip_rl_gets();
		if (cmd_line == NULL || !(strcmp(cmd_line, "disable"))) {
			return CMD_SUCCESS;
		}

		snprintf(command, MAX_SIZE, "%s\n", cmd_line);

		cmd_len = strlen(command);

		if (write(fd_server, command, cmd_len) != cmd_len) {
			perror("Send failed");
			return CMD_SUCCESS;
		}

		sleep(1);
		size_recv = read(fd_server, mess, MAX_SIZE);
		if (size_recv > 0) {
			mess[size_recv] = '\0';
			printf("%s", mess);
			fflush(stdout);
		}
	}
	status = close(fd_server);
	if (status) {
		perror("Connection close failed");
		return CMD_SUCCESS;
	}
    return CMD_SUCCESS;
}

DEFUN(read_mess,
	  read_mess_cmd,
	  "read mess", 
	  "read message from ip pipeline")
{
	int size_recv;
	size_recv = read(conn->fd_client, conn->msg_r, conn->msg_r_len_max);

	if (size_recv > 0) {
		conn->msg_r[size_recv] = '\0';
		printf("%s", conn->msg_r);
		fflush(stdout);
	}
	return CMD_SUCCESS;
}


int send_cmd(struct conn *conn, char *cmd)
{
	char cmd_line[MAX_SIZE];
	int cmd_len;

	snprintf(cmd_line, MAX_SIZE, "%s\r\n", cmd);

	cmd_len = strlen(cmd_line);

	if (write(conn->fd_client, cmd_line, cmd_len) != cmd_len) {
		perror("Send failed");
		return CMD_SUCCESS;
	}

	conn_poll_for_msg(conn);

	return CMD_SUCCESS;
}

int conn_poll_for_msg(struct conn *conn)
{
	struct epoll_event events[MAXEVENT];
	int event_count = 0;
	int i, ret;
	/* Check input arguments */
	if (conn == NULL)
		return CMD_SUCCESS;


  	event_count = epoll_wait(conn->fd_server_group, events, MAXEVENT, 0);
  	printf("event count: %d\n", event_count);
	if (event_count < 1)
		return CMD_SUCCESS;

	for (i = 0; i < event_count; i++) {
		printf("Reading file discriptor: i = %d\t%d\n",i, events[i].data.fd);
		if (events[i].events & EPOLLIN) {
			
			ret = read(events[i].data.fd,conn->msg_r, conn->msg_r_len_max);
			conn->msg_r[ret] = '\0'; 
			printf("%s\n", conn->msg_r);
		}	
		

	}

	/* Data available 
	if (event.events & EPOLLIN) {
		status_data = read(fd_server, conn->msg_r, conn->msg_r_len_max);
		if (status_data > 0) {
			conn->msg_r[status_data] = '\0';
			printf("%s\n", conn->msg_r);
			fflush(stdout);
		}
	}*/

	return CMD_SUCCESS;
}


DEFUN (redis_status,
	   redis_status_cmd,
	   "redis status",
	   "check redis status")
{
	send_cmd(conn, "redis status");
	return CMD_SUCCESS;
}

DEFUN (link_ls, 
	   link_ls_cmd,
	  "link ls",
	  "Hien thi trang thai cac link")
{
	send_cmd(conn, "link ls");
	return CMD_SUCCESS;
}
DEFUN ()

void vtysh_ippp_init (void)
{
    install_element (ENABLE_NODE, &ippp_config_cmd);
    install_element (ENABLE_NODE, &read_mess_cmd);
    install_element (ENABLE_NODE, &redis_status_cmd);
    install_element (VIEW_NODE, &link_ls_cmd);
}
