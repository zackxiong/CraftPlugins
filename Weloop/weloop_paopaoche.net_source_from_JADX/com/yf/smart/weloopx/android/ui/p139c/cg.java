package com.yf.smart.weloopx.android.ui.p139c;

import com.yf.gattlib.client.p113b.p114a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.cg */
class cg implements Runnable {
    final /* synthetic */ int f8344a;
    final /* synthetic */ int f8345b;
    final /* synthetic */ cf f8346c;

    cg(cf cfVar, int i, int i2) {
        this.f8346c = cfVar;
        this.f8344a = i;
        this.f8345b = i2;
    }

    public void run() {
        this.f8346c.f8343b.m10369g();
        if (ProGuard.m7482b(this.f8344a, this.f8345b)) {
            this.f8346c.f8343b.m10364d(this.f8346c.f8342a);
            com.yf.gattlib.client.ProGuard.m7829a().m7850b((byte) this.f8346c.f8342a);
            com.yf.gattlib.client.ProGuard.m7829a().m7845a(11, new Object[0]);
            this.f8346c.f8343b.m10163a((int) R.string.sync_success);
            this.f8346c.f8343b.m10167b();
            return;
        }
        this.f8346c.f8343b.m10163a((int) R.string.sync_fail);
    }
}
