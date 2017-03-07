package com.yf.smart.weloopx.android.ui.p139c;

import com.yf.gattlib.client.p113b.ProGuard.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.ac */
class ac implements ProGuard {
    final /* synthetic */ ProGuard f8189a;

    ac(ProGuard proGuard) {
        this.f8189a = proGuard;
    }

    public void m10176a() {
    }

    public void m10178b() {
        this.f8189a.m10516o();
    }

    public void m10177a(String[] strArr) {
        this.f8189a.f8490r.clear();
        for (int i = 0; i < strArr.length; i++) {
            if (this.f8189a.m10494c(strArr[i])) {
                ProGuard.ProGuard proGuard = new ProGuard.ProGuard(null);
                proGuard.f8471b = i;
                proGuard.f8470a = strArr[i];
                this.f8189a.f8490r.add(proGuard);
            }
        }
        this.f8189a.m10166a(new ad(this));
        this.f8189a.m10521q();
    }

    public void m10179c() {
        this.f8189a.m10516o();
    }

    public void m10180d() {
        com.yf.gattlib.p117p.ProGuard.m8297b("BaseDialogFragment \u83b7\u5f97\u8868\u76d8\u4fe1\u606f\u8d85\u65f6");
        this.f8189a.m10516o();
    }
}
