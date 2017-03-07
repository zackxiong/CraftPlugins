package com.yf.smart.weloopx.android.ui.activities;

import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class bk implements Runnable {
    final /* synthetic */ ProGuard f7835a;

    bk(ProGuard proGuard) {
        this.f7835a = proGuard;
    }

    public void run() {
        ah.m10189a(this.f7835a.getChildFragmentManager(), "ignore_device", this.f7835a.m9825d(R.string.ignore_device_at_buluetooth_settings), (int) R.layout.confirm_gray_dialog1, true, false);
    }
}
