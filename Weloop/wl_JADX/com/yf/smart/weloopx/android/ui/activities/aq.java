package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.client.p113b.p114a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class aq implements Runnable {
    final /* synthetic */ int f7806a;
    final /* synthetic */ int f7807b;
    final /* synthetic */ ap f7808c;

    aq(ap apVar, int i, int i2) {
        this.f7808c = apVar;
        this.f7806a = i;
        this.f7807b = i2;
    }

    public void run() {
        if (ProGuard.m7482b(this.f7806a, this.f7807b)) {
            com.yf.gattlib.client.ProGuard.m7829a().m7855c(this.f7808c.f7802a ? this.f7808c.f7803b : (byte) this.f7808c.f7804c);
            if (this.f7808c.f7805d.isAdded()) {
                this.f7808c.f7805d.m9822a(this.f7808c.f7805d.m9825d(R.string.set_success));
            }
        } else if (this.f7808c.f7805d.isAdded()) {
            this.f7808c.f7805d.m9822a(this.f7808c.f7805d.m9825d(R.string.sync_fail));
        }
        com.yf.gattlib.client.ProGuard.m7829a().m7845a(19, new Object[0]);
        this.f7808c.f7805d.m10069j();
    }
}
