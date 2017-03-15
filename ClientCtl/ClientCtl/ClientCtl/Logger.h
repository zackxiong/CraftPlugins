#pragma once
#include <string>
#include<iostream>
#include <fstream>
#include <iostream>
#include <sstream>

#include "Communicater.h"

class Logger
{
public:
	Logger(Communicater *cmtr);
	~Logger();

	void log(char *message);
	void log(std::string message);

	bool clearLog();
	bool toFile = false;
private:
	std::ofstream logFile;
	Communicater *cmtr;

};

inline std::string its(int i) {
	std::stringstream s;
	s << i;
	return s.str();
}

