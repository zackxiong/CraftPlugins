package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.p117p.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class cp implements Runnable {
    final /* synthetic */ DfuActivity f7878a;

    cp(DfuActivity dfuActivity) {
        this.f7878a = dfuActivity;
    }

    public void run() {
        this.f7878a.f7403b.setVisibility(8);
        this.f7878a.f7410i.setVisibility(8);
        this.f7878a.f7411j.setVisibility(0);
        this.f7878a.f7409h.setVisibility(8);
        this.f7878a.f7408g.setEnabled(false);
        this.f7878a.f7412k.setVisibility(8);
        this.f7878a.f7404c.setText(R.string.is_latest_version);
        this.f7878a.f7404c.setVisibility(0);
        this.f7878a.f7405d.setVisibility(8);
        this.f7878a.f7402a.setText(this.f7878a.f7419r.m2791b());
        this.f7878a.f7407f.setVisibility(8);
        this.f7878a.f7411j.invalidate();
        ProGuard.m8293a("DfuActivity", "toBeNewVersionView");
    }
}
