package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.p127m.p128a.ProGuard;

/* compiled from: ProGuard */
class bq implements Runnable {
    final /* synthetic */ ProGuard f7841a;
    final /* synthetic */ ProGuard f7842b;

    bq(ProGuard proGuard, ProGuard proGuard2) {
        this.f7842b = proGuard;
        this.f7841a = proGuard2;
    }

    public void run() {
        this.f7842b.f8140P.m8136a(this.f7841a);
        this.f7842b.f8140P.notifyDataSetChanged();
    }
}
