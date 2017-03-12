package com.yf.smart.weloopx.event;

import com.yf.lib.p136b.ProGuard;

/* compiled from: ProGuard */
public class CustomStatisticsEvent extends ProGuard {
    public final int code;
    public final String msg;

    public CustomStatisticsEvent(int i, String str) {
        this.code = i;
        this.msg = str;
    }
}
