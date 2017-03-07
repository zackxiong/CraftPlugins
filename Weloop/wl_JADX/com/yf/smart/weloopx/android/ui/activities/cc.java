package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.client.p113b.p114a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class cc implements Runnable {
    final /* synthetic */ int f7861a;
    final /* synthetic */ int f7862b;
    final /* synthetic */ cb f7863c;

    cc(cb cbVar, int i, int i2) {
        this.f7863c = cbVar;
        this.f7861a = i;
        this.f7862b = i2;
    }

    public void run() {
        if (ProGuard.m7482b(this.f7861a, this.f7862b)) {
            this.f7863c.f7860a.f8130F.m7847a(true);
            this.f7863c.f7860a.m9822a(this.f7863c.f7860a.m9825d(R.string.set_success));
        } else {
            this.f7863c.f7860a.m9822a(this.f7863c.f7860a.m9825d(R.string.sync_failed));
        }
        this.f7863c.f7860a.f8130F.m7845a(18, new Object[0]);
        this.f7863c.f7860a.m10069j();
    }
}
