package com.yf.gattlib.client.p113b;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.bh */
class bh implements Runnable {
    final /* synthetic */ ProGuard f5851a;
    final /* synthetic */ ProGuard f5852b;
    final /* synthetic */ int f5853c;
    final /* synthetic */ be f5854d;

    bh(be beVar, ProGuard proGuard, ProGuard proGuard2, int i) {
        this.f5854d = beVar;
        this.f5851a = proGuard;
        this.f5852b = proGuard2;
        this.f5853c = i;
    }

    public void run() {
        synchronized (be.f5842c) {
            if (this.f5851a == null) {
                if (this.f5852b != null) {
                    this.f5852b.m7484a(2, this.f5853c, 0, new Object[0]);
                }
                return;
            }
            this.f5851a.m7484a(2, this.f5853c, 0, new Object[0]);
        }
    }
}
