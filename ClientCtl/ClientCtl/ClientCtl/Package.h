#pragma once
#include<iostream>
class Package
{
public:
	char* type, *intent, *content, *hash;
	bool is_done;
	const char* c_data;
	std::string str_data;

	Package();
	~Package();
};

