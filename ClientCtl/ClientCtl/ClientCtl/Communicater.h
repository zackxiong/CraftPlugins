#pragma once
#pragma warning(disable: 4996)

#define DEFAULT_BUFLEN 512

#include "Service.h"
#include <string>
#include <Windows.h>


class Communicater{
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

	bool connectTillSuccess(const char * ip, const char * port);
	bool connectTillSuccess(const char * ip, const char * port, int count);
	bool mySetup();
	bool myLookUp(const char * ip, const char* port);
	bool myConnect();
	int mySend(std::string message);
	int mySend(int number);
	int mySend(byte data[]);

	friend Communicater &Communicater::operator << (Communicater &c, char *a); //жиди<<
	friend Communicater &Communicater::operator << (Communicater &c, std::string a);
	friend Communicater &Communicater::operator << (Communicater &c, int a);

protected:
	int iResult;
};