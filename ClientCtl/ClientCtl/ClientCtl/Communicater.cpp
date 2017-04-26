#include "stdafx.h"
#include "InfoSenser.h"
#include "Service.h"
#include "InfoSenser.h"
#include <string>
#include <iostream>
#include <Windows.h>
#include "Communicater.h"
#include <ws2tcpip.h>
#include "HeadDic.h"

#pragma comment(lib,"ws2_32.lib") 

//默认设置127.0.0.1:1082
Communicater::Communicater(){
	//std::cout << "initializing sockets..." << std::endl;
	new (this)Communicater(SERVER_ADDR, SOCKET_PORT);
}

Communicater::Communicater(const char * ip, const char* port){
	this->connectTillSuccess(ip, port);
	//send
	this->ip = ip;
	this->port = port;
	this->mySend("connected");
}


Communicater::~Communicater(){
	freeaddrinfo(result);
	closesocket(ConnectSocket);
	WSACleanup();
}

bool Communicater::connectTillSuccess(const char * ip, const char* port) {//阻塞到死
	while (!(this->mySetup()
		&& this->myLookUp(ip, port)
		&& this->myConnect())) {
		_sleep(500);
		std::cout << "Socket init failed, retry.." << std::endl;
	}
	return true;
}

bool Communicater::connectTillSuccess(const char * ip, const char* port, int count) {//自定义重试次数
	bool failed = false;
	while ( !
		(this->mySetup()
		&& this->myLookUp(ip, port)
		&& this->myConnect())
		) {
		if (count-- > 0) {
			failed = true;
			break;
		}
		_sleep(500);
		std::cout << "Socket init failed, retry.." << std::endl;
	}
	if (failed)
		return false;
	else
		return true;
}

bool Communicater::mySetup(){
	std::cout << "initializing sockets..." << std::endl;
	this->socketSuccess = true;
	//初始化
	iResult = WSAStartup(MAKEWORD(2, 2), &wsaData);
	std::cout << "WSA starting up..." << std::endl;
	if (iResult != 0) {
		printf("WSAStartup failed: %d\n", iResult);
		//WSACleanup();
		this->socketSuccess = false;
		return false;
	}

	ZeroMemory(&hints, sizeof(hints));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_protocol = IPPROTO_TCP;
	return true;
}

bool Communicater::myLookUp(const char * ip, const char* port){
	int count = 0;
	std::cout << "Looking up server..." << std::endl;
	iResult = getaddrinfo(ip, port, &hints, &result);
	if (iResult != 0) {
		printf("getaddrinfo failed: %d\n", iResult);
		//WSACleanup();
		this->socketSuccess = false;
		return false;
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
	return true;
}

bool Communicater::myConnect(){
	std::cout << "Attempt to connect..." << std::endl;
	iResult = connect(ConnectSocket, ptr->ai_addr, (int)ptr->ai_addrlen);
	if (iResult == SOCKET_ERROR) {
		closesocket(ConnectSocket);
		ConnectSocket = INVALID_SOCKET;
		freeaddrinfo(result);
	}

	if (ConnectSocket == INVALID_SOCKET) {
		printf("Unable to connect to server!\n");
		return false;
		//WSACleanup();
	}
	return true;
}

int Communicater::mySend(std::string message){
	if (message.find("\n") != message.npos) {
		std::cout << "line break found" << std::endl;
	}
	else {
		//message.append("\n");
		std::cout << "line break added(canceled)" << std::endl;
	}
	iResult = send(ConnectSocket, message.data(), (int)strlen(message.data()), 0);
	if (iResult == SOCKET_ERROR) {
		std::cout << "Connect error" << std::endl;
		printf("send failed: %d\n", WSAGetLastError());
		return false;
	}
	return true;
}

int Communicater::mySend(int number) {
	char message[99];
	itoa(number, message, 10);
	iResult = send(ConnectSocket, message, (int)strlen(message), 0);
	if (iResult == SOCKET_ERROR) {
		std::cout << "Connect error" << std::endl;
		printf("send failed: %d\n", WSAGetLastError());
		return false;
	}
	return true;
}

int Communicater::mySend(byte data[]) {
	iResult = send(ConnectSocket, (char*)data, (int)sizeof(data), 0);
	if (iResult == SOCKET_ERROR) {
		std::cout << "Connect error" << std::endl;
		printf("send failed: %d\n", WSAGetLastError());
		return false;
	}
	return true;
}

bool Communicater::send_keep_alive(){
	Phaser p;
	p.set_type(headDic.keepAlive);
	p.set_intent(headDic.keepAlive);
	p.set_content(headDic.keepAlive);
	p.finalize();
	return (bool)this->mySend(headDic.keepAlive);
}

Communicater &operator << (Communicater &c, char *a){
	std::cout << "sending:" << a << std::endl;
	if (c.mySend(a) == SOCKET_ERROR) {
		return c;
	}
	else {
		return c;
	}
}

Communicater &operator << (Communicater &c, std::string a) {
	c << (char*)a.data();
	return c;
}

Communicater &operator << (Communicater &c, int a) {
	std::cout << "sending:" << a << std::endl;
	if (c.mySend(a) == SOCKET_ERROR) {
		return c;
	}
	else {
		return c;
	}
}
