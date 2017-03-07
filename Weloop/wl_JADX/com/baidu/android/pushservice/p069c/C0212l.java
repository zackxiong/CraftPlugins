package com.baidu.android.pushservice.p069c;

import android.content.Context;

/* renamed from: com.baidu.android.pushservice.c.l */
public class C0212l extends C0205e {
    private static volatile C0212l f2987d;

    private C0212l(Context context) {
        super(context, C0202c.WEBAPP_CLIENT);
    }

    public static synchronized C0212l m4479a(Context context) {
        C0212l c0212l;
        synchronized (C0212l.class) {
            if (f2987d == null) {
                f2987d = new C0212l(context);
            } else {
                f2987d.b = context.getApplicationContext();
            }
            c0212l = f2987d;
        }
        return c0212l;
    }
}
