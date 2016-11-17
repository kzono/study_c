//
// testSocketServer.cpp
//

#include "SocketServer.h"

int main(){
	SocketServer server;

	server.listen();
	server.accept();

	server.write();

	server.close();

	return 0;
}

