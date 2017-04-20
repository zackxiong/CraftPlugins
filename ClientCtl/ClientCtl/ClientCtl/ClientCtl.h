
#pragma once
#include "stdafx.h"

#include "Windows.h"
#include <iostream>
#include <conio.h>
#include "AliveKeeper.h"
#include "Logger.h"
#include "InfoSenser.h"
#include "Communicater.h"
#include "HeadDic.h"
#include "Phaser.h"


extern AliveKeeper* AKr;
extern Logger* logger;
extern InfoSenser* infosenser;
extern Communicater* cmtr;
extern bool checkerNeed;
extern bool setterNeed;
extern bool aliveKeeperNeed;
extern std::string keeperPath;
extern std::string thispath;
extern const char* MY_SERVICE_NAME;

extern DWORD WINAPI serviceCheckerThread(LPVOID pM);
extern DWORD WINAPI communicaterThread(LPVOID pM);
extern HANDLE checkerHandle, setterHandle, aliveKeeperHandle;
extern Logger* logger;
bool send_keepalive_message();