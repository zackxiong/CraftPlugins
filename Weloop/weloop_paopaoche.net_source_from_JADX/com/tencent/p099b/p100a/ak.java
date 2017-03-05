package com.tencent.p099b.p100a;

import java.util.List;

/* renamed from: com.tencent.b.a.ak */
final class ak implements Runnable {
    final /* synthetic */ List f5133a;
    final /* synthetic */ boolean f5134b;
    final /* synthetic */ boolean f5135c;
    final /* synthetic */ ai f5136d;

    ak(ai aiVar, List list, boolean z) {
        this.f5136d = aiVar;
        this.f5133a = list;
        this.f5134b = z;
        this.f5135c = true;
    }

    public final void run() {
        this.f5136d.m6917c(this.f5133a, this.f5134b);
        if (this.f5135c) {
            this.f5133a.clear();
        }
    }
}
