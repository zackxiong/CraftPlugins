package com.yf.smart.weloopx.android.ui.activities;

/* compiled from: ProGuard */
class ha implements Runnable {
    final /* synthetic */ int f8085a;
    final /* synthetic */ UpgradeActivity f8086b;

    ha(UpgradeActivity upgradeActivity, int i) {
        this.f8086b = upgradeActivity;
        this.f8085a = i;
    }

    public void run() {
        this.f8086b.f7747k.setText(this.f8086b.m9705d(this.f8085a));
    }
}
