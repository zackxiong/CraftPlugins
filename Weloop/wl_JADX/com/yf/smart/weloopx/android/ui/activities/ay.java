package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.client.p113b.p114a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class ay implements Runnable {
    final /* synthetic */ int f7820a;
    final /* synthetic */ int f7821b;
    final /* synthetic */ ax f7822c;

    ay(ax axVar, int i, int i2) {
        this.f7822c = axVar;
        this.f7820a = i;
        this.f7821b = i2;
    }

    public void run() {
        if (ProGuard.m7482b(this.f7820a, this.f7821b)) {
            this.f7822c.f7819a.f7818a.f8130F.m7847a(false);
            this.f7822c.f7819a.f7818a.m9822a(this.f7822c.f7819a.f7818a.m9825d(R.string.set_success));
        } else {
            this.f7822c.f7819a.f7818a.m9822a(this.f7822c.f7819a.f7818a.m9825d(R.string.sync_failed));
        }
        this.f7822c.f7819a.f7818a.f8130F.m7845a(18, new Object[0]);
        this.f7822c.f7819a.f7818a.m10069j();
    }
}
