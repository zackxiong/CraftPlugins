package com.yf.smart.weloopx.android.ui.activities;

import com.baidu.location.LocationClientOption;
import java.util.TimerTask;

/* compiled from: ProGuard */
class cl extends TimerTask {
    final /* synthetic */ DfuActivity f7873a;

    cl(DfuActivity dfuActivity) {
        this.f7873a = dfuActivity;
    }

    public void run() {
        DfuActivity.m9321b(this.f7873a, this.f7873a.f7399J / LocationClientOption.MIN_SCAN_SPAN);
        int I = this.f7873a.f7401L - this.f7873a.f7400K;
        float J = (((float) this.f7873a.f7400K) * 1.0f) / ((float) this.f7873a.f7398I);
        if (J != 0.0f) {
            this.f7873a.m9324b((int) (((float) I) / J));
        }
    }
}
