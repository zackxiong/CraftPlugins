// ClientCtl.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <stdio.h>
#include "Windows.h"
#include "AliveKeeper.h"
#include <iostream>
#include <conio.h>
#include "ClientCtl.h"

AliveKeeper* AKr = new AliveKeeper("MyTestService");

int _tmain(int argc, _TCHAR* argv[])
{
	AKr -> registerService();
	//setterHandle = CreateThread(NULL, 0, serviceCheckerThread, NULL, 0, NULL);
	setterHandle = CreateThread(NULL, 0, serviceSetterThread, NULL, 0, NULL); 
	getch();
	return 0;
}

DWORD WINAPI serviceCheckerThread(LPVOID pM)
{
    while(setterNeed){
		std::cout<<"thread:"<<GetCurrentThreadId()<<",now checking service"<<std::endl;
		AKr->setterPid=GetCurrentThreadId();
		_sleep(2000);
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
		_sleep(2*1000);
	}
	return 0;
}
