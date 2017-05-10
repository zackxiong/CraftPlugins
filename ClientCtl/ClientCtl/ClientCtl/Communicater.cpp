#include "stdafx.h"
#include "InfoSenser.h"
#include "Service.h"
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
	this->connectTillSuccess(ip, port);
	//send
	this->ip = ip;
	this->port = port;
	//this->mySend("connected");
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

int Communicater::mySend(Package p) {
	std::string message = p.str_data;
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
	p.set_type(typeDic.keepAlive.data());
	p.set_intent(typeDic.keepAlive.data());
	//p.set_content(const_cast<char*>(to_MD5(contentDic.ID).data()));
	p.set_content(contentDic.ID.data());
	return (bool)this->mySend(p.finalize().is_done?p.finalize():Package());
}

bool Communicater::heart_beat(){
	extern bool keep_Alive_Need;//ka加上检测通畅
	if (keep_Alive_Need && !this->send_keep_alive()) {
		quene.clear();
		return false;
	}
	keep_Alive_Need = false;

	this->send_Mem();

	for (int i = 0; i < quene.size(); i++) {//clear out possiblly corrupted packages
		if (!quene[i].is_done) {
			std::cout << "clear package at" << i << std::endl;
			this->quene.erase(quene.begin()+i);
		}
		i++;
	}
	while (!this->quene.empty()) {
		if ( this->mySend( quene.back() ) ) {//如果发送成功
			quene.pop_back();
		}
		else {
			if(quene.size() > this->quene_MAX) //保证队列不会溢出
				quene.clear();
			return false;
		}
	}
	return true;
}

bool Communicater::send_Mem(){
	if (switches.report_MEM) {
		Package pak = Phaser(typeDic.info.data(),
			intentDic.update.data(),
			contentDic.men_info(infosenser->get_MEM_State()).data()
		).finalize();
		
		for (int i = 0; i < quene.size(); i++) {
			if (quene[i].hash == pak.hash)
				return true;
			/*char sample[3]{quene[i].content[11],quene[i].content[12],quene[i].content[13]};
			char tmplate[3]{'M','E','M'};
			std::cout << "Sample:" << sample << "Template:" << tmplate <<"|"<<quene[i].content<< std::endl;
			if (strcmp(sample, tmplate)) {
				this->quene.erase(quene.begin() + i);
				this->quene.push_back(pak);
				std::wcout << "Replaced:" << std::endl << pak.hash << std::endl;
				return true;
			}*/
			i++;
		}
		this->quene.push_back(pak);
		std::wcout << "Pushed:" << std::endl << pak.hash << std::endl;
	}else
	return false;
	//std::string message = std::string(infosenser->get_MEM_State()[0]);
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
