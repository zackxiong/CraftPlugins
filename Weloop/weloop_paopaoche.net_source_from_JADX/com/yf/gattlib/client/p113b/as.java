package com.yf.gattlib.client.p113b;

import com.yf.gattlib.client.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.as */
public class as extends ab {
    private String f5781a;
    private byte f5782b;

    public as(boolean z, byte b) {
        this.f5781a = "SetVibrationModeTransaction";
        this.f5782b = z ? (byte) (b | 16) : (byte) (b & 15);
        ProGuard.m7829a().m7855c(this.f5782b);
    }

    protected byte[] m7564c() {
        return ProGuard.m7994a("H2DR", 177, 0, this.f5782b);
    }
}
