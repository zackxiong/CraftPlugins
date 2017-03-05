package com.yf.smart.weloopx.event;

import com.yf.lib.p136b.ProGuard;

/* compiled from: ProGuard */
public class SyncDataProgressEvent extends ProGuard {
    public final int curStep;
    public final int sumSteps;

    public SyncDataProgressEvent(int i, int i2) {
        this.sumSteps = i;
        this.curStep = i2;
    }
}
