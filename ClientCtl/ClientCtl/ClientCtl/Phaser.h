#pragma once
#include "Package.h"
#include <iostream>
#include "md5.h"
#include "HexTrans.h"

class Phaser
{
public:
	Phaser();
	Phaser(char* typ, char* in, char* con);
	Phaser(std::string typ, std::string  in, std::string con);
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

	Package finalize();

protected:
	Package package;
	std::string type, intent, content, hash;
};

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
};

struct XML_Node {

};

unsigned char* str_to_unc(std::string str);
std::string unc_to_str(unsigned char* unc);
char* unc_to_c(unsigned char* unc);
char* consc_to_c(const char* c);
std::string to_MD5(std::string str);
std::string to_MD5(char* c);
std::string to_MD5(unsigned char* unc);