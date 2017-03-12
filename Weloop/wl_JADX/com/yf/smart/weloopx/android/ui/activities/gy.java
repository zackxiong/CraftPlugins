package com.yf.smart.weloopx.android.ui.activities;

/* compiled from: ProGuard */
class gy implements Runnable {
    final /* synthetic */ UpgradeActivity f8083a;

    gy(UpgradeActivity upgradeActivity) {
        this.f8083a = upgradeActivity;
    }

    public void run() {
        this.f8083a.f7754r.setProgress(this.f8083a.f7742d);
        this.f8083a.f7750n.setText("" + ((this.f8083a.f7742d * 100) / 360));
    }
}
