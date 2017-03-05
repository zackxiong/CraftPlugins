package com.tencent.p099b.p100a;

import android.content.Context;

/* renamed from: com.tencent.b.a.z */
final class C0714z implements Runnable {
    final /* synthetic */ Context f5361a;

    C0714z(Context context) {
        this.f5361a = context;
    }

    public final void run() {
        try {
            new Thread(new ad(this.f5361a), "NetworkMonitorTask").start();
        } catch (Throwable th) {
            C0710v.f5341q.m6938b(th);
            C0710v.m7096a(this.f5361a, th);
        }
    }
}
