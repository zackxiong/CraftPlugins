package com.yf.gattlib.client.p113b;

import com.yf.gattlib.client.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.at */
public class at extends ab {
    private final String f5783a;
    private byte f5784b;

    public at(bo boVar) {
        this.f5783a = "SetWakeUpPatternTransaction";
        this.f5784b = boVar.m7648a();
    }

    protected byte[] m7565c() {
        byte[] a = ProGuard.m7994a("H2DR", 172, 0, this.f5784b);
        com.yf.gattlib.p117p.ProGuard.m8292a("SetWakeUpPatternTransaction byteResult = " + com.yf.gattlib.p117p.ProGuard.m8289a(a));
        return a;
    }
}
