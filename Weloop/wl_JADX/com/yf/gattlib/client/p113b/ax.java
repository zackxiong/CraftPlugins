package com.yf.gattlib.client.p113b;

import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.ax */
public class ax extends aw {
    public void m7570b() {
        ProGuard.m8293a("charxx", "start music sync");
        super.m7514b();
        ProGuard.m8293a("charxx", "start music sync end");
    }

    protected byte[] m7571c() {
        return com.yf.gattlib.client.ProGuard.m7994a("H2DR", 147, 60, 0);
    }

    protected byte[] m7572q() {
        Object obj = new byte[60];
        com.yf.gattlib.p123h.ProGuard h = com.yf.gattlib.p108a.ProGuard.m7368a().m7378h();
        try {
            obj[0] = (byte) (h.m8125b() ? 1 : 2);
        } catch (Throwable e) {
            obj[0] = 1;
            ProGuard.m8295a(e);
        }
        com.yf.gattlib.p123h.ProGuard a = h.m8121a();
        Object bytes = ProGuard.m8262a(a.f6235c, 28, com.yf.gattlib.p129n.ProGuard.f6271a).getBytes(com.yf.gattlib.p129n.ProGuard.f6271a);
        System.arraycopy(bytes, 0, obj, 1, bytes.length);
        obj[29] = null;
        Object bytes2 = ProGuard.m8262a(a.f6233a, 14, com.yf.gattlib.p129n.ProGuard.f6271a).getBytes(com.yf.gattlib.p129n.ProGuard.f6271a);
        System.arraycopy(bytes2, 0, obj, 30, bytes2.length);
        obj[44] = null;
        Object bytes3 = ProGuard.m8262a(a.f6234b, 14, com.yf.gattlib.p129n.ProGuard.f6271a).getBytes(com.yf.gattlib.p129n.ProGuard.f6271a);
        System.arraycopy(bytes3, 0, obj, 45, bytes3.length);
        ProGuard.m8319a(obj);
        return obj;
    }
}
