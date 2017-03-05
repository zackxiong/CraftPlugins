package com.yf.smart.weloopx.android.ui.activities;

import android.media.MediaPlayer;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class hb implements Runnable {
    final /* synthetic */ UpgradeActivity f8087a;

    hb(UpgradeActivity upgradeActivity) {
        this.f8087a = upgradeActivity;
    }

    public void run() {
        MediaPlayer.create(this.f8087a, R.raw.ota_finish).start();
    }
}
