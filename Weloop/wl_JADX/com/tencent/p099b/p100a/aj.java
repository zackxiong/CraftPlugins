package com.tencent.p099b.p100a;

import java.util.List;

/* renamed from: com.tencent.b.a.aj */
final class aj implements Runnable {
    final /* synthetic */ List f5128a;
    final /* synthetic */ int f5129b;
    final /* synthetic */ boolean f5130c;
    final /* synthetic */ boolean f5131d;
    final /* synthetic */ ai f5132e;

    aj(ai aiVar, List list, boolean z) {
        this.f5132e = aiVar;
        this.f5128a = list;
        this.f5129b = 1;
        this.f5130c = z;
        this.f5131d = true;
    }

    public final void run() {
        this.f5132e.m6910a(this.f5128a, this.f5129b, this.f5130c);
        if (this.f5131d) {
            this.f5128a.clear();
        }
    }
}
