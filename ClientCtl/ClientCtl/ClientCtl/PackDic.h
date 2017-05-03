#pragma once
#include "stdafx.h"
#include "InfoSenser.h"
#include "HexTrans.h"
#include "Phaser.h"
#include <iostream>


extern bool init_dic(InfoSenser *i);
struct TypeDic {
	std::string 
		keepAlive,
		info,
		realTimeInfo,
		changeState;
};
extern TypeDic typeDic;

struct IntentDic {
	std::string
		onLine,
		offLine,
		activate,
		log,
		error,
		notify
		;
};
extern IntentDic intentDic;

struct ContentDic {
	std::string ID,
		status_0,
		status_1
		;

	std::string string(std::string str);
};
extern ContentDic contentDic;