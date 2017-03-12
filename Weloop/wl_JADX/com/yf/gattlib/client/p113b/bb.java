package com.yf.gattlib.client.p113b;

import com.yf.gattlib.client.ProGuard;
import java.util.GregorianCalendar;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.bb */
public class bb extends aw {
    private String f5798a;

    public bb() {
        this.f5798a = "SyncTimeTrancation";
    }

    protected byte[] m7583c() {
        return ProGuard.m7994a("H2DR", 144, 11, 0);
    }

    protected byte[] m7584q() {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(System.currentTimeMillis() + 2000);
        r1 = new byte[11];
        int i = gregorianCalendar.get(1);
        r1[0] = (byte) (i & 255);
        r1[1] = (byte) ((i >> 8) & 255);
        r1[2] = (byte) ((gregorianCalendar.get(2) + 1) & 255);
        r1[3] = (byte) (gregorianCalendar.get(5) & 255);
        r1[4] = (byte) (gregorianCalendar.get(11) & 255);
        r1[5] = (byte) (gregorianCalendar.get(12) & 255);
        r1[6] = (byte) (gregorianCalendar.get(13) & 255);
        r1[7] = (byte) (gregorianCalendar.get(7) & 255);
        r1[8] = (byte) 0;
        r1[9] = (byte) 0;
        com.yf.gattlib.p117p.ProGuard.m8319a(r1);
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f5798a + " \u540c\u6b65\u65f6\u95f4\uff0c getData time = " + com.yf.gattlib.p117p.ProGuard.m8289a(r1));
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f5798a + " \u5c06\u8981\u540c\u6b65\u7684\u65e5\u671f  = " + gregorianCalendar.get(5) + ", \u6708\u4efd = " + (gregorianCalendar.get(2) + 1));
        return r1;
    }

    public void m7582b() {
        if (com.yf.gattlib.p117p.ProGuard.m8247a()) {
            com.yf.gattlib.p117p.ProGuard.m8245a((Object) "sync time");
        }
        super.m7514b();
    }

    public void m7581a(byte[] bArr, Object... objArr) {
        if (com.yf.gattlib.p117p.ProGuard.m8247a()) {
            com.yf.gattlib.p117p.ProGuard.m8245a("sync time:" + com.yf.gattlib.p117p.ProGuard.m8289a(bArr));
        }
        super.m7513a(bArr, objArr);
    }
}
