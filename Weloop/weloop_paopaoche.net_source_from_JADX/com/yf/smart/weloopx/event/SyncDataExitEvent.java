package com.yf.smart.weloopx.event;

import com.yf.lib.p136b.ProGuard;

/* compiled from: ProGuard */
public class SyncDataExitEvent extends ProGuard {
    public final int index;
    public final String msg;
    public final int titleId;

    public SyncDataExitEvent(int i, int i2, String str) {
        this.index = i;
        this.titleId = i2;
        this.msg = str;
    }
}
