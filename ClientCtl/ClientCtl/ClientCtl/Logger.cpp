#include "stdafx.h"
#include "Logger.h"
#include <fstream>
#include <iostream>


Logger::Logger(Communicater *cmtr)
	:logFile("log.txt", std::ios::ate | std::ios::out | std::ios::app)
{
	this->cmtr = cmtr;
}


Logger::~Logger(){

}

void Logger::log(char * message){
	{
		SYSTEMTIME t1;
		GetSystemTime(&t1);
		std::string msg, idle("");
		msg = "[" + its((int)t1.wDay) + ":" + its((int)t1.wHour) + ":" + its((int)t1.wMinute) + ":" + its((int)t1.wSecond) + "]: "
			+ message + "\n";

		if (toFile)
			this->logFile << "[" << (int)t1.wDay << ":" << (int)t1.wHour << ":" << (int)t1.wMinute << ":" << (int)t1.wSecond << "]: "
			<< message << std::endl;

		*cmtr << msg;
		std::cout << "[" << (int)t1.wDay << ":" << (int)t1.wHour << ":" << (int)t1.wMinute << ":" << (int)t1.wSecond << "]: "
			<< message << std::endl;
	}
}

void Logger::log(std::string message){
	this->log((char*)message.data());
}

bool Logger::clearLog(){
	std::ofstream clear("A.txt", std::ios::trunc);
	bool result = clear.is_open();
	clear.close();
	return result;
}

//template <class T> void Logger::log(T message);