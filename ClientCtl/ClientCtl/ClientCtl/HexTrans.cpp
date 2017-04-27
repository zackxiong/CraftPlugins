#include "stdafx.h"
#include "HexTrans.h"

int hexChar_To_Int(char c)
{
	if (c >= '0' && c <= '9') return (c - '0');
	if (c >= 'A' && c <= 'F') return (c - 'A' + 10);
	if (c >= 'a' && c <= 'f') return (c - 'a' + 10);
	return 0;
}

char* hexstring_To_Bytes(std::string s)
{
	int sz = s.length();
	char *ret = new char[sz / 2];
	for (int i = 0; i <sz; i += 2) {
		ret[i / 2] = (char)((hexChar_To_Int(s.at(i)) << 4)
			| hexChar_To_Int(s.at(i + 1)));
	}
	return ret;
}

std::string bytes_to_hexstring(char* bytes, int bytelength)
{
	std::string str("");
	std::string str2("0123456789abcdef");
	for (int i = 0; i<bytelength; i++) {
		int b;
		b = 0x0f & (bytes[i] >> 4);
		char s1 = str2.at(b);
		str.append(1, str2.at(b));
		b = 0x0f & bytes[i];
		str.append(1, str2.at(b));
		char s2 = str2.at(b);
	}
	return str;
}
