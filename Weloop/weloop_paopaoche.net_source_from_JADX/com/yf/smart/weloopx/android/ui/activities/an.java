package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.client.p113b.p114a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class an implements Runnable {
    final /* synthetic */ int f7798a;
    final /* synthetic */ int f7799b;
    final /* synthetic */ am f7800c;

    an(am amVar, int i, int i2) {
        this.f7800c = amVar;
        this.f7798a = i;
        this.f7799b = i2;
    }

    public void run() {
        if (ProGuard.m7482b(this.f7798a, this.f7799b)) {
            if (this.f7800c.f7797a.f7796a.isAdded()) {
                this.f7800c.f7797a.f7796a.m9822a(this.f7800c.f7797a.f7796a.m9825d(R.string.set_success));
            }
        } else if (this.f7800c.f7797a.f7796a.isAdded()) {
            this.f7800c.f7797a.f7796a.m9822a(this.f7800c.f7797a.f7796a.m9825d(R.string.sync_fail));
        }
        com.yf.gattlib.client.ProGuard.m7829a().m7845a(19, new Object[0]);
        this.f7800c.f7797a.f7796a.m10069j();
    }
}
