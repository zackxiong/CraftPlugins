package com.yf.smart.weloopx.android.ui.activities;

import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class db implements Runnable {
    final /* synthetic */ DisturbActivity f7892a;

    db(DisturbActivity disturbActivity) {
        this.f7892a = disturbActivity;
    }

    public void run() {
        ah.m10189a(this.f7892a.getFragmentManager(), "can_not_the_same_time", this.f7892a.getString(R.string.disturb_same_time_tips), (int) R.layout.confirm_gray_dialog1, true, false);
    }
}
