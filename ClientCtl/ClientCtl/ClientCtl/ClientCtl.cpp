// ClientCtl.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"

#include <stdio.h>
#include "Windows.h"
#include "AliveKeeper.h"
#include <string>
#include <iostream>
#include <conio.h>
#include "ClientCtl.h"
#include "Service.h"
#include <direct.h>
#include <stdlib.h>

AliveKeeper* AKr = new AliveKeeper("MyTestService");
std::string command;
bool checkerNeed = true;
bool setterNeed = true;
char pathToFile[MAX_PATH];
char *arg0Char;
SERVICE_TABLE_ENTRY serviceT;

DWORD WINAPI serviceCheckerThread(LPVOID pM);
DWORD WINAPI serviceSetterThread(LPVOID pM);
HANDLE checkerHandle, setterHandle;


int main(int argc, char *argv[]) {
	AKr -> registerService();
	//setterHandle = CreateThread(NULL, 0, serviceCheckerThread, NULL, 0, NULL);
	//setterHandle = CreateThread(NULL, 0, serviceSetterThread, NULL, 0, NULL); 
	//_getch();
	//注册服务部分
	serviceT.lpServiceName = TEXT("testservice");
	serviceT.lpServiceProc = (LPSERVICE_MAIN_FUNCTION)serviceMain;
	initEntryTable(serviceT);

	std::string filename(argv[0]);

	_getcwd(pathToFile, MAX_PATH);
	std::cout << "路径:"<<pathToFile << std::endl
		<<"文件名1:"<<_FILENAME << "文件名2:" <<filename<<std::endl;

	command = (std::string)"sc create testservice binPath= \""+filename+"\""+" start= auto";
	const char *c = command.data();
	std::cout <<command<<std::endl<<c;
	_getch();
	system(c);
	_getch();

	return 0;
}



DWORD WINAPI serviceCheckerThread(LPVOID pM)
{
    while(setterNeed){
		std::cout<<"thread:"<<GetCurrentThreadId()<<",now checking service"<<std::endl;
		AKr->setterPid=GetCurrentThreadId();
		Sleep(2000);
	}
	return 0;
}

DWORD WINAPI serviceSetterThread(LPVOID pM){
	while(checkerNeed){
		std::cout<<"thread:"<<GetCurrentThreadId()<<",now checking service"<<std::endl;
		if( ! AKr->checkService()){
		std::cout<<"thread:"<<GetCurrentThreadId()<<",now setting service"<<std::endl;
		}
		AKr->checkerPid=GetCurrentThreadId();
		Sleep(2*1000);
	}
	return 0;
}

/*
int addToStartUP() {
	char system[MAX_PATH];
	char pathtofile[MAX_PATH];
	HMODULE GetModH = GetModuleHandle(NULL);
	//得到当前执行文件的全路径
	GetModuleFileName(GetModH, pathtofile, sizeof(pathtofile));
	//得到系统文件所在目录的路径，如c:\windows\system32
	GetSystemDirectory(system, sizeof(system));
	//形成要复制到的全路径，如c:\windows\system32\yourvirus.exe
	strcat(system, "\\yourvirus.exe");
	//自我复制到目标路径
	CopyFile(pathtofile, system, false);

	//写入注册表，以便开机自动运行
	HKEY hKey;
	RegOpenKeyEx(HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Windows\\CurrentVersion\\Run", 0, KEY_SET_VALUE, &hKey);
	RegSetValueEx(hKey, "Writing to the Registry Example", 0, REG_SZ, (const unsigned char*)system, sizeof(system));
	RegCloseKey(hKey);
	return 0;
}
*/