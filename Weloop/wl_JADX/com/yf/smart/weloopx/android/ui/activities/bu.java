package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.client.p113b.p114a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class bu implements Runnable {
    final /* synthetic */ int f7847a;
    final /* synthetic */ int f7848b;
    final /* synthetic */ bt f7849c;

    bu(bt btVar, int i, int i2) {
        this.f7849c = btVar;
        this.f7847a = i;
        this.f7848b = i2;
    }

    public void run() {
        if (ProGuard.m7482b(this.f7847a, this.f7848b)) {
            this.f7849c.f7846b.f7844a.f8130F.m7858d(this.f7849c.f7845a);
            this.f7849c.f7846b.f7844a.m9822a(this.f7849c.f7846b.f7844a.m9825d(R.string.set_success));
        } else {
            this.f7849c.f7846b.f7844a.m9822a(this.f7849c.f7846b.f7844a.m9825d(R.string.sync_failed));
        }
        this.f7849c.f7846b.f7844a.f8130F.m7845a(20, new Object[0]);
        this.f7849c.f7846b.f7844a.m10069j();
    }
}
