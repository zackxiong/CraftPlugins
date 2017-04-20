#include "stdafx.h"
#include "Phaser.h"


Phaser::Phaser()
	:package()
{

}


Phaser::~Phaser(){

}

bool Phaser::set_type(char * type){
	try {
		std::string raw_type(type);
		std::string beg("<type>"), end("</type>");
		std::string fine_type = beg + raw_type + end;
		this->type = fine_type;
		return true;
	}
	catch (void* e) {
		return false;
	}
}

bool Phaser::set_intent(char * intent){
	try {
		std::string raw_intent(intent);
		std::string beg("<intent>"), end("</intent>");
		std::string fine_intent = beg + raw_intent + end;
		this->intent = fine_intent;
		return true;
	}
	catch (void* e) {
		return false;
	}
}

bool Phaser::set_content(char * content){
	try {
		std::string raw_content(content);
		std::string beg("<content>"), end("</content>");
		std::string fine_content = beg + raw_content + end;
		this->content = fine_content;
		return true;
	}
	catch (void* e) {
		return false;
	}
}
