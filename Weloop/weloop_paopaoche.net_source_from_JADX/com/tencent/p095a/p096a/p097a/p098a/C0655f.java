package com.tencent.p095a.p096a.p097a.p098a;

import android.content.Context;

/* renamed from: com.tencent.a.a.a.a.f */
public abstract class C0655f {
    protected Context f5052a;

    protected C0655f(Context context) {
        this.f5052a = null;
        this.f5052a = context;
    }

    public final void m6833a(C0657c c0657c) {
        if (c0657c != null) {
            String c0657c2 = c0657c.toString();
            if (m6835a()) {
                m6834a(C0661h.m6862d(c0657c2));
            }
        }
    }

    protected abstract void m6834a(String str);

    protected abstract boolean m6835a();

    protected abstract String m6836b();

    public final C0657c m6837c() {
        String c = m6835a() ? C0661h.m6861c(m6836b()) : null;
        return c != null ? C0657c.m6841a(c) : null;
    }
}
