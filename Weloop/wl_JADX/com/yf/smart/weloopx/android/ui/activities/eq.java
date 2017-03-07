package com.yf.smart.weloopx.android.ui.activities;

import com.yf.smart.weloopx.android.ui.ProGuard;

/* compiled from: ProGuard */
class eq implements Runnable {
    final /* synthetic */ el f8009a;

    eq(el elVar) {
        this.f8009a = elVar;
    }

    public void run() {
        synchronized (this.f8009a) {
            if (this.f8009a.f7956A != null) {
                ProGuard.m10543a(this.f8009a.f7956A);
                this.f8009a.f7956A = null;
            }
        }
        if (this.f8009a.f8003z != null) {
            this.f8009a.f8003z.m6738j();
        }
    }
}
