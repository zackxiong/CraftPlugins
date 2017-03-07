package com.yf.smart.weloopx.android.ui.p139c;

import com.yf.smart.weloopx.event.CustomStatisticsEvent;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.ap */
class ap implements Runnable {
    final /* synthetic */ CustomStatisticsEvent f8220a;
    final /* synthetic */ am f8221b;

    ap(am amVar, CustomStatisticsEvent customStatisticsEvent) {
        this.f8221b = amVar;
        this.f8220a = customStatisticsEvent;
    }

    public void run() {
        if (r1.f8213b != null) {
            r1.f8213b.m9606a(this.f8220a.code, this.f8220a.msg);
        }
        this.f8221b.m10167b();
    }
}
