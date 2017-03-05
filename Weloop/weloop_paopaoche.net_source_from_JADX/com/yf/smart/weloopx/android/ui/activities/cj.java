package com.yf.smart.weloopx.android.ui.activities;

import android.media.MediaPlayer;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class cj implements Runnable {
    final /* synthetic */ DfuActivity f7871a;

    cj(DfuActivity dfuActivity) {
        this.f7871a = dfuActivity;
    }

    public void run() {
        MediaPlayer.create(this.f7871a, R.raw.ota_finish).start();
    }
}
