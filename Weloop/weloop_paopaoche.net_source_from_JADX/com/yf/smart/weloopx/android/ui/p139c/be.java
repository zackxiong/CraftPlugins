package com.yf.smart.weloopx.android.ui.p139c;

import com.yf.gattlib.p118d.ProGuard.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.be */
class be implements ProGuard {
    final /* synthetic */ ba f8262a;

    be(ba baVar) {
        this.f8262a = baVar;
    }

    public void m10277a(String str, boolean z) {
        com.yf.gattlib.p117p.ProGuard.m8292a("OneDailyFragment onConnectStateChanged isConnected = " + z);
        if (!z && this.f8262a.f8243k != null) {
            this.f8262a.f8243k.dismissAllowingStateLoss();
            this.f8262a.m10265i();
        }
    }

    public void m10276a() {
    }
}
