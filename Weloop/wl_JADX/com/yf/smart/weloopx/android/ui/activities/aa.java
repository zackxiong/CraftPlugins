package com.yf.smart.weloopx.android.ui.activities;

import android.text.TextUtils;
import com.yf.gattlib.p118d.ProGuard.ProGuard;

/* compiled from: ProGuard */
class aa implements ProGuard {
    final /* synthetic */ ProGuard f7779a;

    aa(ProGuard proGuard) {
        this.f7779a = proGuard;
    }

    public void m9778a(String str, boolean z) {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7779a.f8153e + " onConnectStateChanged  isConnected = " + z);
        if (!z) {
            this.f7779a.m10054g();
        }
    }

    public void m9777a() {
        String k = this.f7779a.f8131G.m10707k();
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7779a.f8153e + " listener\u4e2donGattInitCompleted\u65b9\u6cd5 name = " + this.f7779a.f8147W + " realName = " + k);
        if (!(TextUtils.isEmpty(k) || k.equals(this.f7779a.f8147W))) {
            com.yf.gattlib.p117p.ProGuard.m8245a(this.f7779a.f8147W + ", but " + k);
            this.f7779a.f8147W = k;
        }
        this.f7779a.m10054g();
        this.f7779a.m10059h();
        this.f7779a.ai.m11123a();
    }
}
