package com.yf.smart.weloopx.android.ui.activities;

import com.yf.smart.weloopx.android.ui.p139c.aq;
import com.yf.smart.weloopx.android.ui.p139c.as;

/* compiled from: ProGuard */
class du implements Runnable {
    final /* synthetic */ MainActivity f7928a;

    du(MainActivity mainActivity) {
        this.f7928a = mainActivity;
    }

    public void run() {
        this.f7928a.m9478v();
        if (!aq.m10225a(this.f7928a.getFragmentManager())) {
            as.m10228a(this.f7928a.getFragmentManager(), true);
        }
    }
}
