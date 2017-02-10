#pragma once
#pragma warning(disable: 4996)

#include "Service.h"
#include <string>
#include <Windows.h>

class Communicater
{
public:
	Communicater();
	Communicater(const char* ip, const u_short port);
	~Communicater();

	SOCKET s;
	sockaddr_in sockaddr;
	WSADATA WSAData;
	struct hostent *host;
	bool socketSuccess;
};

