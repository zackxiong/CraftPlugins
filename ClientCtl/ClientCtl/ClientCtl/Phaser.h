#pragma once
#include "Package.h"
#include <iostream>
#include "md5.h"

class Phaser
{
public:
	Phaser();
	~Phaser();

	Package package;
	std::string type, intent, content, hash;

	bool set_type(char *type);
	bool set_intent(char *intent);
	bool set_content(char *content);
	Package finalize();

};

unsigned char* str_to_unc(std::string str);
std::string unc_to_str(unsigned char* unc);