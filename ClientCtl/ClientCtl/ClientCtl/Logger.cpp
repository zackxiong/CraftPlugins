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

		//*cmtr << msg;
		std::cout << "[" << (int)t1.wDay << ":" << (int)t1.wHour << ":" << (int)t1.wMinute << ":" << (int)t1.wSecond << "]: "
			<< message << std::endl;
		phaser.set_type(typeDic.info);
		phaser.set_intent(intentDic.log);
		phaser.set_content(contentDic.string(msg));
		cmtr->quene.push_back(phaser.finalize());
	}
}

void Logger::log(std::string message){
	this->log((char*)message.data());
}

void Logger::error(char* message) {
	SYSTEMTIME t1;
	GetSystemTime(&t1);
	std::string msg, idle("");
	msg = "(error)[" + its((int)t1.wDay) + ":" + its((int)t1.wHour) + ":" + its((int)t1.wMinute) + ":" + its((int)t1.wSecond) + "]: "
		+ message + "\n";

	if (toFile)
		this->logFile << "[" << (int)t1.wDay << ":" << (int)t1.wHour << ":" << (int)t1.wMinute << ":" << (int)t1.wSecond << "]: "
		<< message << std::endl;

	//*cmtr << msg;
	std::cout << "[" << (int)t1.wDay << ":" << (int)t1.wHour << ":" << (int)t1.wMinute << ":" << (int)t1.wSecond << "]: "
		<< message << std::endl;
	phaser.set_type(typeDic.info);
	phaser.set_intent(intentDic.error);
	phaser.set_content(contentDic.string(msg));
	cmtr->quene.push_back(phaser.finalize());
}

void Logger::error(std::string message) {
	this->error(message.data());
}

bool Logger::clearLog(){
	std::ofstream clear("A.txt", std::ios::trunc);
	bool result = clear.is_open();
	clear.close();
	return result;
}

//template <class T> void Logger::log(T message);