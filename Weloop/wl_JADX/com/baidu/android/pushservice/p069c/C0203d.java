package com.baidu.android.pushservice.p069c;

import android.content.Context;
import com.baidu.android.pushservice.p071e.C0250e;

/* renamed from: com.baidu.android.pushservice.c.d */
public class C0203d {
    public C0208h f2976a;
    public C0209i f2977b;
    private C0202c f2978c;

    public C0203d(C0202c c0202c) {
        this.f2978c = c0202c;
    }

    public static C0203d m4463a(Context context, String str) {
        C0208h b = C0201b.m4446a(context).m4458b(str);
        if (b == null || b.c == null) {
            C0209i d = C0210j.m4473a(context).m4478d(str);
            if (d == null || d.m4444c() == null) {
                return ((C0211k) C0212l.m4479a(context).m4469b(str)) != null ? new C0203d(C0202c.WEBAPP_CLIENT) : C0250e.m4709a(context).m4750a(str) ? new C0203d(C0202c.LIGHT_APP_CLIENT_NEW) : new C0203d(C0202c.UNKNOWN_CLIENT);
            } else {
                C0203d c0203d = new C0203d(C0202c.SDK_CLIENT);
                c0203d.f2977b = d;
                return c0203d;
            }
        }
        c0203d = new C0203d(C0202c.PUSH_CLIENT);
        c0203d.f2976a = b;
        return c0203d;
    }

    public C0202c m4464a() {
        return this.f2978c;
    }
}
