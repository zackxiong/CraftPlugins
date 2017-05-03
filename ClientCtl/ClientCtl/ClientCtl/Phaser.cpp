#include "stdafx.h"
#include "Phaser.h"


Phaser::Phaser()
	:package()
{

}

Phaser::Phaser(char * typ, char * in, char * con){
	this->set_type(typ);
	this->set_intent(in);
	this->set_content(con);
}

Phaser::Phaser(std::string typ, std::string in, std::string con){
	this->set_type(typ);
	this->set_intent(in);
	this->set_content(con);
}

Phaser::~Phaser(){

}

bool Phaser::set_type(char * type){
	try {
		std::string raw_type(type);
		std::string beg("<TYPE>"), end("</TYPE>");
		std::string fine_type = beg + raw_type + end;
		this->type = fine_type;
		return true;
	}
	catch (void* e) {
		return false;
	}
}

bool Phaser::set_type(const char * type) {
	try {
		std::string raw_type(type);
		std::string beg("<TYPE>"), end("</TYPE>");
		std::string fine_type = beg + raw_type + end;
		this->type = fine_type;
		return true;
	}
	catch (void* e) {
		return false;
	}
}

bool Phaser::set_type(std::string type) {
	try {
		std::string raw_type(type);
		std::string beg("<TYPE>"), end("</TYPE>");
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
		std::string beg("<INTENT>"), end("</INTENT>");
		std::string fine_intent = beg + raw_intent + end;
		this->intent = fine_intent;
		return true;
	}
	catch (void* e) {
		return false;
	}
}

bool Phaser::set_intent(const char * intent) {
	try {
		std::string raw_intent(intent);
		std::string beg("<INTENT>"), end("</INTENT>");
		std::string fine_intent = beg + raw_intent + end;
		this->intent = fine_intent;
		return true;
	}
	catch (void* e) {
		return false;
	}
}

bool Phaser::set_intent(std::string intent) {
	try {
		std::string raw_intent(intent);
		std::string beg("<INTENT>"), end("</INTENT>");
		std::string fine_intent = beg + raw_intent + end;
		this->intent = fine_intent;
		return true;
	}
	catch (void* e) {
		return false;
	}
}

bool Phaser::set_content(char * content) {
	try {
		std::string raw_content(content);
		std::string beg("<CONTENT>"), end("</CONTENT>");
		std::string fine_content = beg + raw_content + end;
		this->content = fine_content;
		return true;
	}
	catch (void* e) {
		return false;
	}
}

bool Phaser::set_content(const char * content) {
	try {
		std::string raw_content(content);
		std::string beg("<CONTENT>"), end("</CONTENT>");
		std::string fine_content = beg + raw_content + end;
		this->content = fine_content;
		return true;
	}
	catch (void* e) {
		return false;
	}
}

bool Phaser::set_content(std::string content) {
	try {
		std::string raw_content(content);
		std::string beg("<CONTENT>"), end("</CONTENT>");
		std::string fine_content = beg + raw_content + end;
		this->content = fine_content;
		return true;
	}
	catch (void* e) {
		return false;
	}
}
Package Phaser::finalize(){
	try {
		std::string raw_package = intent + content;//合并头和内容，开始计算md5

		int i;
		//const char* buffer = raw_package.data();
		unsigned char *encrypt = str_to_unc(raw_package);
		unsigned char decrypt[16];
		MD5_CTX md5;
		MD5Init(&md5);
		MD5Update(&md5, encrypt, strlen((char *)encrypt));
		MD5Final(&md5, decrypt);
		printf("加密前:%s\n加密后:", encrypt);
		for (i = 0; i<16; i++){
			printf("%02x", decrypt[i]);
		}
		for (i = 0; i<16; i++) {
			printf("%02x", encrypt[i]);
		}

		this->hash = std::string("<HASH>") + bytes_to_hexstring(unc_to_c(decrypt),12) + std::string("</HASH>");//临时计算hash
		raw_package = raw_package + hash;
		
		//std::string beg("<?xml version="1.0" encoding="ISO - 8859 - 1"?> <package>"), end("</package>\n");//整个end可以用于判断
		std::string beg("<?xml version=\"1.0\" ?> <PACKAGE>"), end("</PACKAGE>\n");//整个end可以用于判断
		std::string fine_package = beg + raw_package + end;
		std::cout << "Phaser: phased: " << std::endl << fine_package.data() << std::endl;

		std::cout << "Now generating package!" << std::endl;
		this->package.c_data = fine_package.data();
		this->package.str_data = fine_package;
		this->package.is_done = true;
	}
	catch (void* e) {
		return Package();
	}
	return this->package;
}

unsigned char* str_to_unc(std::string str) {
	const char* consc = str.data();
	const unsigned char *cunc = reinterpret_cast<const unsigned char*>(consc);
	unsigned char *unc = const_cast<unsigned char*>(cunc);
	return unc;
}

std::string unc_to_str(unsigned char* unc) {
	char* ch = reinterpret_cast<char*>(unc);
	return std::string(ch);
}

char* unc_to_c(unsigned char* unc) {
	return reinterpret_cast<char*>(unc);
}

std::string to_MD5(unsigned char* unc) {
	int i;
	unsigned char *encrypt = unc;
	unsigned char decrypt[16];
	MD5_CTX md5;
	MD5Init(&md5);
	MD5Update(&md5, encrypt, strlen((char *)encrypt));
	MD5Final(&md5, decrypt);
	printf("加密前:%s\n加密后:", encrypt);
	for (i = 0; i<16; i++) {
		printf("%02x", decrypt[i]);
	}
	for (i = 0; i<16; i++) {
		printf("%02x", encrypt[i]);
	}
	//return bytes_to_hexstring(unc_to_c(encrypt),strlen(unc_to_c(encrypt)));
	return bytes_to_hexstring(unc_to_c(decrypt), 12);
}

std::string to_MD5(char* c) {
	int i;
	unsigned char *encrypt = str_to_unc(std::string(c));
	unsigned char decrypt[16];
	MD5_CTX md5;
	MD5Init(&md5);
	MD5Update(&md5, encrypt, strlen((char *)encrypt));
	MD5Final(&md5, decrypt);
	printf("加密前:%s\n加密后:", encrypt);
	for (i = 0; i<16; i++) {
		printf("%02x", decrypt[i]);
	}
	for (i = 0; i<16; i++) {
		printf("%02x", encrypt[i]);
	}
	//return bytes_to_hexstring(unc_to_c(encrypt), strlen(unc_to_c(encrypt)));
	return bytes_to_hexstring(unc_to_c(decrypt), 12);
}

std::string to_MD5(std::string str) {
	unsigned char *unc = str_to_unc(str);
	int i;
	unsigned char *encrypt = unc;
	unsigned char decrypt[16];
	MD5_CTX md5;
	MD5Init(&md5);
	MD5Update(&md5, encrypt, strlen((char *)encrypt));
	MD5Final(&md5, decrypt);
	printf("加密前:%s\n加密后:", encrypt);
	for (i = 0; i<16; i++) {
		printf("%02x", decrypt[i]);
	}
	for (i = 0; i<16; i++) {
		printf("%02x", encrypt[i]);
	}
	//return bytes_to_hexstring(unc_to_c(encrypt), strlen(unc_to_c(encrypt)));
	return bytes_to_hexstring(unc_to_c(decrypt), 12);
}

char* consc_to_c(const char* c) {
	//char *cp = new char[strlen(c)];
	//memcpy(cp, c, strlen(c)+1);
	char* cp = (char*)(c);
	return cp;
}