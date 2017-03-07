package com.yf.smart.weloopx.android.ui.p139c;

import com.yf.gattlib.client.p113b.p114a.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.cb */
class cb implements ProGuard {
    final /* synthetic */ ca f8331a;

    cb(ca caVar) {
        this.f8331a = caVar;
    }

    public void m10351a(int i, int i2, int i3, Object... objArr) {
        if (ProGuard.m7480a(i)) {
            this.f8331a.m10167b();
            if (ProGuard.m7481a(i, i2) && i2 != 4) {
                com.yf.gattlib.p117p.ProGuard.m8245a("setting, " + (this.f8331a.f8329c ? "recover" : "restart") + " failed code = " + i2);
                if (this.f8331a.f8328b != null) {
                    this.f8331a.f8328b.m9520a(false, this.f8331a.f8329c);
                }
            } else if (this.f8331a.f8328b != null) {
                this.f8331a.f8328b.m9520a(true, this.f8331a.f8329c);
            }
        }
    }
}
