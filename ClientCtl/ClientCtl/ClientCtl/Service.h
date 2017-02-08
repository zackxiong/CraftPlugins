#pragma once
#include "stdafx.h"

#include <Windows.h>

extern SERVICE_TABLE_ENTRY entryTable[2];
extern SERVICE_STATUS ServiceStatus;
extern SERVICE_STATUS_HANDLE hStatus;
extern bool needRun;

void initEntryTable(SERVICE_TABLE_ENTRY &templateEnteyTable);
void WINAPI ctrlHandler(DWORD request);
void WINAPI serviceMain(int argc, char**argv);
