package com.baidu.frontia.module.deeplink;

import android.content.Context;
import com.baidu.android.p062a.p063a.C0160a;
import com.baidu.android.p062a.p063a.C0161b;
import com.baidu.android.p062a.p063a.C0162c;
import com.baidu.android.p062a.p063a.C0163d;

/* renamed from: com.baidu.frontia.module.deeplink.i */
class C0425i implements C0163d {
    private Context f3725a;

    public C0425i(Context context) {
        this.f3725a = context;
    }

    public void m5441a(C0162c c0162c) {
        c0162c.m4154a(0);
    }

    public void m5442a(C0162c c0162c, Exception exception) {
        C0161b c0161b = new C0161b();
        c0161b.m4147a(500);
        c0162c.m4155a(c0161b);
    }

    public void m5443b(C0162c c0162c) {
        C0161b c0161b = new C0161b();
        C0160a a = c0162c.m4153a();
        if (a != null) {
            String a2 = a.m4143a("URI");
            if (a2 != null) {
                a2 = a2.substring(1, a2.length());
                c0161b.m4148a("text/plain");
                new C0416b(this.f3725a).m5411a(a2, a, c0161b);
            }
        }
        c0161b.m4146a().put("Access-Control-Allow-Origin", "*");
        c0162c.m4155a(c0161b);
    }
}
