package com.yf.smart.weloopx.android.ui.activities;

import com.baidu.location.LocationClientOption;
import java.util.TimerTask;

/* compiled from: ProGuard */
class gs extends TimerTask {
    final /* synthetic */ UpgradeActivity f8076a;

    gs(UpgradeActivity upgradeActivity) {
        this.f8076a = upgradeActivity;
    }

    public void run() {
        UpgradeActivity.m9704d(this.f8076a, this.f8076a.f7737Y / LocationClientOption.MIN_SCAN_SPAN);
        int M = this.f8076a.aa - this.f8076a.f7738Z;
        float N = (((float) this.f8076a.f7738Z) * 1.0f) / ((float) this.f8076a.f7736X);
        if (N != 0.0f) {
            this.f8076a.m9703c((int) (((float) M) / N));
        }
    }
}
