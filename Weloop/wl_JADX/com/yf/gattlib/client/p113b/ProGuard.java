package com.yf.gattlib.client.p113b;

import android.content.Intent;

/* renamed from: com.yf.gattlib.client.b.k */
public class ProGuard extends ad {
    private static final String f5949a;

    static {
        f5949a = ProGuard.class.getSimpleName();
    }

    public void m7724a(byte[] bArr, Object... objArr) {
        if (70 == com.yf.gattlib.client.ProGuard.m7990a(bArr)) {
            String str = (String) objArr[0];
            if (str != null) {
                com.yf.gattlib.p117p.ProGuard.m8298b(f5949a, "forget phone");
                Intent b = com.yf.gattlib.server.android.ProGuard.m8446b(str);
                com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8066a(false);
                com.yf.gattlib.p108a.ProGuard.m7347a().m7365f(b);
            }
        }
        m7501i();
    }

    public int[] m7725a() {
        return new int[]{70};
    }
}
