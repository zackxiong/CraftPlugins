package com.yf.smart.weloopx.android.ui.activities;

/* compiled from: ProGuard */
class cm implements Runnable {
    final /* synthetic */ int f7874a;
    final /* synthetic */ DfuActivity f7875b;

    cm(DfuActivity dfuActivity, int i) {
        this.f7875b = dfuActivity;
        this.f7874a = i;
    }

    public void run() {
        this.f7875b.f7403b.setText(this.f7875b.m9327c(this.f7874a));
    }
}
