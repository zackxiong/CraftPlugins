package com.yf.smart.weloopx.android.ui.activities;

import android.app.DialogFragment;
import com.yf.smart.weloopx.android.ui.ProGuard;

/* compiled from: ProGuard */
class go implements Runnable {
    final /* synthetic */ DialogFragment f8070a;
    final /* synthetic */ UpgradeActivity f8071b;

    go(UpgradeActivity upgradeActivity, DialogFragment dialogFragment) {
        this.f8071b = upgradeActivity;
        this.f8070a = dialogFragment;
    }

    public void run() {
        ProGuard.m10543a(this.f8070a);
        this.f8071b.finish();
    }
}
