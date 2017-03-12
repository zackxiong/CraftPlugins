package com.baidu.android.pushservice.p069c;

import android.content.Context;

/* renamed from: com.baidu.android.pushservice.c.g */
public class C0207g extends C0205e {
    private static volatile C0207g f2983d;

    private C0207g(Context context) {
        super(context, C0202c.LIGHT_APP_CLIENT_NEW);
    }

    public static synchronized C0207g m4472a(Context context) {
        C0207g c0207g;
        synchronized (C0207g.class) {
            if (f2983d == null) {
                f2983d = new C0207g(context);
            } else {
                f2983d.b = context.getApplicationContext();
            }
            c0207g = f2983d;
        }
        return c0207g;
    }
}
