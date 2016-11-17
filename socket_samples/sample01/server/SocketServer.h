//
// SocketServer.h
//
#ifndef SOCKET_SERVER_H
#define SOCKET_SERVER_H

#include <netinet/in.h>

class SocketServer{
public:
	SocketServer(int portNo);	
	SocketServer();	
	~SocketServer();	
	void listen();
	void accept();
	void write();
	void close();

private:
	int m_portNo;	// ポート番号
	int m_sock0;	// ソケット
	int m_session;	// セッション
	struct sockaddr_in m_addr;
	struct sockaddr_in m_client;
	socklen_t m_len;		//


};

#endif // SOCKET_SERVER_H

