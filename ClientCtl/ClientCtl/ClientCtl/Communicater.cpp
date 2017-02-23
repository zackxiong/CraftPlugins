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
	//std::cout << "initializing sockets..." << std::endl;
	new (this)Communicater(SERVER_ADDR, SOCKET_PORT);
}

Communicater::Communicater(const char * ip, const char* port){
	std::cout << "initializing sockets..." << std::endl;
	this->socketSuccess = true;
	//初始化
	iResult = WSAStartup(MAKEWORD(2, 2), &wsaData);
	std::cout << "WSA starting up..." << std::endl;
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

	int count = 0;
	std::cout << "Looking up server..." << std::endl;
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

	std::cout << "Creating socket..." << std::endl;
	// Create a SOCKET for connecting to server
	ConnectSocket = socket(ptr->ai_family, ptr->ai_socktype,
		ptr->ai_protocol);
	
	while (ConnectSocket == INVALID_SOCKET) {
		printf("Error at socket(): %ld, now tring next address\n", WSAGetLastError());
		if (ptr->ai_next) {
			ptr = ptr->ai_next;
			ConnectSocket = socket(ptr->ai_family, ptr->ai_socktype,
				ptr->ai_protocol);
		}
		else {
			printf("Error at socket(): %ld, no other addresses to be attempted\n", WSAGetLastError());
			freeaddrinfo(result);
			break;
		}
		//WSACleanup();
	}

	iResult = connect(ConnectSocket, ptr->ai_addr, (int)ptr->ai_addrlen);
	if (iResult == SOCKET_ERROR) {
		closesocket(ConnectSocket);
		ConnectSocket = INVALID_SOCKET;
	}
	
	freeaddrinfo(result);

	std::cout << "Attempt to connect..." << std::endl;
	if (ConnectSocket == INVALID_SOCKET) {
		printf("Unable to connect to server!\n");
		//WSACleanup();
	}

	//send
	iResult = send(ConnectSocket, "test \n", (int)strlen("test \n"), 0);
	iResult = send(ConnectSocket, "close \n", (int)strlen("close \n"), 0);
	if (iResult == SOCKET_ERROR) {
		std::cout << "Connect error" << std::endl;
		printf("send failed: %d\n", WSAGetLastError());
		closesocket(ConnectSocket);
		WSACleanup();
	}
}


Communicater::~Communicater(){

}
