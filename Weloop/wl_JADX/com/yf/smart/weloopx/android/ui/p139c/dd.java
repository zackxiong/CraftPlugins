package com.yf.smart.weloopx.android.ui.p139c;

import com.yf.smart.weloopx.data.models.UserProfileResult;
import com.yf.smart.weloopx.event.InvalidAccessTokenEvent;
import com.yf.smart.weloopx.p140b.p141b.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.dd */
class dd extends ProGuard {
    final /* synthetic */ dc f8432a;

    dd(dc dcVar) {
        this.f8432a = dcVar;
    }

    public void m10446a(UserProfileResult userProfileResult) {
        this.f8432a.f8415i = userProfileResult;
        this.f8432a.m10438i();
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f8432a.f8417k);
    }

    public void m10447b(String str) {
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f8432a.f8417k);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11276f(str)) {
            com.yf.lib.p135a.ProGuard.m8508a().m8614c(new InvalidAccessTokenEvent());
        }
    }
}
