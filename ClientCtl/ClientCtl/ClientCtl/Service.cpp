#include "stdafx.h"

#include "Service.h"
#include <Windows.h>
#include <iostream>
#include <conio.h>

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

}

void WINAPI serviceMain(int argc, char ** argv){
	ServiceStatus.dwServiceType = SERVICE_WIN32;
	ServiceStatus.dwCurrentState = SERVICE_START_PENDING;
	ServiceStatus.dwControlsAccepted = SERVICE_ACCEPT_SHUTDOWN | SERVICE_ACCEPT_STOP;
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
		printf("Running!");
	}
}