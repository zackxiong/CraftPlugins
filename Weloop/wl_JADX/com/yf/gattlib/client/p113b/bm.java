package com.yf.gattlib.client.p113b;

import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.bm */
class bm implements Runnable {
    final /* synthetic */ bl f5884a;

    bm(bl blVar) {
        this.f5884a = blVar;
    }

    public void run() {
        ProGuard.m8292a(bl.f5861a + "mTimeoutChecker transfer timeout!!!");
        ProGuard.m8245a((Object) "ota: mTimeoutChecker, timeout");
        if (com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8078h()) {
            try {
                this.f5884a.m7641b();
                return;
            } catch (Throwable e) {
                ProGuard.m8295a(e);
                return;
            }
        }
        this.f5884a.m7629p();
        this.f5884a.m7631r();
        ProGuard.m8245a((Object) "ota: mTimeoutChecker, mRxStream == null is ");
    }
}
