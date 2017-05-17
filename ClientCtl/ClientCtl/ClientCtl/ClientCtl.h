
#pragma once
#include "stdafx.h"

#include "Windows.h"
#include <iostream>
#include <conio.h>

#ifndef ALIVEKEEPER
#include "AliveKeeper.h"
#define ALIVEKEEPER
#endif

#ifndef LOGGER
#include "Logger.h"
#define LOGGER
#endif

#ifndef INFOSENSER
#include "InfoSenser.h"
#define INFOSENSER
#endif

#ifndef COMMUNICATER
#include "Communicater.h"
#define COMMUNICATER
#endif

#ifndef PACKDIC
#include "PackDic.h"
#define PACKDIC
#endif

#ifndef PHASER
#include "Phaser.h"
#define PHASER
#endif
class Communicater;
extern AliveKeeper* AKr;
extern Logger* logger;
extern InfoSenser* infosenser;
extern Communicater* cmtr;
extern bool checkerNeed;
extern bool setterNeed;
extern bool aliveKeeperNeed;
extern bool keep_Alive_Need;
extern bool heart_Beat_Need;
extern std::string keeperPath;
extern std::string thispath;
extern const char* MY_SERVICE_NAME;

extern DWORD WINAPI serviceCheckerThread(LPVOID pM);
extern DWORD WINAPI communicaterThread(LPVOID pM);
extern HANDLE checkerHandle, setterHandle, aliveKeeperHandle;
extern Logger* logger;