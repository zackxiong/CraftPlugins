#pragma once
#pragma warning(disable: 4996)

#define DEFAULT_BUFLEN 512

#include <string>
#include <Windows.h>
#include <stdlib.h>
#include <vector>

#ifndef SERVICE
#include "Service.h"
#define SERVICE
#endif

#ifndef PHASER
#include "Phaser.h"
#define PHASER
#endif

#ifndef PACKDIC
#include "PackDic.h"
#define PACKDIC
#endif // !

//#include <algorithm>

class Communicater{
public:
	Communicater();
	Communicater(const char* ip, const char* port);
	~Communicater();

	std::vector<Package> quene;

	WSADATA wsaData;
	struct addrinfo *result = NULL,
		*ptr = NULL,
		hints;
	SOCKET ConnectSocket = INVALID_SOCKET;
	bool socketSuccess;
	const char * ip;
	const char* port;

	bool connectTillSuccess(const char * ip, const char * port);
	bool connectTillSuccess(const char * ip, const char * port, int count);
	bool mySetup();
	bool myLookUp(const char * ip, const char* port);
	bool myConnect();
	int mySend(std::string message);
	int mySend(Package p);
	int mySend(int number);
	int mySend(byte data[]);
	int heart_Beat_Delay = 1000;

	bool send_keep_alive();
	Package p_alive_Buffer = Package();
	bool heart_beat();

	friend Communicater &Communicater::operator << (Communicater &c, char *a); //重载<<
	friend Communicater &Communicater::operator << (Communicater &c, std::string a);
	friend Communicater &Communicater::operator << (Communicater &c, int a);

protected:
	int iResult;
	int quene_MAX = 10;//包队列最大容量
	bool send_Mem();
};