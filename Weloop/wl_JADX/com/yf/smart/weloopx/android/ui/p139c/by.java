package com.yf.smart.weloopx.android.ui.p139c;

import com.yf.smart.weloopx.event.InvalidAccessTokenEvent;
import com.yf.smart.weloopx.p140b.p141b.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.by */
class by extends ProGuard {
    final /* synthetic */ bt f8324a;

    by(bt btVar) {
        this.f8324a = btVar;
    }

    public void m10345d() {
        this.f8324a.f8315h = false;
        this.f8324a.m10329e();
    }

    public void m10344b(String str) {
        this.f8324a.f8315h = false;
        this.f8324a.m10333g();
        if (com.yf.smart.weloopx.p143f.ProGuard.m11276f(str)) {
            com.yf.lib.p135a.ProGuard.m8508a().m8614c(new InvalidAccessTokenEvent());
        }
    }
}
