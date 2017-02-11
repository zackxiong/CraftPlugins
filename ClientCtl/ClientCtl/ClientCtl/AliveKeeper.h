#pragma once
#include "StdAfx.h"
#include "AliveKeeper.h"
#include <string>
#include <iostream>
#include <Windows.h>

class AliveKeeper{
public:
	AliveKeeper(std::string serviceName);
	~AliveKeeper(void);
	bool registerService(void);
	bool checkService(void);

	std::string serviceName;
	int setterPid,checkerPid;
	bool isRunning;

private:

protected:




	
};

