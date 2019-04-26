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

struct conn *conn;


int send_cmd(struct conn *conn, char *cmd)
{
	char cmd_line[MAX_SIZE];
	int cmd_len;
	int size_recv, event_count;
	struct epoll_event event;

	if (conn == NULL) {
		printf("Connection is not established!\n");
		return CMD_WARNING;
	}
	snprintf(cmd_line, MAX_SIZE, "%s\r\n", cmd);

	cmd_len = strlen(cmd_line);

	if (write(conn->fd_client, cmd_line, cmd_len) != cmd_len) {
		perror("Send failed");
		return -1;
	}

	size_recv = read(conn->fd_client, conn->msg_r, conn->msg_r_len_max);

	if (size_recv > 0) {
		conn->msg_r[size_recv] = '\0';
		printf("%s\n", conn->msg_r);
		fflush(stdout);
	}

	event_count = epoll_wait(conn->fd_server_group, &event, 1, 500);
	if (event_count > 0) {
		size_recv = read(conn->fd_client, conn->msg_r, conn->msg_r_len_max);
		if (size_recv > 0) {
			conn->msg_r[size_recv] = '\0';
			printf("%s\n", conn->msg_r);
			fflush(stdout);
		}
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

DEFUN (redis_status,
	   redis_status_cmd,
	   "redis status",
	   "check redis status")
{
	int status = send_cmd(conn, "redis status");
	if (status < 0) 
		return CMD_WARNING;

	return CMD_SUCCESS;
}

DEFUN (link_ls, 
	   link_ls_cmd,
	  "link ls",
	  "Hien thi trang thai cac link")
{
	int status = send_cmd(conn, "link ls");
	if (status < 0)
		return CMD_WARNING;

	return CMD_SUCCESS;
}
DEFUN (corestats_show,
	   corestats_show_cmd,
	   "corestats show",
	   "Hien thi thong ke so luong goi tin vao ra cho tat ca pipeline")
{
	int status = send_cmd(conn, "corestats show");
	if (status < 0)
		return CMD_WARNING;

	return CMD_SUCCESS;
}

DEFUN (corestats_clear,
	   corestats_clear_cmd,
	   "corestats clear", 
	   "Reset lai thong ke ve 0")
{
	int status  = send_cmd(conn, "corestats clear");
	if (status < 0) 
		return CMD_WARNING;
	return CMD_SUCCESS;
}

DEFUN (latency_show,
	   latency_show_cmd,
	   "latency show", 
	   "Hien thi dang latency trung binh")
{

	int status = send_cmd(conn, "latency show");
	if (status < 0) 
		return CMD_WARNING;
	return CMD_SUCCESS;
}

DEFUN (malformed_status,
	   malformed_status_cmd,
	   "malformed status",
	   "Hien thi dang malformed packet ma scrubber co kha nang nhan biet"
	   "va trang thai chan cho dang do (enable hay disable)")
{
	int status = send_cmd(conn, "malformed status");
	if (status < 0) 
		return CMD_WARNING;
	return CMD_SUCCESS;
}

DEFUN (synproxy_status,
	   synproxy_status_cmd,
	   "synproxy status",
	   "Hien thi trang thai chung cua synproxy")
{
	int status;
	status = send_cmd(conn, "synproxy status");
	if (status < 0) 
		return CMD_WARNING;
	return CMD_SUCCESS;
}

DEFUN (synproxy_scrip_ip_status,
	   synproxy_scrip_ip_status_cmd,
	   "synproxy scrip A.B.C.D status",
	   "Kiem tra trang thai cua mot srcIP bat ky")
{
	int status;
	char cmd_line[MAX_SIZE];
	snprintf(cmd_line, MAX_SIZE, "synproxy scrip %s status", argv[0]);

	if ((status = send_cmd(conn, cmd_line)) < 0) 
		return CMD_WARNING;
	return CMD_SUCCESS;
}

DEFUN (ratelimit_dstip_show,
	   ratelimit_dstip_show_cmd,
	   "ratelimit dstip A.B.C.D show",
	   "Hien thi cac thong so rate limit cho <dstip>")
{
	int status;
	char cmd_line[MAX_SIZE];
	snprintf(cmd_line, MAX_SIZE, "ratelimit dstip %s show", argv[0]);
	
	if ((status = send_cmd(conn, cmd_line)) < 0)
		return CMD_WARNING;
	return CMD_SUCCESS;
}

DEFUN (pcap_status, 
	   pcap_status_cmd,
	   "pcap status",
	   "Hien thi thong tin chung ve module pcap")
{
	int status = send_cmd(conn, "pcap status");
	if (status < 0) 
		return CMD_WARNING;
	return CMD_SUCCESS;
}

DEFUN (pcap_dstip_ls,
	   pcap_dstip_ls_cmd,
	   "pcap dstip ls",
	   "Hien thi ca dstip dang duoc capture")
{
	int status = send_cmd(conn, "pcap dstip ls");
	if (status < 0) 
		return CMD_WARNING;
	return CMD_SUCCESS;
}

/*DEFUN (clear,
	   clear_cmd,
	   "clear",
	   "Xoa man hinh")
{

}*/

DEFUN (corestats_show_pipeline_id,
	   corestats_show_pipeline_id_cmd,
	   "corestats show <pipeline_id>",
	   "Hien thi thong ke so luong vao ra voi ID la <ip_pipeline>")
{
	char cmd_line[MAX_SIZE];
	int status;
	snprintf(cmd_line, MAX_SIZE, "corestats show %s", argv[0]);
	status = send_cmd(conn, cmd_line);
	if (status < 0)
		return CMD_WARNING;
	return CMD_SUCCESS;
}

DEFUN (corestats_type,
	   corestats_type_cmd,
	   "corestats (enable|disable|send)",
	   "corestats configure\n"
	   "Enable gui corestats\n"
	   "Disable gui corestats\n"
	   "Gui thong ke len portal dong thoi reset thong ke ve 0."
	   " Khong nen chay command nay bang tay vi co the dan den hien thi sai thong tin tren portal")
{
	char cmd_line[MAX_SIZE];
	int status;
	snprintf(cmd_line, MAX_SIZE, "corestats %s", argv[0]);
	if((status = send_cmd(conn, cmd_line)) < 0)
		return CMD_WARNING;
	return CMD_SUCCESS;
}

DEFUN (sysinfo_type,
	   sysinfo_type_cmd,
	   "sysinfo (enable|disable)",
	   "System info\n"
	   "Enable gui sysinfo\n"
	   "Disable gui sysinfo")
{
	char cmd_line[MAX_SIZE];
	snprintf(cmd_line, MAX_SIZE, "sysinfo %s", argv[0]);
	if (send_cmd(conn, cmd_line) < 0)
		return CMD_WARNING;
	return CMD_SUCCESS;
}

DEFUN (latency_conf,
	   latency_conf_cmd,
	   "latency (enable|disable)",
	   "Configure tinh nang do latency\n"
	   "Enable tinh nang do latency\n"
	   "Disable tinh nang do latency")
{
	char cmd_line[MAX_SIZE];
	snprintf(cmd_line, MAX_SIZE, "latency %s", argv[0]);
	if (send_cmd(conn, cmd_line) < 0)
		return CMD_WARNING;
	return CMD_SUCCESS;
}

DEFUN (malformed_type,
	   malformed_type_cmd,
	   "malformed (enable|disable) WORD",
	   "Malformed configure\n"
	   "Enable tinh nang chan cac goi tin tan cong dang <atack_type>\n"
	   "Disable tinh nang chan cac goi tin co dau hieu tan cong dang <atack_type>\n")
{
	int status;
	char cmd_line[MAX_SIZE];
	snprintf(cmd_line, MAX_SIZE, "malformed %s %s", argv[0], argv[1]);
	status = send_cmd(conn, cmd_line);
	if (status < 0)
		return CMD_WARNING;
	return CMD_SUCCESS;
}

DEFUN (firewall_del_bgpfs_rule,
	   firewall_del_bgpfs_rule_cmd,
	   "firewall del bgpfs rule <rule_id>",
	   "Xoa mot rule ACL trong Scrubber")
{
	char cmd_line[MAX_SIZE];
	snprintf(cmd_line, MAX_SIZE, "firewall del bgpfs rule %s", argv[0]);
	if (send_cmd(conn, cmd_line) < 0) 
		return CMD_WARNING;
	return CMD_SUCCESS;
}

DEFUN (firewall_conf,
	   firewall_conf_cmd,
	   "firewall add priority 10 bgpfs .LINE",
	   "Them rule whilelist")
{
	//printf("argc: %d, argv[0]: %s\n", argc, argv[0]);

	return CMD_SUCCESS;
}

DEFUN (firewall_add_default,
	   firewall_add_default_cmd,
	   "firewall add default <port_id>",
	   "Them rule mac dinh")
{
	char cmd_line[MAX_SIZE];
	snprintf(cmd_line, MAX_SIZE, "firewall add default %s", argv[0]);
	if (send_cmd(conn, cmd_line) < 0) 
		return CMD_WARNING;
	return CMD_SUCCESS;
}

DEFUN (firewall_del_default,
	   firewall_del_default_cmd,
	   "firewall del default",
	   "Xoa rule mac dinh")
{
	if (send_cmd(conn, "firewall del default") < 0)
		return CMD_WARNING;
	return CMD_SUCCESS;
}

DEFUN (synproxy_conf,
	   synproxy_conf_cmd,
	   "synproxy (enable|disable)",
	   "Synproxy configure\n"
	   "Enable tinh nang synproxy\n"
	   "Disable tinh nang synproxy")
{
	char cmd_line[MAX_SIZE];
	snprintf(cmd_line, MAX_SIZE, "synproxy %s", argv[0]);
	if (send_cmd(conn, cmd_line) < 0)
		return CMD_WARNING;
	return CMD_SUCCESS;
}

void vtysh_ippp_init (void)
{
    install_element (ENABLE_NODE, &read_mess_cmd);
    install_element (VIEW_NODE, &read_mess_cmd);
    install_element (VIEW_NODE, &redis_status_cmd);
    install_element (VIEW_NODE, &link_ls_cmd);
    install_element (VIEW_NODE, &corestats_show_cmd);
    install_element (VIEW_NODE, &corestats_clear_cmd);
    install_element (VIEW_NODE, &latency_show_cmd);
    install_element (VIEW_NODE, &malformed_status_cmd);
    install_element (VIEW_NODE, &synproxy_status_cmd);
    install_element (VIEW_NODE, &synproxy_scrip_ip_status_cmd);
    install_element (VIEW_NODE, &ratelimit_dstip_show_cmd);
    install_element (VIEW_NODE, &pcap_status_cmd);
    install_element (VIEW_NODE, &pcap_dstip_ls_cmd);
    install_element (VIEW_NODE, &corestats_show_pipeline_id_cmd);

    install_element (ENABLE_NODE, &malformed_type_cmd);
    install_element (ENABLE_NODE, &corestats_type_cmd);
    install_element (ENABLE_NODE, &sysinfo_type_cmd);
    install_element (ENABLE_NODE, &latency_conf_cmd);

    install_element (CONFIG_NODE, &firewall_del_bgpfs_rule_cmd);
    install_element (CONFIG_NODE, &firewall_conf_cmd);
    install_element (CONFIG_NODE, &firewall_add_default_cmd);
    install_element (CONFIG_NODE, &firewall_del_default_cmd);

}