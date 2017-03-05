package com.yf.gattlib.client.p113b;

import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.au */
public class au extends ab {
    private byte f5785a;

    public au() {
        this.f5785a = ProGuard.m8261a();
        ProGuard.m8297b("Sync Language Id=" + this.f5785a);
    }

    protected byte[] m7566c() {
        return com.yf.gattlib.client.ProGuard.m7994a("H2DR", 163, 0, this.f5785a);
    }
}
