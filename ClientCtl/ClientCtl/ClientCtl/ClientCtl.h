
#include "stdafx.h"

#include "Windows.h"
#include <iostream>
#include <conio.h>

extern AliveKeeper* AKr;
extern bool checkerNeed;
extern bool setterNeed;

extern DWORD WINAPI serviceCheckerThread(LPVOID pM);
extern DWORD WINAPI serviceSetterThread(LPVOID pM);
extern HANDLE checkerHandle, setterHandle;