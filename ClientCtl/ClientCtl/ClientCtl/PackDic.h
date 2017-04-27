#pragma once
#include "stdafx.h"
#include "InfoSenser.h"
#include "HexTrans.h"
#include "Phaser.h"


bool init_dic(InfoSenser *i);
struct IntentDic {
	char*
		keepAlive = "alive";
};
extern IntentDic intentDic;

struct ContentDic {
	char*
		ID = "alive";
};
extern ContentDic contentDic;