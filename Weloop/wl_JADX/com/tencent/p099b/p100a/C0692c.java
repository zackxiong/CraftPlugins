package com.tencent.p099b.p100a;

/* renamed from: com.tencent.b.a.c */
final class C0692c implements Runnable {
    final /* synthetic */ int f5231a;
    final /* synthetic */ ai f5232b;

    C0692c(ai aiVar, int i) {
        this.f5232b = aiVar;
        this.f5231a = i;
    }

    public final void run() {
        ai.m6905a(this.f5232b, this.f5231a, true);
        ai.m6905a(this.f5232b, this.f5231a, false);
    }
}
