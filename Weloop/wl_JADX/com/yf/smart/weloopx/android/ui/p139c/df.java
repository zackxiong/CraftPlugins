package com.yf.smart.weloopx.android.ui.p139c;

import com.p038b.p039a.p048d.p049a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.df */
class df extends ProGuard<String> {
    final /* synthetic */ dc f8434a;

    df(dc dcVar) {
        this.f8434a = dcVar;
    }

    public void m10451b() {
    }

    public void m10448a(long j, long j2, boolean z) {
    }

    public void m10450a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        String str = (String) proGuard.f2767a;
        com.yf.gattlib.p117p.ProGuard.m8292a("UserProfileFragment \u6dfb\u52a0\u597d\u53cb\u7ed3\u679c\u8fd4\u56de = " + str);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11274d(str) && com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            this.f8434a.m10429d(String.valueOf(this.f8434a.f8420n));
            this.f8434a.m10442m();
            if (this.f8434a.isAdded()) {
                this.f8434a.a_(this.f8434a.getString(R.string.send_successfully));
            }
        } else if (this.f8434a.isAdded()) {
            this.f8434a.a_(this.f8434a.getString(R.string.upload_failed));
        }
    }

    public void m10449a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        com.yf.gattlib.p117p.ProGuard.m8297b("UserProfileFragment Add friend failed msg = " + str);
        if (this.f8434a.isAdded()) {
            this.f8434a.a_(this.f8434a.getString(R.string.upload_failed));
        }
    }
}
