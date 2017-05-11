#pragma once
#include "stdafx.h"
#include "InfoSenser.h"
#include "HexTrans.h"
#include "Phaser.h"
#include <iostream>
/*
#ifndef DIC_STRING_DEFINED
typedef std::string std::string;
#define DIC_STRING_DEFINED
#endif // !DIC_STRING_DEFINED
*/

extern bool init_dic(InfoSenser *i);
struct TypeDic {
	std::string
		default_node_name = std::string("TYPE"),
		keepAlive = std::string("KeepAlive"),
		info = std::string("SendInfo"),
		//realTimeInfo = std::string("SendRealTimeInfo"),//并不需要这玩意。。。
		changeState = std::string("ChangeState")
		;
};
extern TypeDic typeDic;

struct IntentDic {
	std::string
		default_node_name = std::string("INTENT"),
		activate = std::string("Activate"),
		offLine = std::string("OffLine"),
		onLine = std::string("Online"),
		error = std::string("Error"),
		log = std::string("Log"),
		notify = std::string("Notify"),
		update = std::string("Update")
		;
};
extern IntentDic intentDic;

struct ContentDic {
	std::string ID,
		default_node_name = std::string("CONTENT"),
		status_0 = (std::string("</STATUS>") + "false" + std::string("</STATUS>")),
		status_1 = (std::string("</STATUS>") + "true" + std::string("</STATUS>"))
		;

	std::string string(std::string str);
	std::string men_info(std::vector<float> men_info);
	std::string men_info(float total, float avail);
};
extern ContentDic contentDic;

struct Switches {
	bool
		report_MEM = true,
		report_ALIVE = true;
};

extern Switches switches;