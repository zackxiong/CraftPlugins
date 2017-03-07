package com.yf.smart.weloopx.android.ui.activities;

import com.yf.smart.weloopx.p146c.ProGuard.ProGuard;

/* compiled from: ProGuard */
class cx implements ProGuard {
    final /* synthetic */ boolean f7886a;
    final /* synthetic */ DisturbActivity f7887b;

    cx(DisturbActivity disturbActivity, boolean z) {
        this.f7887b = disturbActivity;
        this.f7886a = z;
    }

    public void m9811a() {
        this.f7887b.runOnUiThread(new cy(this));
    }

    public void m9812b() {
        com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().m7411a("anti disturb model", this.f7887b.f7438J);
        this.f7887b.f7437I = false;
        this.f7887b.runOnUiThread(new cz(this));
    }
}
