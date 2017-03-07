package com.baidu.frontia.module.deeplink;

import android.util.Log;
import com.baidu.android.p062a.p063a.C0164e;

/* renamed from: com.baidu.frontia.module.deeplink.h */
class C0424h implements Runnable {
    final /* synthetic */ C0423g f3724a;

    C0424h(C0423g c0423g) {
        this.f3724a = c0423g;
    }

    public void run() {
        this.f3724a.f3722i = new C0164e(new C0425i(this.f3724a.f3723j));
        while (!this.f3724a.f3722i.m4172a(this.f3724a.f3718d) && this.f3724a.f3721g < 255000) {
            try {
                this.f3724a.m5436f();
                this.f3724a.f3721g = (2 * this.f3724a.f3721g) + 1000;
                Thread.sleep(this.f3724a.f3721g);
            } catch (InterruptedException e) {
                Log.e("LocalServer", "error " + e.getMessage());
            }
        }
        this.f3724a.f3721g = 0;
    }
}
