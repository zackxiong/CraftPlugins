#pragma once
#include "stdafx.h"
#include "PackDic.h"

bool init_dic(InfoSenser *i);
struct TypeDic typeDic;
struct IntentDic intentDic;
struct ContentDic contentDic;
struct Switches switches;

bool init_dic(InfoSenser* i) {
	contentDic.ID = i->macAdd1;
	return true;
}

std::string ContentDic::string(std::string str){
	return str;
}

tinyxml2::XMLElement *ContentDic::men_info(std::vector<float> men_info, Phaser *p){
	tinyxml2::XMLElement *e_mem = p->new_Element("MEMORY"),
		*e_total = p->new_Element("TOTAL"), 
		*e_avail = p->new_Element("AVAIL");
	e_total->SetText( i_to_str((int)infosenser->get_MEM_State()[0]).data() );
	e_avail->SetText( i_to_str((int)infosenser->get_MEM_State()[1]).data()  );
	e_mem->InsertEndChild(e_total);
	e_mem->InsertEndChild(e_avail);
	return e_mem;
}
inline tinyxml2::XMLElement * ContentDic::men_info(float total, float avail, Phaser *p){
	std::vector<float>info(2);
	info[0] = total;
	info[1] = avail;
	return this->men_info(info, p);
}