#include "stdafx.h"

#include "Service.h"
#include "ClientCtl.h"
#include "Communicater.h"
#include <iostream>
#include <conio.h>
#include <Windows.h>


SERVICE_TABLE_ENTRY entryTable[2];
SERVICE_STATUS ServiceStatus;
SERVICE_STATUS_HANDLE hStatus;
extern bool needRun = true;

void initEntryTable(SERVICE_TABLE_ENTRY &templateEnteyTable){
	entryTable[0].lpServiceName = templateEnteyTable.lpServiceName;
	entryTable[0].lpServiceProc = templateEnteyTable.lpServiceProc;
	entryTable[1].lpServiceName = NULL;
	entryTable[1].lpServiceProc = NULL;
	StartServiceCtrlDispatcher(entryTable);
}

void WINAPI ctrlHandler(DWORD request) {
	if (request == SERVICE_ACCEPT_SHUTDOWN) {
		ServiceStatus.dwCurrentState = SERVICE_STOP_PENDING;
		SetServiceStatus(hStatus, &ServiceStatus);
		needRun = false;
	}
#ifndef STICKY_MODE
	if (request == SERVICE_ACCEPT_STOP) {
		ServiceStatus.dwCurrentState = SERVICE_STOP_PENDING;
		SetServiceStatus(hStatus, &ServiceStatus);
		needRun = false;
	}
#endif // !STICKY_MODE

}

void WINAPI serviceMain(int argc, char ** argv){
	ServiceStatus.dwServiceType = SERVICE_WIN32;
	ServiceStatus.dwCurrentState = SERVICE_START_PENDING;
	ServiceStatus.dwControlsAccepted = SERVICE_ACCEPT_SHUTDOWN | SERVICE_ACCEPT_STOP;
#ifdef STICKY_MODE
	ServiceStatus.dwControlsAccepted = SERVICE_ACCEPT_SHUTDOWN;
#endif // STICKY_MODE

	ServiceStatus.dwWin32ExitCode = 0;
	ServiceStatus.dwServiceSpecificExitCode = 0;
	ServiceStatus.dwCheckPoint = 0;
	ServiceStatus.dwWaitHint = 0;
	hStatus = ::RegisterServiceCtrlHandlerW(TEXT("testservice"), ctrlHandler);

	if (hStatus == 0) {
		return;
	}
	
	ServiceStatus.dwCurrentState = SERVICE_RUNNING;
	SetServiceStatus(hStatus, &ServiceStatus);

	while(needRun){
		Sleep(5 * 1000);
		printf("Running!");
		logger->log("Running!");
	}
	delete infosenser;
	delete logger;
	delete AKr;
	delete cmtr;

	ServiceStatus.dwCurrentState = SERVICE_STOPPED;
	SetServiceStatus(hStatus, &ServiceStatus);
}