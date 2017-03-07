package com.yf.gattlib.client.p113b;

import com.yf.gattlib.client.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.ag */
public class ag extends ab {
    private byte f5746a;

    public ag(byte b) {
        this.f5746a = (byte) (b == null ? 0 : 1);
    }

    protected byte[] m7523c() {
        return ProGuard.m7994a("H2DR", 137, 1, this.f5746a);
    }
}
