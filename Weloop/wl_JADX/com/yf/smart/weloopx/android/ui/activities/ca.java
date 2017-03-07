package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.client.p113b.p114a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class ca implements Runnable {
    final /* synthetic */ int f7857a;
    final /* synthetic */ int f7858b;
    final /* synthetic */ bz f7859c;

    ca(bz bzVar, int i, int i2) {
        this.f7859c = bzVar;
        this.f7857a = i;
        this.f7858b = i2;
    }

    public void run() {
        if (ProGuard.m7482b(this.f7857a, this.f7858b)) {
            this.f7859c.f7855a.f8130F.m7856c(true);
            this.f7859c.f7855a.m9822a(this.f7859c.f7855a.m9825d(R.string.set_success));
        } else {
            this.f7859c.f7855a.m9822a(this.f7859c.f7855a.m9825d(R.string.sync_failed));
        }
        this.f7859c.f7855a.f8130F.m7845a(14, new Object[0]);
        this.f7859c.f7855a.m10069j();
    }
}
