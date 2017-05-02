#pragma once
#include "stdafx.h"
#include "InfoSenser.h"
#include "HexTrans.h"
#include "Phaser.h"
#include <iostream>


bool init_dic(InfoSenser *i);
struct IntentDic {
	std::string 
		keepAlive,
		sendInfo,
		sendRealTimeInfo;
};
extern IntentDic intentDic;

struct ContentDic {
	std::string ID;
};
extern ContentDic contentDic;