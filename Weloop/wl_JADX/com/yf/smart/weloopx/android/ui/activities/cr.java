package com.yf.smart.weloopx.android.ui.activities;

import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class cr implements Runnable {
    final /* synthetic */ DfuActivity f7880a;

    cr(DfuActivity dfuActivity) {
        this.f7880a = dfuActivity;
    }

    public void run() {
        this.f7880a.f7412k.setVisibility(8);
        this.f7880a.f7403b.setVisibility(8);
        this.f7880a.f7410i.setVisibility(0);
        this.f7880a.f7411j.setVisibility(8);
        this.f7880a.f7409h.setVisibility(8);
        this.f7880a.f7404c.setVisibility(0);
        this.f7880a.f7404c.setText(R.string.checking_version);
        this.f7880a.f7405d.setVisibility(8);
        this.f7880a.f7408g.setEnabled(false);
        this.f7880a.f7407f.setVisibility(8);
    }
}
