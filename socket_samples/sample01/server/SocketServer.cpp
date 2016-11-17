//
// SocketServer.cpp
//
#include "SocketServer.h"

//#include <netinet/in.h>	// 
#include <unistd.h>


SocketServer::SocketServer(int portNo)
: m_portNo(portNo){	

	// ソケットの作成
	m_sock0 = socket(AF_INET, SOCK_STREAM, 0);

	// ソケットの設定
	m_addr.sin_family = AF_INET;
	m_addr.sin_port = htons(m_portNo);
	m_addr.sin_addr.s_addr = INADDR_ANY;
	bind(m_sock0, (struct sockaddr *)&m_addr, sizeof(m_addr));

}

SocketServer::SocketServer(){	
}

SocketServer::~SocketServer(){	
}

// TCPクライアントからの接続要求を待てる状態にする
void SocketServer::listen(){
	const int MAX_QUEUE_CONNECTION = 5;
	::listen(m_sock0, MAX_QUEUE_CONNECTION);
}

void SocketServer::accept(){

	m_session = ::accept(m_sock0, (struct sockaddr *)&m_client, &m_len);	
}

void SocketServer::write(){
	// データとデータサイズを引数にするはず
	::write(m_session, "HELLO", 5);
}

void SocketServer::close(){
	// TCPセッションの終了
	::close(m_session);

	// listen するソケットの終了
	::close(m_sock0);
}
