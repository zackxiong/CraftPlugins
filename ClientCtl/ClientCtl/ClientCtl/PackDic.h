#pragma once
#include <iostream>
#include<sstream>

#ifndef INFOSENSER
#include "InfoSenser.h"
#define INFOSENSER
#endif

#ifndef PHASER
#include "Phaser.h"
#define PHASER
#endif

/*
#ifndef DIC_STRING_DEFINED
typedef std::string std::string;
#define DIC_STRING_DEFINED
#endif // !DIC_STRING_DEFINED
*/

class Phaser;

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
		status_0 = std::string("false"),
		status_1 = std::string("true")
		;

	std::string string(std::string str);
	tinyxml2::XMLElement *men_info(std::vector<float> men_info, Phaser *p);
	tinyxml2::XMLElement * men_info(float total, float avail, Phaser *p);
};
extern ContentDic contentDic;

struct Switches {
	bool
		report_MEM = true,
		report_ALIVE = true;
};

extern Switches switches;