package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
class gw implements Runnable {
    final /* synthetic */ UpgradeActivity f8080a;

    gw(UpgradeActivity upgradeActivity) {
        this.f8080a = upgradeActivity;
    }

    public void run() {
        try {
            this.f8080a.m9734r();
        } catch (Throwable e) {
            ProGuard.m8295a(e);
            this.f8080a.finish();
        }
    }
}
