package com.yf.smart.weloopx.android.ui.activities;

import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class cs implements Runnable {
    final /* synthetic */ DfuActivity f7881a;

    cs(DfuActivity dfuActivity) {
        this.f7881a = dfuActivity;
    }

    public void run() {
        this.f7881a.f7403b.setVisibility(8);
        this.f7881a.f7410i.setVisibility(8);
        this.f7881a.f7411j.setVisibility(8);
        this.f7881a.f7409h.setVisibility(0);
        this.f7881a.f7408g.setEnabled(true);
        this.f7881a.f7404c.setVisibility(0);
        this.f7881a.f7404c.setText(R.string.found_new_version);
        this.f7881a.f7405d.setVisibility(0);
        this.f7881a.f7405d.setText(this.f7881a.f7419r.m2787a());
        this.f7881a.f7407f.setVisibility(8);
    }
}
