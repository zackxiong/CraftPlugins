package com.yf.gattlib.p123h;

import android.content.Intent;

/* renamed from: com.yf.gattlib.h.j */
class ProGuard implements Runnable {
    final /* synthetic */ Intent f6247a;
    final /* synthetic */ ProGuard f6248b;

    ProGuard(ProGuard proGuard, Intent intent) {
        this.f6248b = proGuard;
        this.f6247a = intent;
    }

    public void run() {
        try {
            ProGuard b = this.f6248b.f6246a.f6244g.m8113b(this.f6247a);
            com.yf.gattlib.p117p.ProGuard.m8292a("2. MusicMonitor content = " + b.toString());
            this.f6248b.f6246a.m8116a(b);
            this.f6248b.f6246a.f6243f = null;
        } catch (Exception e) {
            com.yf.gattlib.p117p.ProGuard.m8293a(ProGuard.f6237a, "extract error: " + e.getMessage());
            this.f6248b.f6246a.f6243f = null;
        }
    }
}
