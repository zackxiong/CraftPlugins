package com.yf.smart.weloopx.android.ui.activities;

/* compiled from: ProGuard */
class gj implements Runnable {
    final /* synthetic */ TipActivity f8065a;

    gj(TipActivity tipActivity) {
        this.f8065a = tipActivity;
    }

    public void run() {
        this.f8065a.stopService(this.f8065a.f7669d);
        this.f8065a.finish();
    }
}
