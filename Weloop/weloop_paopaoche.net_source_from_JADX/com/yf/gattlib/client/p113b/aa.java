package com.yf.gattlib.client.p113b;

import com.yf.gattlib.p108a.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.aa */
class aa extends Thread {
    final /* synthetic */ int f5737a;
    final /* synthetic */ ProGuard f5738b;

    aa(ProGuard proGuard, int i) {
        this.f5738b = proGuard;
        this.f5737a = i;
    }

    public void run() {
        this.f5738b.m7796a(ProGuard.m7368a(), this.f5737a);
    }
}
