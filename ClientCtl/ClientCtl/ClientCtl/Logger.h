#pragma once
#include <string>
#include<iostream>
#include <fstream>
#include <iostream>
#include <sstream>

#ifndef PHASER
#include "Phaser.h"
#define PHASER
#endif // !

#ifndef COMMUNICATER
#include "Communicater.h"
#define COMMUNICATER
#endif // !

#ifndef PACKDIC
#include "PackDic.h"
#define PACKDIC
#endif // !

class Communicater;
class Phaser;

class Logger
{
public:
	Logger(Communicater *cmtr);
	~Logger();

	void log(char *message);
	void log(std::string message);
	void error(char* message);
	void error(std::string message);

	bool clearLog();
	bool toFile = false;
protected:
	std::ofstream logFile;
	Communicater *cmtr;
	Phaser* phaser;

};

inline std::string its(int i) {
	std::stringstream s;
	s << i;
	return s.str();
}

