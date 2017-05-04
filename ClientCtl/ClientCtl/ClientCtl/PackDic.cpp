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
		(std::string("</ID>") 
		+ i->macAdd1
		+ std::string("</ID>"));
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
		(std::string("</STRING>")
			+ str
			+ std::string("</STRING>"))
		);
}

std::string ContentDic::men_info(std::vector<float> men_info){
	char total[10], avail[10];
	_gcvt(infosenser->get_MEM_State()[0], 2, total);
	_gcvt(infosenser->get_MEM_State()[1], 2, avail);
	return "<MEMEORY>" + std::string("<TOTAL>") + total + std::string("</TOTAL>") + std::string("<AVAIL>") + avail + std::string("</AVAIL>") + "</MEMORY>";
}
inline std::string ContentDic::men_info(float total, float avail){
	std::vector<float>info(2);
	info[0] = total;
	info[1] = avail;
	return this->men_info(info);
}