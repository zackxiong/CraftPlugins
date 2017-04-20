#pragma once
class Package
{
public:
	char* type, intent, content, hash;
	bool is_done;
	char* data;

	Package();
	~Package();
};

