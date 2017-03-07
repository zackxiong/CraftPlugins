package com.yf.gattlib.client.p113b;

import com.yf.gattlib.client.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.ay */
public class ay extends aw {
    protected byte[] m7573c() {
        return ProGuard.m7994a("H2DR", 155, 7, 0);
    }

    protected byte[] m7574q() {
        int i = 6;
        Object obj = new byte[7];
        Object a = com.yf.gattlib.p108a.ProGuard.m7368a().m7386p().m7466a();
        int length = a.length;
        if (length <= 6) {
            i = length;
        }
        System.arraycopy(a, 0, obj, 0, i);
        com.yf.gattlib.p117p.ProGuard.m8319a(obj);
        return obj;
    }
}
