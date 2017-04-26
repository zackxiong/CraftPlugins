#pragma once
class Package
{
public:
	char* type, intent, content, hash;
	bool is_done;
	const char* data;

	Package();
	~Package();
};

