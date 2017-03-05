package com.yf.smart.weloopx.android.ui.activities;

import com.umeng.update.UmengUpdateAgent;

/* compiled from: ProGuard */
class dy implements Runnable {
    final /* synthetic */ MainActivity f7934a;

    dy(MainActivity mainActivity) {
        this.f7934a = mainActivity;
    }

    public void run() {
        UmengUpdateAgent.setUpdateAutoPopup(false);
        UmengUpdateAgent.setUpdateListener(new dz(this));
        UmengUpdateAgent.setDeltaUpdate(true);
        UmengUpdateAgent.update(this.f7934a);
    }
}
