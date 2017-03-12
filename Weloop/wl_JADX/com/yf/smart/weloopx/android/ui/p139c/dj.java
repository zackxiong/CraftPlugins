package com.yf.smart.weloopx.android.ui.p139c;

import com.p038b.p039a.p048d.p049a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.dj */
class dj extends ProGuard<String> {
    final /* synthetic */ String f8438a;
    final /* synthetic */ dc f8439b;

    dj(dc dcVar, String str) {
        this.f8439b = dcVar;
        this.f8438a = str;
    }

    public void m10459b() {
        this.f8439b.m10166a(new dk(this));
    }

    public void m10456a(long j, long j2, boolean z) {
    }

    public void m10458a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        String str = (String) proGuard.f2767a;
        com.yf.gattlib.p117p.ProGuard.m8292a("UserProfileFragment \u5220\u9664\u597d\u53cb\u7ed3\u679c = " + str);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11274d(str) && com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            bl.f8280b = true;
            this.f8439b.a_(this.f8439b.getString(R.string.del_success_friend));
            this.f8439b.m10434f(this.f8438a);
            this.f8439b.m10436g(this.f8438a);
            this.f8439b.m10166a(new dl(this));
        } else {
            this.f8439b.a_(this.f8439b.getString(R.string.del_friend_failed));
        }
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f8439b.f8417k);
    }

    public void m10457a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        com.yf.gattlib.p117p.ProGuard.m8297b("UserProfileFragment Query search failed = " + str);
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f8439b.f8417k);
    }
}
