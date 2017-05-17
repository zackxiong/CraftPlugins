#include "stdafx.h"
#include "InfoSenser.h"
#include "Service.h"
#include <string>
#include <iostream>
#include <afxwin.h>
#include <vector>

#pragma comment(lib,"ws2_32.lib") 

InfoSenser *infosenser;


InfoSenser::InfoSenser(){
	this->refresh();
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

bool InfoSenser::refresh(){
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
	if ((!sysSuccess) | (!GlobalMemoryStatusEx(&statex))) {
		sysSuccess = false;
		std::cout << "Error init memory info" << std::endl;
		throw "Error init memory info";
	}
	//this->gSI->GetMemoryInfo(this->dwTotalPhy_d, this->dwTotalVirtual);

	//获取网络信息
	this->netSuccess = true;
	if (WSAStartup(MAKEWORD(2, 0), &WSAData)) {// 初始化Windows sockets API
		std::cout << "WSAStartup failed " << WSAGetLastError() << std::endl;
		netSuccess = false;
		throw "WSAStartup failed";
	}

	//获取主机名
	if ((!netSuccess) | gethostname(hostName, sizeof(hostName))) {
		std::cout << "Error: " << WSAGetLastError() << std::endl;
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
	this->macAdd1 = this->GetMac();
	/*
	//获取显卡信息
	this->gSI->GetDisplayCardInfo(this->dwgraphicCardNum, this->chgraphicCardNames);
	*/
	return true;
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
		std::cout << "第一个MAC:        " << this->macAdd1 << std::endl;
		return true;
	}
	else 	std::cout << "获取网络信息失败";
	return false;
}

std::string InfoSenser::getNetInfo() {
	std::stringstream ss;
	GlobalMemoryStatusEx(&statex);
	if (netSuccess) {
		printf("主机名：             %s\n", hostName);
		ss << hostName << std::endl;
		ss << std::string("主机地址类型:        ") << host->h_addrtype << std::endl
			<< "地址清单:        " << host->h_addr_list << std::endl
			<< "别名列表:        " << host->h_aliases << std::endl
			<< "地址长度:        " << host->h_length << std::endl
			<< "正式的主机名:        " << host->h_name << std::endl;
		for (int i = 0; host->h_addr_list[i] != 0; i++) {
			std::cout << "该主机IP" << i + 1 << ":        " << inet_ntoa(*(struct in_addr*)*host->h_addr_list) << std::endl;
		}
		std::cout << "第一个MAC:        " << this->macAdd1 << std::endl;
		return ss.str();
	}
	else {
		ss << "获取网络信息失败"<<std::endl;
		return ss.str();
	}
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

std::string InfoSenser::getHWInfo() {
	if (sysSuccess) {
		std::stringstream ss;
		ss << "操作系统版本 :      \n" << osvi.dwMajorVersion << osvi.dwMinorVersion << osvi.dwBuildNumber << std::endl;
		ss << "Service Pack :      \n" << osvi.wServicePackMajor << osvi.wServicePackMinor << std::endl;
		ss << "处理器架构 :        \n" << sysInfo.wProcessorArchitecture << std::endl;
		ss << "处理器级别 :        \n" << sysInfo.wProcessorLevel << std::endl;
		ss << "处理器版本 :        \n" << sysInfo.wProcessorRevision << std::endl;
		ss << "处理器掩码 :        \n" << sysInfo.dwActiveProcessorMask << std::endl;
		ss << "处理器数量 :        \n" << sysInfo.dwNumberOfProcessors << std::endl;
		ss << "处理器类型 :        \n" << sysInfo.dwProcessorType << std::endl;
		ss << "页面大小 :          \n"<< sysInfo.dwPageSize<<std::endl;
		ss << "应用程序最小地址 :  \n" << sysInfo.lpMinimumApplicationAddress << std::endl;
		ss << "应用程序最大地址 :  \n" << sysInfo.lpMaximumApplicationAddress << std::endl;
		ss << "虚拟内存分配粒度 :  \n" << sysInfo.dwAllocationGranularity << std::endl;
		ss << "OemId :             \n" << sysInfo.dwOemId << std::endl;
		ss << "wReserved :         \n" << sysInfo.wReserved << std::endl;

		ss << "虚拟内存:             " << ((float)statex.ullAvailVirtual / (float)statex.ullTotalVirtual) <<
			"% (" << (float)((statex.ullTotalVirtual - statex.ullAvailVirtual) / (float)1024 / (float)1024) << "MB/"
			<< (float)((float)statex.ullTotalVirtual / (float)1024 / (float)1024) << "MB)"
			<< "[" << (float)((float)statex.ullAvailExtendedVirtual / (float)1024 / (float)1024) << "MB添加]" << std::endl;

		ss << "物理内存:             " << statex.dwMemoryLoad <<
			"% (" << (float)((float)statex.ullAvailPhys / (float)1024 / (float)1024) << "MB/"
			<< (float)((float)statex.ullTotalPhys / (float)1024 / (float)1024) << "MB)" << std::endl;
		return ss.str();
	}
	else {
		std::cout << "获取硬件信息失败";
		return std::string("获取硬件信息失败");
	}
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

std::string InfoSenser::getDriveInfo() {
	std::stringstream ss;
	ss << "卷标名字：" << m_Volume[256] << std::endl;//卷标名 
	ss << "文件系统：" << m_FileSysName[256] << std::endl;
	ss << "硬盘序列号：" << m_SerialNum << std::endl;//序列号 
	ss << "文件最长：" << m_FileNameLength << std::endl;
	ss << "FileSysFlag：" << m_FileSysFlag << std::endl;

	if (true && this->dwdriveNum > 0) {
		int count = this->dwdriveNum;
		while (count-- > 0) {
			ss << "磁盘" << count << "          :" << this->chDriveInfo[count - 1] << std::endl;
		}
		std::cout << "磁盘信息完成";
		return ss.str();
	}
	else {
		std::cout << "获取磁盘信息失败或没有磁盘" << std::endl;
		return std::string("获取磁盘信息失败或没有磁盘");
	}
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

std::string InfoSenser::getCPUInfo() {
	std::stringstream ss;
	if (true && this->dwProcessorNum > 0) {
		ss << "CPU型号:          " << this->chProcessorName.GetBuffer() << std::endl;
		ss << "CPU种类:          " << this->chProcessorType.GetBuffer() << std::endl;
		ss << "CPU核心数量:      " << this->dwProcessorNum << std::endl;
		ss << "CPU频率:          " << this->dwMaxClockSpeed << std::endl;
		return ss.str();
	}
	else
		ss << "获取CPU信息失败或没有CPU" << std::endl;
	return ss.str();
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

std::string InfoSenser::getInterfaceInfo() {
	std::stringstream ss;
	if (true && this->interfaceCount > 0) {
		int count = 1;
		for (std::vector<CString>::iterator it = this->InterfaceNames.begin();
			it != this->InterfaceNames.end();
			it++) {
			CString name = *it;
			ss << "网卡" << count++ << "的型号:          " << name.GetBuffer() << std::endl;
		}
		return ss.str();
	}
	else
		ss << "获取网卡信息失败或没有网卡" << std::endl;
	return ss.str();
}

std::vector<float> InfoSenser::get_MEM_State(){
	std::vector<float> v_mc_info(2);
	v_mc_info[0] = (int)(this->statex.ullTotalPhys/1024/1024);
	v_mc_info[1]= (int)(this->statex.ullAvailPhys/1024/1024);
	std::cout << v_mc_info[0] << "|" << v_mc_info[1] << std::endl;
	return v_mc_info;
}

bool InfoSenser::printAll(){
	this->printHWInfo();
	this->printNetInfo();
	this->printDriveInfo();
	this->printCPUInfo();
	this->printInterfaceInfo();
	return true;
}

std::string InfoSenser::getAll() {
	std::stringstream ss;
	ss << this->getHWInfo();
	ss << this->getNetInfo();
	ss << this->getDriveInfo();
	ss << this->getCPUInfo();
	ss << this->getInterfaceInfo();
	return ss.str();
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