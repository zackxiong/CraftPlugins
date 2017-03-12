package com.yf.smart.weloopx.p146c;

import com.yf.gattlib.client.p113b.ap;
import com.yf.smart.weloopx.data.models.DailyGain;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.c.af */
class af implements Runnable {
    final /* synthetic */ DailyGain f8702a;
    final /* synthetic */ ProGuard f8703b;

    af(ProGuard proGuard, DailyGain dailyGain) {
        this.f8703b = proGuard;
        this.f8702a = dailyGain;
    }

    public void run() {
        new ap(new ag(this), this.f8702a.getStepCount(), this.f8703b.f8769o.f5789c, this.f8703b.f8769o.f5788b, this.f8703b.f8769o.f5790d).m7498f();
    }
}
