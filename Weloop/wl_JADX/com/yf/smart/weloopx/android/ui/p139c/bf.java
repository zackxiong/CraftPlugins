package com.yf.smart.weloopx.android.ui.p139c;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.bf */
class bf implements Runnable {
    final /* synthetic */ int f8263a;
    final /* synthetic */ int f8264b;
    final /* synthetic */ ba f8265c;

    bf(ba baVar, int i, int i2) {
        this.f8265c = baVar;
        this.f8263a = i;
        this.f8264b = i2;
    }

    public void run() {
        this.f8265c.f8244l.setMax(this.f8263a);
        if (this.f8265c.f8244l.getProgress() == this.f8263a) {
            this.f8265c.f8244l.setVisibility(8);
            this.f8265c.f8244l.setProgress(0);
            return;
        }
        this.f8265c.f8244l.setVisibility(0);
        this.f8265c.f8244l.setProgress(this.f8264b);
    }
}
