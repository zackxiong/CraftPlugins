package com.tencent.p099b.p100a;

import android.content.Context;
import com.tencent.p099b.p100a.p102b.C0683l;

/* renamed from: com.tencent.b.a.o */
final class C0703o implements Runnable {
    final /* synthetic */ Context f5259a;

    C0703o(Context context) {
        this.f5259a = context;
    }

    public final void run() {
        C0712x.m7120a(C0710v.f5344t).m7132h();
        C0683l.m6961a(this.f5259a, true);
        ai.m6901a(this.f5259a);
        C0700l.m7035b(this.f5259a);
        C0710v.f5342r = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new ac());
        if (C0708t.m7047a() == C0709u.APP_LAUNCH) {
            C0710v.m7100b(this.f5259a);
        }
        if (C0708t.m7062b()) {
            C0710v.f5341q.m6943g("Init MTA StatService success.");
        }
    }
}
