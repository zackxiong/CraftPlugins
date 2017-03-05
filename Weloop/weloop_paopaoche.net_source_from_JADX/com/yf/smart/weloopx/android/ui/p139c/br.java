package com.yf.smart.weloopx.android.ui.p139c;

import com.yf.smart.weloopx.android.ui.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.br */
class br implements Runnable {
    final /* synthetic */ bl f8303a;

    br(bl blVar) {
        this.f8303a = blVar;
    }

    public void run() {
        if (!this.f8303a.f8290l.isAdded() || !this.f8303a.f8290l.isVisible() || !this.f8303a.f8290l.isRemoving()) {
            ProGuard.m10544a(this.f8303a.f8290l, this.f8303a.getFragmentManager(), bl.f8281c);
        }
    }
}
