package com.yf.lib.ui.views.wheel;

/* renamed from: com.yf.lib.ui.views.wheel.h */
class ProGuard implements ProGuard {
    final /* synthetic */ WheelView f6881a;

    ProGuard(WheelView wheelView) {
        this.f6881a = wheelView;
    }

    public void m8763a() {
        this.f6881a.f6852p = true;
        this.f6881a.m8714a();
    }

    public void m8764a(int i) {
        this.f6881a.m8701b(i);
        int height = this.f6881a.getHeight();
        if (this.f6881a.f6853q > height) {
            this.f6881a.f6853q = height;
            this.f6881a.f6851o.m8758a();
        } else if (this.f6881a.f6853q < (-height)) {
            this.f6881a.f6853q = -height;
            this.f6881a.f6851o.m8758a();
        }
    }

    public void m8765b() {
        if (this.f6881a.f6852p) {
            this.f6881a.m8720b();
            this.f6881a.f6852p = false;
        }
        this.f6881a.f6853q = 0;
        this.f6881a.invalidate();
    }

    public void m8766c() {
        if (Math.abs(this.f6881a.f6853q) > 1) {
            this.f6881a.f6851o.m8759a(this.f6881a.f6853q, 0);
        }
    }
}
