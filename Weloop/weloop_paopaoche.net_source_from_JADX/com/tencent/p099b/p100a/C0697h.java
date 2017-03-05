package com.tencent.p099b.p100a;

import com.tencent.p099b.p100a.p102b.C0683l;
import java.util.TimerTask;

/* renamed from: com.tencent.b.a.h */
final class C0697h extends TimerTask {
    final /* synthetic */ C0696g f5243a;

    C0697h(C0696g c0696g) {
        this.f5243a = c0696g;
    }

    public final void run() {
        if (C0708t.m7062b()) {
            C0683l.m6973c().m6935a((Object) "TimerTask run");
        }
        C0710v.m7104d(this.f5243a.f5242c);
        cancel();
        this.f5243a.m7032a();
    }
}
