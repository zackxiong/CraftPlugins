package com.baidu.android.pushservice.message;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;

/* renamed from: com.baidu.android.pushservice.message.l */
public class C0326l extends C0316c {
    private static final String f3394b;

    static {
        f3394b = C0326l.class.getSimpleName();
    }

    public C0326l(Context context) {
        super(context);
    }

    public int m5089a(C0319e c0319e) {
        c0319e.f3371f = true;
        if (C0192a.m4341b()) {
            C0385a.m5308a(f3394b, "handleMessage: server heart beat type - " + c0319e.f3366a);
        }
        return 0;
    }
}
