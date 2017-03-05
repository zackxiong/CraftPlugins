package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.client.p113b.p114a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class ac implements Runnable {
    final /* synthetic */ int f7781a;
    final /* synthetic */ int f7782b;
    final /* synthetic */ ab f7783c;

    ac(ab abVar, int i, int i2) {
        this.f7783c = abVar;
        this.f7781a = i;
        this.f7782b = i2;
    }

    public void run() {
        if (ProGuard.m7482b(this.f7781a, this.f7782b)) {
            this.f7783c.f7780a.f8130F.m7852b(true);
            this.f7783c.f7780a.m9822a(this.f7783c.f7780a.m9825d(R.string.set_success));
        } else {
            this.f7783c.f7780a.m9822a(this.f7783c.f7780a.m9825d(R.string.sync_failed));
        }
        this.f7783c.f7780a.f8130F.m7845a(20, new Object[0]);
        this.f7783c.f7780a.m10069j();
    }
}
