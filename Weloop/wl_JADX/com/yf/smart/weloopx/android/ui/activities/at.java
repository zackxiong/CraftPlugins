package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.client.p113b.p114a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class at implements Runnable {
    final /* synthetic */ int f7812a;
    final /* synthetic */ int f7813b;
    final /* synthetic */ as f7814c;

    at(as asVar, int i, int i2) {
        this.f7814c = asVar;
        this.f7812a = i;
        this.f7813b = i2;
    }

    public void run() {
        if (ProGuard.m7482b(this.f7812a, this.f7813b)) {
            this.f7814c.f7811b.f7809a.f8130F.m7856c(this.f7814c.f7810a);
            this.f7814c.f7811b.f7809a.m9822a(this.f7814c.f7811b.f7809a.m9825d(R.string.set_success));
        } else {
            this.f7814c.f7811b.f7809a.m9822a(this.f7814c.f7811b.f7809a.m9825d(R.string.sync_failed));
        }
        this.f7814c.f7811b.f7809a.f8130F.m7845a(14, new Object[0]);
        this.f7814c.f7811b.f7809a.m10069j();
    }
}
