#pragma once
#include <iostream>
#include <sstream>

#ifndef PACKAGE
#include "Package.h"
#define PACKAGE
#endif

#ifndef MD5
#include "md5.h"
#define MD5
#endif

#ifndef HEXTRANS
#include "HexTrans.h"
#define HEXTRANS
#endif

#ifndef TINYXML2
#include "tinyxml2.h"
#define TINYXML2
#endif

#ifndef PACKDIC
#include "PackDic.h"
#define PACKDIC
#endif

#ifndef LOGGER
#include "Logger.h"
#define LOGGER
#endif


class XML_format {
public:
	XML_format(char* version = "1.0", char *encoding = "utf-8", char *stand_alone = "");
	~XML_format();
	friend bool XML_format::operator == (XML_format &c, XML_format sample);
	//tinyxml2::XMLDeclaration * decl = new tinyxml2::XMLDeclaration("1.0", "utf-8", "");
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

	bool set_type(tinyxml2::XMLElement *type);
	bool set_intent(tinyxml2::XMLElement * intent);
	bool set_content(tinyxml2::XMLElement * content);

	tinyxml2::XMLElement* new_Element(char* name);

	const char* get_current_data();

	Package finalize();

protected:
	Package package;
	std::string type, intent, content, hash;
	tinyxml2::XMLDocument xml_buffer;
	tinyxml2::XMLPrinter printer;
	XML_format format;
	char* default_root_node_name = "PACKAGE";
	char* default_hash_node_name = "HASH";
	tinyxml2::XMLDeclaration* declearation;
	tinyxml2::XMLNode * n_Root;
	tinyxml2::XMLElement *e_Type, *e_Intent, *e_Content, *e_Hash;

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
std::string i_to_str(int i);