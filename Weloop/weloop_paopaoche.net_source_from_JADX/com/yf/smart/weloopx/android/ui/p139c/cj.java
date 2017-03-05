package com.yf.smart.weloopx.android.ui.p139c;

import com.yf.gattlib.client.p113b.p114a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.cj */
class cj implements Runnable {
    final /* synthetic */ int f8349a;
    final /* synthetic */ int f8350b;
    final /* synthetic */ ci f8351c;

    cj(ci ciVar, int i, int i2) {
        this.f8351c = ciVar;
        this.f8349a = i;
        this.f8350b = i2;
    }

    public void run() {
        this.f8351c.f8348b.m10369g();
        if (ProGuard.m7482b(this.f8349a, this.f8350b)) {
            this.f8351c.f8348b.m10364d(this.f8351c.f8347a);
            com.yf.gattlib.client.ProGuard.m7829a().m7855c((byte) this.f8351c.f8347a);
            com.yf.gattlib.client.ProGuard.m7829a().m7845a(12, new Object[0]);
            if (this.f8351c.f8348b.isAdded()) {
                this.f8351c.f8348b.m10163a((int) R.string.sync_success);
            }
            this.f8351c.f8348b.m10167b();
        } else if (this.f8351c.f8348b.isAdded()) {
            this.f8351c.f8348b.m10163a((int) R.string.sync_fail);
        }
    }
}
