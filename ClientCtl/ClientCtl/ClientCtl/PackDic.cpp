#pragma once
#include "stdafx.h"
#include "PackDic.h"

struct IntentDic intentDic;
struct ContentDic contentDic;

bool init_dic(InfoSenser* i) {
	intentDic.keepAlive = std::string("KeepAlive");

	contentDic.ID = 
		(std::string("</id>") 
		+ i->macAdd1
		+ std::string("</id>"));
	std::cout << contentDic.ID << std::endl;
	return true;
}