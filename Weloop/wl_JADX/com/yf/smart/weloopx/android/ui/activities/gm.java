package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.p118d.ProGuard.ProGuard;

/* compiled from: ProGuard */
class gm implements ProGuard {
    final /* synthetic */ UpgradeActivity f8068a;

    gm(UpgradeActivity upgradeActivity) {
        this.f8068a = upgradeActivity;
    }

    public void m9943a(String str, boolean z) {
        com.yf.gattlib.p117p.ProGuard.m8292a(UpgradeActivity.f7712i + " \u662f\u5426\u91cd\u65b0\u8fde\u63a5" + z + "," + this.f8068a.f7759x + ", " + this.f8068a.f7743e);
        if (!z && this.f8068a.f7743e != 1) {
            this.f8068a.f7759x = true;
        }
    }

    public void m9942a() {
        if (this.f8068a.f7759x && this.f8068a.f7741c.m7376f().m8078h()) {
            com.yf.gattlib.p117p.ProGuard.m8297b(UpgradeActivity.f7712i + " !!!!!!!onGattInitCompleted");
            this.f8068a.f7746j.removeCallbacks(this.f8068a.f7728P);
            this.f8068a.f7746j.postDelayed(this.f8068a.f7728P, 3000);
        }
    }
}
