// keepAlive.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"

#include <cstdio>
#include <Windows.h>
#include <string>

int main(int argc, char *argv[]){
	std::string path = argv[1];
	std::string command = "sc start " + path;
	const char *c = command.data();
	while (true) {
		system(c);
		Sleep(2 * 1000);
	}
    //return 0;
}

