#include "stdafx.h"
#include "Phaser.h"


Phaser::Phaser()
	:package()
{

}


Phaser::~Phaser(){

}

bool Phaser::set_type(char * type){
	try {
		std::string raw_type(type);
		std::string beg("<type>"), end("</type>");
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
		std::string beg("<intent>"), end("</intent>");
		std::string fine_intent = beg + raw_intent + end;
		this->intent = fine_intent;
		return true;
	}
	catch (void* e) {
		return false;
	}
}

bool Phaser::set_content(char * content){
	try {
		std::string raw_content(content);
		std::string beg("<content>"), end("</content>");
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
		const char* buffer = raw_package.data();
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
		this->hash = std::string("<hash>") + unc_to_str(decrypt) + std::string("</hash>");//临时计算hash
		
		std::string beg("<package>"), end("</package>");
		std::string fine_package = beg + raw_package + end;
		std::cout << "Phaser: phased: " << std::endl << fine_package.data() << std::endl;

		std::cout << "Now generating package!" << std::endl;
		this->package.data = fine_package.data();
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