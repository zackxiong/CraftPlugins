#include "stdafx.h"
#include "Logger.h"
#include <fstream>
#include <iostream>


Logger::Logger()
	:logFile("log.txt", std::ios::ate | std::ios::out | std::ios::app)
{
	
}


Logger::~Logger(){

}

bool Logger::clearLog(){
	std::ofstream clear("A.txt", std::ios::trunc);
	bool result = clear.is_open();
	clear.close();
	return result;
}

//template <class T> void Logger::log(T message);