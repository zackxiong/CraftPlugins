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

	//获取内存信息
	statex.dwLength = sizeof(statex);
	if ((!sysSuccess) | (!GlobalMemoryStatusEx(&statex))){
		sysSuccess = false;
		std::cout << "Error init memory info" << std::endl;
		throw "Error init memory info";
	}
	this->gSI->GetMemoryInfo(this->dwTotalPhy_d, this->dwTotalVirtual);

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

	/*
	//获取显卡信息
	this->gSI->GetDisplayCardInfo(this->dwgraphicCardNum, this->chgraphicCardNames);
	*/
}

InfoSenser::~InfoSenser(){
	WSACleanup();
}

bool InfoSenser::printNetInfo(){
	GlobalMemoryStatusEx(&statex);
	if (netSuccess) {
		printf("主机名：             %s\n", hostName);
		std::cout << "主机地址类型:        " << host->h_addrtype << std::endl
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

		std::cout << "剩余内存:             " << statex.dwMemoryLoad <<
			"% (" << (float)((float)statex.ullAvailPhys / (float)1024/ (float)1024) << "MB/"
			<< (float)((float)statex.ullTotalPhys / (float)1024 / (float)1024) << "MB)" << std::endl;
		return true;
	}
	else 	std::cout << "获取硬件信息失败";
	return false;
}

bool InfoSenser::printDriveInfo(){
	if (true) {
		int count = this->dwdriveNum;
		while (count-- > 0) {
			std::cout << "磁盘" << count<< ": "<< this->chDriveInfo[count - 1] <<std::endl;
		}
		std::cout << "磁盘信息完成";
		_getch();
		return true;
	}
	else
		std::cout << "获取磁盘信息失败";
	return false;
}
