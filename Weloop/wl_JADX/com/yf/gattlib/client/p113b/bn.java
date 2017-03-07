package com.yf.gattlib.client.p113b;

import com.yf.gattlib.client.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.bn */
public abstract class bn extends ad {
    private String f5885a;

    protected abstract void m7645c();

    protected abstract void m7646e();

    public bn() {
        this.f5885a = "VideoRecordTransaction";
    }

    public void m7643a(byte[] bArr, Object... objArr) {
        int a = ProGuard.m7990a(bArr);
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f5885a + " \u5f55\u50cf\u4e8b\u52a1\u7684value = " + com.yf.gattlib.p117p.ProGuard.m8289a(bArr) + " cmd = " + a);
        m7495b(bArr);
        if (a == 90) {
            m7645c();
        } else if (a == 91) {
            m7646e();
        }
        m7501i();
    }

    public int[] m7644a() {
        return new int[]{90, 91};
    }
}
