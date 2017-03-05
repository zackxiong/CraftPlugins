package com.yf.smart.weloopx.p146c;

import java.util.TimerTask;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.c.ah */
class ah extends TimerTask {
    final /* synthetic */ ProGuard f8705a;

    ah(ProGuard proGuard) {
        this.f8705a = proGuard;
    }

    public void run() {
        this.f8705a.f8771q.removeCallbacks(this.f8705a.f8772r);
        this.f8705a.f8771q.post(this.f8705a.f8772r);
    }
}
