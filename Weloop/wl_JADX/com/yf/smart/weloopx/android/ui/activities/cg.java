package com.yf.smart.weloopx.android.ui.activities;

/* compiled from: ProGuard */
class cg implements Runnable {
    final /* synthetic */ DfuActivity f7867a;

    cg(DfuActivity dfuActivity) {
        this.f7867a = dfuActivity;
    }

    public void run() {
        this.f7867a.f7409h.setProgress(this.f7867a.f7417p);
        this.f7867a.f7406e.setText("" + ((this.f7867a.f7417p * 100) / 360));
    }
}
