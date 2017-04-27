#include "stdafx.h"
#include "InfoSenser.h"
#include "Service.h"
#include <string>
#include <iostream>
#include <afxwin.h>
#include <vector>

#pragma comment(lib,"ws2_32.lib") 

InfoSenser::InfoSenser(){
	this->InterfaceNames.clear();
	CString test[3000];
	this->chDriveInfo = test;
	//this->chDriveInfo = new CString[300];
	this->gSI = new GetSysInfo();

	//获取系统信息
	GetSystemInfo(&sysInfo);
	osvi.dwOSVersionInfoSize = sizeof(osvi);
	this->sysSuccess = true;
	if (!GetVersionEx((LPOSVERSIONINFOW)&osvi)) {
		sysSuccess = false; 
		std::cout << "Error init os info" << std::endl;
		throw "Error init os info";
	}
	this->isWow64 = this->gSI->IsWow64();

	//获取CPU信息
	this->gSI->GetCpuInfo(this->chProcessorName, this->chProcessorType, this->dwProcessorNum, this->dwMaxClockSpeed);

	//获取硬盘信息
	this->gSI->GetDiskInfo(this->dwdriveNum, this->chDriveInfo);
	GetVolumeInformation((LPCWSTR)"c:\\",
		(LPWSTR)m_Volume,
		256,
		&m_SerialNum,
		&m_FileNameLength,
		&m_FileSysFlag,
		(LPWSTR)m_FileSysName,
		256);

	//获取内存信息
	statex.dwLength = sizeof(statex);
	if ((!sysSuccess) | (!GlobalMemoryStatusEx(&statex))){
		sysSuccess = false;
		std::cout << "Error init memory info" << std::endl;
		throw "Error init memory info";
	}
	//this->gSI->GetMemoryInfo(this->dwTotalPhy_d, this->dwTotalVirtual);

	//获取网络信息
	this->netSuccess = true;
	if (WSAStartup(MAKEWORD(2, 0), &WSAData)){// 初始化Windows sockets API
		std::cout<<"WSAStartup failed "<<WSAGetLastError()<<std::endl;
		netSuccess = false;
		throw "WSAStartup failed";
	}

	//获取主机名
	if ((!netSuccess) | gethostname(hostName, sizeof(hostName))){
		std::cout<<"Error: "<<WSAGetLastError()<<std::endl;
		netSuccess = false;
		throw "Error: " + WSAGetLastError();
	}

	host = gethostbyname(hostName);
	if (!host) {
		netSuccess = false;
		std::cout << "Error: " << WSAGetLastError() << std::endl;
		throw "Error: " + WSAGetLastError();
	}

	//获取网卡信息
	this->interfaceCount = this->gSI->GetInterFaceCount();
	int count = this->interfaceCount;
	CString interfaceName;
	std::vector<CString>::iterator it = this->InterfaceNames.begin();
	while (count-- > 0) {
		this->gSI->GetInterFaceName(interfaceName, count);
		if (interfaceName)
			this->InterfaceNames.push_back(interfaceName);
		else
			std::cout << "Null name of Interface error!" << std::endl;
	}
	this->GetMac();
	/*
	//获取显卡信息
	this->gSI->GetDisplayCardInfo(this->dwgraphicCardNum, this->chgraphicCardNames);
	*/
}

/**

return string containing first MAC address on computer

requires adding Iphlpapi.lib to project

*/
std::string InfoSenser::GetMac()
{
	char data[4096];
	ZeroMemory(data, 4096);
	unsigned long  len = 4000;
	PIP_ADAPTER_INFO pinfo = (PIP_ADAPTER_INFO)data;
	char sbuf[20];
	std::string sret;

	DWORD ret = GetAdaptersInfo(pinfo, &len);
	if (ret != ERROR_SUCCESS)
		return std::string("**ERROR**");

	for (int k = 0; k < 5; k++) {
		sprintf(sbuf, "%02X-", pinfo->Address[k]);
		sret += sbuf;
	}
	sprintf(sbuf, "%02X", pinfo->Address[5]);
	sret += sbuf;

	return(sret);
}


InfoSenser::~InfoSenser(){
	WSACleanup();
	delete this->gSI;
}

bool InfoSenser::printNetInfo(){
	GlobalMemoryStatusEx(&statex);
	if (netSuccess) {
		printf("主机名：             %s\n", hostName);
		std::wcout << "主机地址类型:        " << host->h_addrtype << std::endl
			<< "地址清单:        " << host->h_addr_list << std::endl
			<< "别名列表:        " << host->h_aliases << std::endl
			<< "地址长度:        " << host->h_length << std::endl
			<< "正式的主机名:        " << host->h_name << std::endl;
		for (int i = 0; host->h_addr_list[i] != 0; i++) {
			std::cout << "该主机IP" << i + 1 << ":        " << inet_ntoa(*(struct in_addr*)*host->h_addr_list) << std::endl;
		}
		return true;
	}
	else 	std::cout << "获取网络信息失败";
	return false;
}

