package com.yf.smart.weloopx.android.ui.p139c;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.cr */
class cr implements Runnable {
    final /* synthetic */ cq f8384a;

    cr(cq cqVar) {
        this.f8384a = cqVar;
    }

    public void run() {
        this.f8384a.f8383a.f8356a.setActionUp(true);
        this.f8384a.f8383a.f8356a.setSelectionInt(this.f8384a.f8383a.f8356a.getAdapter().getCount() - 2);
    }
}
