package com.yf.smart.weloopx.android.ui.activities;

import android.view.View;

/* compiled from: ProGuard */
class bw implements Runnable {
    final /* synthetic */ View f7851a;
    final /* synthetic */ ProGuard f7852b;

    bw(ProGuard proGuard, View view) {
        this.f7852b = proGuard;
        this.f7851a = view;
    }

    public void run() {
        this.f7852b.f8141Q.setVisibility(0);
        this.f7852b.f8144T.setVisibility(8);
        this.f7852b.f8142R.setVisibility(8);
        this.f7852b.f8143S.setVisibility(8);
        if (this.f7852b.m10111s()) {
            this.f7852b.f8144T.setVisibility(8);
            this.f7852b.f8142R.setVisibility(0);
            this.f7852b.m10028c(this.f7851a);
            return;
        }
        this.f7852b.f8144T.setVisibility(0);
        this.f7852b.f8142R.setVisibility(8);
    }
}
