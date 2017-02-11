
#include "stdafx.h"
#include <stdio.h>
#include "Windows.h"
#include "AliveKeeper.h"
#include <iostream>
#include <conio.h>
bool checkerNeed=true;
bool setterNeed=true;

DWORD WINAPI serviceCheckerThread(LPVOID pM);
DWORD WINAPI serviceSetterThread(LPVOID pM);
HANDLE checkerHandle, setterHandle;