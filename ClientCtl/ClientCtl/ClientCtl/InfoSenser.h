#pragma once
#pragma warning(disable: 4996)
#include "Service.h"
#include <string>
#include <Windows.h>
#include <winsock.h>
#include <vector>

class InfoSenser
{
public:
	InfoSenser();
	~InfoSenser();

	void printNetInfo();
	void printHWInfo();
	
	SYSTEM_INFO sysInfo;//硬件信息
	int  GetInterfaceCount;//网卡数量
	CString *InterfaceName;
	std::vector<CString> InterfaceNames;

	OSVERSIONINFOEX osvi;//系统信息
	CString strOSVersion, strServiceVersion;
	bool isWow64;
	MEMORYSTATUSEX statex; //内存信息(实时更新)
	bool sysSuccess;

	char hostName[256];
	bool netSuccess;

protected:
	struct hostent *host; //网络信息，h_addr_list需要转换成本地字序
	WSADATA WSAData; //初始化套接字零时使用
};

