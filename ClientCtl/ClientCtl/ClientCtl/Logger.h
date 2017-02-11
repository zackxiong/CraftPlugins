#pragma once
#include <string>
#include<iostream>
#include <Windows.h>
#include <fstream>
#include <iostream>


class Logger
{
public:
	Logger();
	~Logger();
	template <class T> void log(T message) {
		SYSTEMTIME t1;
		GetSystemTime(&t1);
		this->logFile << "[" << t1.wDay << ":" << t1.wHour << ":" << t1.wMinute << ":" << t1.wSecond << "]: " << message << std::endl;
	}
	bool clearLog();
private:
	std::ofstream logFile;

};

