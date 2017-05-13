#pragma once
#include<iostream>
class Package
{
public:
	char* type, *intent, *content, *hash;
	bool is_done = false;
	const char* c_data;
	std::string str_data;
	explicit operator bool() const {
		return this->is_done;
	}

	Package();
	~Package();
};

