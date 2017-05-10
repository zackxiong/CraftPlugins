#pragma once
#include "Package.h"
#include <iostream>
#include "md5.h"
#include "HexTrans.h"
#include "tinyxml2.h"

class XML_format {
public:
	XML_format(char* version = "1.0", char *encoding = "utf-8", char *stand_alone = "");
	~XML_format();
	friend bool XML_format::operator == (XML_format &c, XML_format sample);
protected:
	char *version;
	char *encoding;
	char *stand_alone;
};


class Phaser
{
public:
	//Phaser();
	Phaser(const char* typ=nullptr, const char* in = nullptr, const char* con = nullptr, XML_format = XML_format());
	//Phaser(XML_format = XML_format(), char* typ = nullptr, char* in = nullptr, char* con = nullptr);
	//Phaser(std::string typ=std::string(""), std::string in= std::string(""), std::string con= std::string(""));
	~Phaser();


	bool set_type(char *type);
	bool set_intent(char *intent);
	bool set_content(char *content);

	bool set_type(const char *type);
	bool set_intent(const char *intent);
	bool set_content(const char *content);

	bool set_type(std::string type);
	bool set_intent(std::string intent);
	bool set_content(std::string content);

	const char* get_current_data();

	Package finalize();

protected:
	Package package;
	std::string type, intent, content, hash;
	tinyxml2::XMLDocument xml_buffer;
	tinyxml2::XMLPrinter printer;
	XML_format format;
};

/*
class DePhaser
{
public:
	DePhaser();
	DePhaser(char* typ, char* in, char* con);
	DePhaser(std::string typ, std::string  in, std::string con);
	~DePhaser();

	Package finalize();

protected:
	Package package;
	std::string type, intent, content, hash;
	tinyxml2::XMLDocument xml_buffer;
	
};*/

unsigned char* str_to_unc(std::string str);
std::string unc_to_str(unsigned char* unc);
char* unc_to_c(unsigned char* unc);
char* consc_to_c(const char* c);
std::string to_MD5(std::string str);
std::string to_MD5(char* c);
std::string to_MD5(unsigned char* unc);
bool xml_CheckResult(tinyxml2::XMLError result);