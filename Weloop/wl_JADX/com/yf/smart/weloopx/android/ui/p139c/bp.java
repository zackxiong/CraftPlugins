package com.yf.smart.weloopx.android.ui.p139c;

import com.p038b.p039a.p048d.p049a.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.bp */
class bp extends ProGuard<String> {
    final /* synthetic */ boolean f8299a;
    final /* synthetic */ bl f8300b;

    bp(bl blVar, boolean z) {
        this.f8300b = blVar;
        this.f8299a = z;
    }

    public void m10313b() {
        com.yf.gattlib.p117p.ProGuard.m8292a(bl.f8281c + " 1. \u83b7\u5f97\u6240\u6709\u597d\u53cb\u4fe1\u606f");
        this.f8300b.m10302i();
    }

    public void m10310a(long j, long j2, boolean z) {
    }

    public void m10312a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        String str = (String) proGuard.f2767a;
        com.yf.gattlib.p117p.ProGuard.m8292a(bl.f8281c + " 2. \u7f51\u7edc\u8fd4\u56de\u6240\u6709\u7684\u597d\u53cb\u4fe1\u606f  = " + str);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11274d(str) && com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            this.f8300b.m10286a(str, this.f8299a);
        } else {
            this.f8300b.m10301h();
        }
        this.f8300b.m10308b();
    }

    public void m10311a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        com.yf.gattlib.p117p.ProGuard.m8297b(bl.f8281c + " 3. \u83b7\u5f97\u6240\u6709\u597d\u53cb\u4fe1\u606f\u5931\u8d25 failed = " + str);
        this.f8300b.m10301h();
        this.f8300b.m10308b();
    }
}
