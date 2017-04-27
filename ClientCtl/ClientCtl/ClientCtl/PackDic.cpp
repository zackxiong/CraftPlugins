#pragma once
#include "stdafx.h"
#include "PackDic.h"

struct IntentDic intentDic;
struct ContentDic contentDic;

bool init_dic(InfoSenser* i) {
	contentDic.ID = const_cast<char*>( 
		std::string( 
			std::string("</id>") 
			+ to_MD5(std::string(i->macAdd1))
			+ std::string("</id>")).data() ) ;
	return true;
}