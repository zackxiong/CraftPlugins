package com.yf.gattlib.client.p113b;

import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.av */
public abstract class av extends ad {
    private static final String f5786a;

    protected abstract void m7567a(byte b);

    static {
        f5786a = av.class.getSimpleName();
    }

    public int[] m7569a() {
        return new int[]{92};
    }

    public void m7568a(byte[] bArr, Object... objArr) {
        ProGuard.m8292a(f5786a + " \u5207\u6362\u62cd\u7167\u5f55\u50cf\u754c\u9762 value = " + ProGuard.m8289a(bArr));
        byte c = com.yf.gattlib.client.ProGuard.m7997c(bArr);
        m7495b(bArr);
        m7567a(c);
        m7501i();
    }
}
