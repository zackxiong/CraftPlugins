#pragma once
#include "stdafx.h"
#include "InfoSenser.h"
#include "HexTrans.h"
#include "Phaser.h"
#include <iostream>


extern bool init_dic(InfoSenser *i);
struct TypeDic {
	std::string
		keepAlive = std::string("KeepAlive"),
		info = std::string("SendInfo"),
		realTimeInfo = std::string("SendRealTimeInfo"),
		changeState = std::string("ChangeState")
		;
};
extern TypeDic typeDic;

struct IntentDic {
	std::string
		activate = std::string("Activate"),
		offLine = std::string("OffLine"),
		onLine = std::string("Online"),
		error = std::string("Error"),
		log = std::string("Log"),
		notify = std::string("Notify")
		;
};
extern IntentDic intentDic;

struct ContentDic {
	std::string ID,
		status_0 = (std::string("</STATUS>") + "false" + std::string("</STATUS>")),
		status_1 = (std::string("</STATUS>") + "true" + std::string("</STATUS>"))
		;

	std::string string(std::string str);
};
extern ContentDic contentDic;

struct Switches {
	bool
		report_MEM = false;
};

extern Switches switches;