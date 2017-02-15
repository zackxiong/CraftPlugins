#pragma once
#pragma warning(disable: 4996)

#define DEFAULT_BUFLEN 512

#include "Service.h"
#include <string>
#include <Windows.h>

class Communicater
{
public:
	Communicater();
	Communicater(const char* ip, const char* port);
	~Communicater();
	
	WSADATA wsaData;
	struct addrinfo *result = NULL,
		*ptr = NULL,
		hints;
	SOCKET ConnectSocket = INVALID_SOCKET;
	bool socketSuccess;

protected:
	int iResult;

};

