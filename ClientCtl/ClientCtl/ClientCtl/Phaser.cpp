#include "stdafx.h"
#include "Phaser.h"

XML_format::XML_format(char * version, char * encoding, char * stand_alone)
{
	this->version = version;
	this->encoding = encoding;
	this->stand_alone = stand_alone;
}

XML_format::~XML_format()
{
}

/*Phaser::Phaser(){
	new(this) Phaser(nullptr, nullptr, nullptr);
}
Phaser::Phaser(XML_format = XML_format(), char * typ, char * in, char * con)
{
}
*/
Phaser::Phaser(const char * typ, const char * in, const char * con, XML_format format)
	:package(),
	xml_buffer(),
	printer(),
	format()
{
	this->format = format;
	xml_buffer.NewDeclaration();
	this->n_Root = this->xml_buffer.NewElement(this->default_root_node_name);//package生成节点
	this->e_Type = this->xml_buffer.NewElement(typeDic.default_node_name.data());//type
	this->e_Intent = this->xml_buffer.NewElement(intentDic.default_node_name.data());//intent
	this->e_Content = this->xml_buffer.NewElement(contentDic.default_node_name.data());//content
	this->e_Hash = this->xml_buffer.NewElement(this->default_hash_node_name);//hash
	this->n_Root->InsertEndChild(this->e_Type);//插入节点
	this->n_Root->InsertEndChild(this->e_Intent);
	this->n_Root->InsertEndChild(this->e_Content);
	this->n_Root->InsertEndChild(this->e_Hash);
	xml_buffer.InsertFirstChild(n_Root);
	if (typ != nullptr) this->set_type(typ);//输入参数（if any）
	if (typ != nullptr) this->set_intent(in);
	if (typ != nullptr) this->set_content(con);
}
/*
Phaser::Phaser(std::string typ, std::string in, std::string con){
	new(this) Phaser(type.data(), in.data(), con.data());
}*/

Phaser::~Phaser(){

}

bool Phaser::set_type(char * type){
	const char* c_type = type;
	return this->set_type(c_type);
}

bool Phaser::set_type(std::string type) {
	const char* c_type = type.data();
	return this->set_type(c_type);
}

bool Phaser::set_type(const char * type) {
	try {
		/*std::string raw_type(type);
		std::string beg("<TYPE>"), end("</TYPE>");
		std::string fine_type = beg + raw_type + end;
		this->type = fine_type;
		this->package.type = consc_to_c(this->type.data());*/
		this->e_Type->SetText(type);
		this->type = type;
		this->package.type = const_cast <char*>(type);
		return true;
	}
	catch (void* e) {
		return false;
	}
}

bool Phaser::set_intent(char * intent){
	const char* c_intent = intent;
	return this->set_intent(c_intent);
}

bool Phaser::set_intent(std::string intent) {
	const char* c_intent = intent.data();
	return this->set_intent(c_intent);
}

bool Phaser::set_intent(const char * intent) {
	try {/*
		std::string raw_intent(intent);
		std::string beg("<INTENT>"), end("</INTENT>");
		std::string fine_intent = beg + raw_intent + end;
		this->intent = fine_intent;
		this->package.intent = consc_to_c(this->intent.data());*/
		this->e_Intent->SetText(intent);
		this->intent = intent;
		this->package.intent = const_cast <char*>(intent);
		return true;
	}
	catch (void* e) {
		return false;
	}
}

bool Phaser::set_content(char * content) {
	const char* c_content = content;
	return this->set_content(c_content);
}

bool Phaser::set_content(std::string content) {
	const char* c_content = content.data();
	return this->set_content(c_content);
}

bool Phaser::set_content(const char * content) {
	try {/*
		std::string raw_content(content);
		std::string beg("<CONTENT>"), end("</CONTENT>");
		std::string fine_content = beg + raw_content + end;
		this->content = fine_content;
		this->package.content = consc_to_c(this->content.data());*/
		this->e_Content->SetText(content);
		this->content = content;
		this->package.content = const_cast <char*>(content);
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
		/*printf("加密前:%s\n加密后:", encrypt);
		for (i = 0; i<16; i++){
			printf("%02x", decrypt[i]);
		}
		for (i = 0; i<16; i++) {
			printf("%02x", encrypt[i]);
		}*/

		this->hash = bytes_to_hexstring(unc_to_c(decrypt),12);//临时计算hash
		//raw_package = raw_package + hash;
		this->package.hash = consc_to_c(this->hash.data());
		this->e_Hash->SetText(this->hash.data());
		//std::string beg("<?xml version="1.0" encoding="ISO - 8859 - 1"?> <package>"), end("</package>\n");//整个end可以用于判断
		//std::string beg("<?xml version=\"1.0\" ?> <PACKAGE>"), end("</PACKAGE>\n");//整个end可以用于判断
		//std::string fine_package = beg + raw_package + end;
		//std::cout << "Phaser: phased: " << std::endl << fine_package.data() << std::endl;

		//std::cout << "Now generating package!" << std::endl;
		this->xml_buffer.Print(&printer);
		this->package.c_data = this->printer.CStr();
		this->package.str_data = std::string(this->printer.CStr());
		this->package.is_done = true;
	}
	catch (void* e) {
		return Package();
	}
	return this->package;
}

const char* Phaser::get_current_data()
{
	return this->printer.CStr();
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
	/*printf("加密前:%s\n加密后:", encrypt);
	for (i = 0; i<16; i++) {
		printf("%02x", decrypt[i]);
	}
	for (i = 0; i<16; i++) {
		printf("%02x", encrypt[i]);
	}*/
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
	/*printf("加密前:%s\n加密后:", encrypt);
	for (i = 0; i<16; i++) {
		printf("%02x", decrypt[i]);
	}
	for (i = 0; i<16; i++) {
		printf("%02x", encrypt[i]);
	}*/
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
	/*printf("加密前:%s\n加密后:", encrypt);
	for (i = 0; i<16; i++) {
		printf("%02x", decrypt[i]);
	}
	for (i = 0; i<16; i++) {
		printf("%02x", encrypt[i]);
	}*/
	//return bytes_to_hexstring(unc_to_c(encrypt), strlen(unc_to_c(encrypt)));
	return bytes_to_hexstring(unc_to_c(decrypt), 12);
}

char* consc_to_c(const char* c) {
	//char *cp = new char[strlen(c)];
	//memcpy(cp, c, strlen(c)+1);
	char* cp = (char*)(c);
	return cp;
}

bool xml_CheckResult(tinyxml2::XMLError result)
{
	if (result != tinyxml2::XML_SUCCESS)
		return true;
	else {
		printf("Error: %i\n", result);
		return false;
	}
}