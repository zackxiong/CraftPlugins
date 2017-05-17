#pragma once
#pragma warning(disable: 4996)
#ifndef _AFXDLL
#define _AFXDLL
#endif
#define INFOSENSER
//#include <AFX.h>
#include <string>
#include <vector>
//#include "Service.h"
//#include <winsock.h>
#include <afxwin.h>
#include "GetSysInfo.h"
#include <sstream>


class InfoSenser
{
public:
	InfoSenser();
	~InfoSenser();

	std::string GetMac();
	bool refresh();
	bool printNetInfo();
	bool printHWInfo();
	bool printDriveInfo();
	bool printCPUInfo();
	bool printInterfaceInfo();
	//bool printfGraphicCardInfo();
	//bool printTotalVirtualMemInfo();
	bool printAll();

	std::string getNetInfo();
	std::string getHWInfo();
	std::string getDriveInfo();
	std::string getCPUInfo();
	std::string getInterfaceInfo();
	std::vector<float> get_MEM_State();//返回状态，共2个,total/avail,in mb
	//std::string getfGraphicCardInfo();
	//std::string getTotalVirtualMemInfo();
	std::string getAll();

	GetSysInfo* gSI;
	
	SYSTEM_INFO sysInfo;//硬件信息
	CString chProcessorName, chProcessorType;//CPU信息
	DWORD dwProcessorNum, dwMaxClockSpeed;
	DWORD dwdriveNum;//硬盘信息
	CString *chDriveInfo;
	char m_Volume[256];//卷标名 
	char m_FileSysName[256];
	DWORD m_SerialNum;//序列号 
	DWORD m_FileNameLength;
	DWORD m_FileSysFlag;
	int  interfaceCount;//网卡信息
	//CString *InterfaceName;
	std::vector<CString> InterfaceNames;
	std::string macAdd1;
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

extern InfoSenser *infosenser;
