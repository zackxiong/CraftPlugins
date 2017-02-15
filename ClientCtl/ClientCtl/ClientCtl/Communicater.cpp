#include "stdafx.h"
#include "InfoSenser.h"
#include "Service.h"
#include "InfoSenser.h"
#include <string>
#include <iostream>
#include <Windows.h>
#include "Communicater.h"
#include <ws2tcpip.h>

#pragma comment(lib,"ws2_32.lib") 

//默认设置127.0.0.1:1082
Communicater::Communicater(){
	new (this)Communicater(SERVER_ADDR, SOCKET_PORT);
}

Communicater::Communicater(const char * ip, const char* port){
	this->socketSuccess = true;
	//初始化
	iResult = WSAStartup(MAKEWORD(2, 2), &wsaData);
	if (iResult != 0) {
		printf("WSAStartup failed: %d\n", iResult);
		//WSACleanup();
		this->socketSuccess = false;
		return;
	}

	ZeroMemory(&hints, sizeof(hints));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_protocol = IPPROTO_TCP;

	iResult = getaddrinfo(ip, port, &hints, &result);
	if (iResult != 0) {
		printf("getaddrinfo failed: %d\n", iResult);
		//WSACleanup();
		this->socketSuccess = false;
		return;
	}

	// Attempt to connect to the first address returned by
	// the call to getaddrinfo
	ptr = result;

	// Create a SOCKET for connecting to server
	ConnectSocket = socket(ptr->ai_family, ptr->ai_socktype,
		ptr->ai_protocol);

	if (ConnectSocket == INVALID_SOCKET) {
		printf("Error at socket(): %ld\n", WSAGetLastError());
		freeaddrinfo(result);
		//WSACleanup();
	}

	iResult = connect(ConnectSocket, ptr->ai_addr, (int)ptr->ai_addrlen);
	if (iResult == SOCKET_ERROR) {
		closesocket(ConnectSocket);
		ConnectSocket = INVALID_SOCKET;
	}
}


Communicater::~Communicater(){

}
