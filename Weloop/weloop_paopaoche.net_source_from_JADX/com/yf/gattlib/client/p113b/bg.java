package com.yf.gattlib.client.p113b;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.bg */
class bg implements Runnable {
    final /* synthetic */ ProGuard f5848a;
    final /* synthetic */ boolean f5849b;
    final /* synthetic */ be f5850c;

    bg(be beVar, ProGuard proGuard, boolean z) {
        this.f5850c = beVar;
        this.f5848a = proGuard;
        this.f5849b = z;
    }

    public void run() {
        synchronized (be.f5842c) {
            if (this.f5850c.f5843d != null) {
                this.f5848a.m7484a(2, -3, 0, new Object[0]);
                return;
            }
            this.f5850c.m7605b(this.f5848a, this.f5849b);
        }
    }
}