bool InfoSenser::printHWInfo(){
	if (sysSuccess) {
		printf("操作系统版本 :      %u.%u.%u\n", osvi.dwMajorVersion, osvi.dwMinorVersion, osvi.dwBuildNumber);
		printf("Service Pack :      %u.%u\n", osvi.wServicePackMajor, osvi.wServicePackMinor);
		printf("处理器架构 :        %u\n", sysInfo.wProcessorArchitecture);
		printf("处理器级别 :        %u\n", sysInfo.wProcessorLevel);
		printf("处理器版本 :        %u\n", sysInfo.wProcessorRevision);
		printf("处理器掩码 :        %u\n", sysInfo.dwActiveProcessorMask);
		printf("处理器数量 :        %u\n", sysInfo.dwNumberOfProcessors);
		printf("处理器类型 :        %u\n", sysInfo.dwProcessorType);
		printf("页面大小 :          %u\n", sysInfo.dwPageSize);
		printf("应用程序最小地址 :  %u\n", sysInfo.lpMinimumApplicationAddress);
		printf("应用程序最大地址 :  %u\n", sysInfo.lpMaximumApplicationAddress);
		printf("虚拟内存分配粒度 :  %u\n", sysInfo.dwAllocationGranularity);
		printf("OemId :             %u\n", sysInfo.dwOemId);
		printf("wReserved :         %u\n", sysInfo.wReserved);

		std::cout << "虚拟内存:             " << ((float)statex.ullAvailVirtual / (float)statex.ullTotalVirtual) <<
			"% (" << (float)((statex.ullTotalVirtual - statex.ullAvailVirtual) / (float)1024 / (float)1024) << "MB/"
			<< (float)((float)statex.ullTotalVirtual / (float)1024 / (float)1024) << "MB)" 
			<< "[" << (float)((float)statex.ullAvailExtendedVirtual / (float)1024 / (float)1024) << "MB添加]" << std::endl;

		std::cout << "物理内存:             " << statex.dwMemoryLoad <<
			"% (" << (float)((float)statex.ullAvailPhys / (float)1024/ (float)1024) << "MB/"
			<< (float)((float)statex.ullTotalPhys / (float)1024 / (float)1024) << "MB)" << std::endl;
		return true;
	}
	else 	std::cout << "获取硬件信息失败";
	return false;
}

bool InfoSenser::printDriveInfo(){
	std::wcout << "卷标名字：" << m_Volume[256] << std::endl;//卷标名 
	std::wcout << "文件系统：" << m_FileSysName[256] << std::endl;
	std::wcout << "硬盘序列号：" << m_SerialNum << std::endl;//序列号 
	std::wcout << "文件最长：" << m_FileNameLength << std::endl;
	std::wcout << "FileSysFlag：" << m_FileSysFlag << std::endl;

	if (true && this->dwdriveNum > 0) {
		int count = this->dwdriveNum;
		while (count-- > 0) {
			std::cout << "磁盘" << count<< "          :"<< this->chDriveInfo[count - 1] <<std::endl;
		}
		std::cout << "磁盘信息完成";
		_getch();
		return true;
	}
	else
		std::cout << "获取磁盘信息失败或没有磁盘"<< std::endl;
	return false;
}

bool InfoSenser::printCPUInfo(){
	if (true && this->dwProcessorNum > 0) {
		std::wcout << "CPU型号:          " << this->chProcessorName.GetBuffer() << std::endl;
		std::wcout << "CPU种类:          " << this->chProcessorType.GetBuffer() << std::endl;
		std::wcout << "CPU核心数量:      " << this->dwProcessorNum << std::endl;
		std::wcout << "CPU频率:          " << this->dwMaxClockSpeed << std::endl;
		return true;
	}
	else
		std::cout << "获取CPU信息失败或没有CPU" << std::endl;
	return false;
}

bool InfoSenser::printInterfaceInfo(){
	if (true && this->interfaceCount > 0) {
		int count = 1;
		for (std::vector<CString>::iterator it = this->InterfaceNames.begin();
		  it != this->InterfaceNames.end();
		  it++) {
			CString name = *it;
			std::wcout << "网卡" << count++ << "的型号:          " << name.GetBuffer() << std::endl;
		}
		return true;
	}
	else
		std::cout << "获取网卡信息失败或没有网卡" << std::endl;
	return false;
}
bool InfoSenser::printAll(){
	this->printHWInfo();
	this->printNetInfo();
	this->printDriveInfo();
	this->printCPUInfo();
	this->printInterfaceInfo();
	return true;
}
/*
bool InfoSenser::printTotalVirtualMemInfo(){
	if (true && this->dwTotalVirtual) {
		std::wcout << "虚拟内存大小:          " << this->dwTotalVirtual.GetBuffer() << std::endl;
		_getch();
	}
	else
		std::cout << "获取虚拟信息失败或没有配置虚拟内存" << std::endl;
	return false;
}
*/
/*
bool InfoSenser::printfGraphicCardInfo()
{
	return false;
}
*/