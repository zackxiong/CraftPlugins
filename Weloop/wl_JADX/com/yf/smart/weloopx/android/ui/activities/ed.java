package com.yf.smart.weloopx.android.ui.activities;

import com.p038b.p039a.p048d.p049a.ProGuard;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.event.InvalidAccessTokenEvent;

/* compiled from: ProGuard */
class ed extends ProGuard<String> {
    final /* synthetic */ MessageNotification f7940a;

    ed(MessageNotification messageNotification) {
        this.f7940a = messageNotification;
    }

    public void m9849b() {
    }

    public void m9846a(long j, long j2, boolean z) {
    }

    public void m9848a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        this.f7940a.m9512a();
        String str = (String) proGuard.f2767a;
        com.yf.gattlib.p117p.ProGuard.m8297b(this.f7940a.f7522e + " \u83b7\u5f97\u6240\u6709\u6d88\u606f\u901a\u77e5\u7684\u5185\u5bb9  = " + str);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11276f(str)) {
            com.yf.lib.p135a.ProGuard.m8508a().m8614c(new InvalidAccessTokenEvent());
            this.f7940a.finish();
        } else if (com.yf.smart.weloopx.p143f.ProGuard.m11274d(str) && com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            this.f7940a.m9497a(str);
        } else {
            this.f7940a.m8795e(this.f7940a.getString(R.string.no_msg_noti));
        }
    }

    public void m9847a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        this.f7940a.m9512a();
        if (com.yf.smart.weloopx.p143f.ProGuard.m11276f(str)) {
            com.yf.lib.p135a.ProGuard.m8508a().m8614c(new InvalidAccessTokenEvent());
        } else {
            com.yf.gattlib.p117p.ProGuard.m8297b(this.f7940a.f7522e + " \u83b7\u5f97\u6d88\u606f\u5931\u8d25 = " + str);
        }
    }
}
