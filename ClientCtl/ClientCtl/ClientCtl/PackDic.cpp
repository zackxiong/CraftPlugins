#pragma once
#include "stdafx.h"
#include "PackDic.h"

bool init_dic(InfoSenser *i);
struct TypeDic typeDic;
struct IntentDic intentDic;
struct ContentDic contentDic;
struct Switches switches;

bool init_dic(InfoSenser* i) {
	/*
	typeDic.keepAlive = std::string("KeepAlive");
	typeDic.info = std::string("SendInfo");
	typeDic.realTimeInfo = std::string("SendRealTimeInfo");
	typeDic.changeState = std::string("ChangeState");


	intentDic.activate = std::string("Activate");
	intentDic.offLine = std::string("OffLine");
	intentDic.onLine = std::string("Online");
	intentDic.error = std::string("Error");
	intentDic.log = std::string("Log");
	intentDic.notify = std::string("Notify");
	*/

	contentDic.ID =
		//(std::string("</ID>") 
		i->macAdd1;
		//+ std::string("</ID>"));
	/*
	contentDic.status_0 =
		(std::string("</STATUS>")
			+ "false"
			+ std::string("</STATUS>"));
	contentDic.status_1 =
		(std::string("</STATUS>")
			+ "true"
			+ std::string("</STATUS>"));
	*/
	return true;
}

std::string ContentDic::string(std::string str){
	return(
		//(std::string("</STRING>")
			 str
			//+ std::string("</STRING>"))
		);
}

tinyxml2::XMLElement *ContentDic::men_info(std::vector<float> men_info, Phaser *p){
	char total[10], avail[10];
	_gcvt(infosenser->get_MEM_State()[0], 2, total);
	_gcvt(infosenser->get_MEM_State()[1], 2, avail);

	tinyxml2::XMLElement *e_mem = p->new_Element("MEMORY"),
		*e_total = p->new_Element("TOTAL"), 
		*e_avail = p->new_Element("AVAIL");
	e_total->SetText(total);
	e_avail->SetText(avail);
	e_mem->InsertEndChild(e_total);
	e_mem->InsertEndChild(e_avail);

	//return "<MEMEORY>" + std::string("<TOTAL>") + total + std::string("</TOTAL>") + std::string("<AVAIL>") + avail + std::string("</AVAIL>") + "</MEMORY>";
	return e_mem;
}
inline tinyxml2::XMLElement * ContentDic::men_info(float total, float avail, Phaser *p){
	std::vector<float>info(2);
	info[0] = total;
	info[1] = avail;
	return this->men_info(info, p);
}