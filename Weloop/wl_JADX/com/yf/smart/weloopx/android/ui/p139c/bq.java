package com.yf.smart.weloopx.android.ui.p139c;

import com.yf.smart.weloopx.android.ui.p144a.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.bq */
class bq implements Runnable {
    final /* synthetic */ int f8301a;
    final /* synthetic */ bl f8302b;

    bq(bl blVar, int i) {
        this.f8302b = blVar;
        this.f8301a = i;
    }

    public void run() {
        this.f8302b.f8283e.setAdapter(new ProGuard(this.f8302b.getActivity(), this.f8302b.f8289k));
        this.f8302b.f8283e.setSelection(this.f8301a);
        this.f8302b.m10299g();
        if (this.f8302b.f8289k == null || this.f8302b.f8289k.size() <= 0) {
            this.f8302b.f8286h.setVisibility(0);
            this.f8302b.f8282d.setVisibility(8);
            return;
        }
        this.f8302b.f8286h.setVisibility(8);
        this.f8302b.f8282d.setVisibility(0);
    }
}
