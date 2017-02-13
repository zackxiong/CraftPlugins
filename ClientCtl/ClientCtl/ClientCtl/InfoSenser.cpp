#include "stdafx.h"
#include "InfoSenser.h"
#include "Service.h"
#include "InfoSenser.h"
#include <string>
#include <iostream>
#include <Windows.h>

#pragma comment(lib,"ws2_32.lib") 

InfoSenser::InfoSenser() {
	this->InterfaceNames.clear();
	//获取系统信息
	GetSystemInfo(&sysInfo);
	osvi.dwOSVersionInfoSize = sizeof(osvi);
	this->sysSuccess = true;
	if (!GetVersionEx((LPOSVERSIONINFOW)&osvi)) {
		sysSuccess = false; 
		std::cout << "Error init os info" << std::endl;
		throw "Error init os info";
	}
	//获取内存信息
	statex.dwLength = sizeof(statex);
	if ((!sysSuccess) | (!GlobalMemoryStatusEx(&statex))){
		sysSuccess = false;
		std::cout << "Error init memory info" << std::endl;
		throw "Error init memory info";
	}

	//获取网络信息
	this->netSuccess = true;
	if (WSAStartup(MAKEWORD(2, 0), &WSAData)){// 初始化Windows sockets API
		std::cout<<"WSAStartup failed "<<WSAGetLastError()<<std::endl;
		netSuccess = false;
		throw "WSAStartup failed";
	}

	if ((!netSuccess) | gethostname(hostName, sizeof(hostName))){		//获取主机名
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
}

InfoSenser::~InfoSenser(){
	WSACleanup();
}

void InfoSenser::printNetInfo(){
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
	}
	else 	std::cout << "获取网络信息失败";
}

void InfoSenser::printHWInfo(){
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
	}
	else 	std::cout << "获取硬件信息失败";

}
