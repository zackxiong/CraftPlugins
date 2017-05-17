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
	std::vector<float> get_MEM_State();//����״̬����2��,total/avail,in mb
	//std::string getfGraphicCardInfo();
	//std::string getTotalVirtualMemInfo();
	std::string getAll();

	GetSysInfo* gSI;
	
	SYSTEM_INFO sysInfo;//Ӳ����Ϣ
	CString chProcessorName, chProcessorType;//CPU��Ϣ
	DWORD dwProcessorNum, dwMaxClockSpeed;
	DWORD dwdriveNum;//Ӳ����Ϣ
	CString *chDriveInfo;
	char m_Volume[256];//����� 
	char m_FileSysName[256];
	DWORD m_SerialNum;//���к� 
	DWORD m_FileNameLength;
	DWORD m_FileSysFlag;
	int  interfaceCount;//������Ϣ
	//CString *InterfaceName;
	std::vector<CString> InterfaceNames;
	std::string macAdd1;
	DWORD dwgraphicCardNum;//�Կ���Ϣ
	CString *chgraphicCardNames;

	OSVERSIONINFOEX osvi;//ϵͳ��Ϣ
	//CString strOSVersion, strServiceVersion;//����ϵͳ�ܹ�
	bool isWow64;

	MEMORYSTATUSEX statex; //�����ڴ���Ϣ(ʵʱ����)
	//CString dwTotalVirtual;//�����ڴ�
	//CString dwTotalPhy_d;
	bool sysSuccess;

	char hostName[256];
	bool netSuccess;

protected:
	struct hostent *host; //������Ϣ��h_addr_list��Ҫת���ɱ�������
	WSADATA WSAData; //��ʼ���׽�����ʱʹ��
};

extern InfoSenser *infosenser;
