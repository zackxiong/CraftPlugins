package com.yf.smart.weloopx.view;

/* renamed from: com.yf.smart.weloopx.view.e */
class ProGuard implements Runnable {
    final /* synthetic */ ProGuard f9120a;

    ProGuard(ProGuard proGuard) {
        this.f9120a = proGuard;
    }

    public void run() {
        boolean z;
        ProGuard proGuard = this.f9120a.f9119e;
        if (this.f9120a.f9118d > 1) {
            z = true;
        } else {
            z = false;
        }
        proGuard.f9103a = z;
        if (this.f9120a.f9118d > 0) {
            for (int i = 0; i < this.f9120a.f9118d; i++) {
                this.f9120a.m11433a(this.f9120a.f9117c[i]);
            }
        } else {
            this.f9120a.m11432a();
        }
        this.f9120a.f9119e.f9109g.invalidate();
        if (this.f9120a.f9119e.f9109g.f9062a.size() == 1) {
            this.f9120a.f9119e.f9105c = (ProGuard) this.f9120a.f9119e.f9109g.f9062a.get(0);
            this.f9120a.f9119e.f9105c.m11444a(true);
        }
        if (this.f9120a.f9118d <= 1) {
        }
    }
}
