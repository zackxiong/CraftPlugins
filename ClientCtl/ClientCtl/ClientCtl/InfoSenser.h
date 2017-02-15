#pragma once
#pragma warning(disable: 4996)
#ifndef _AFXDLL
#define _AFXDLL
#endif
//#include <AFX.h>
#include <string>
#include <vector>
//#include "Service.h"
//#include <winsock.h>
#include <afxwin.h>
#include "GetSysInfo.h"


class InfoSenser
{
public:
	InfoSenser();
	~InfoSenser();

	bool printNetInfo();
	bool printHWInfo();
	bool printDriveInfo();
	bool printCPUInfo();
	bool printInterfaceInfo();
	//bool printfGraphicCardInfo();
	//bool printTotalVirtualMemInfo();
	bool printAll();

	GetSysInfo* gSI;
	
	SYSTEM_INFO sysInfo;//硬件信息
	CString chProcessorName, chProcessorType;//CPU信息
	DWORD dwProcessorNum, dwMaxClockSpeed;
	DWORD dwdriveNum;//硬盘信息
	CString *chDriveInfo;
	int  interfaceCount;//网卡信息
	//CString *InterfaceName;
	std::vector<CString> InterfaceNames;
	DWORD dwgraphicCardNum;//显卡信息
	CString *chgraphicCardNames;

	OSVERSIONINFOEX osvi;//系统信息
	//CString strOSVersion, strServiceVersion;//操作系统架构
	bool isWow64;

	MEMORYSTATUSEX statex; //物理内存信息(实时更新)
	//CString dwTotalVirtual;//虚拟内存
	//CString dwTotalPhy_d;
	bool sysSuccess;

	char hostName[256];
	bool netSuccess;

protected:
	struct hostent *host; //网络信息，h_addr_list需要转换成本地字序
	WSADATA WSAData; //初始化套接字临时使用
};

