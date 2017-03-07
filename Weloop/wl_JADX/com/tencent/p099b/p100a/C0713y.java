package com.tencent.p099b.p100a;

import android.content.Context;

/* renamed from: com.tencent.b.a.y */
final class C0713y implements Runnable {
    final /* synthetic */ Context f5359a;
    final /* synthetic */ int f5360b;

    C0713y(Context context) {
        this.f5359a = context;
        this.f5360b = -1;
    }

    public final void run() {
        try {
            C0710v.m7102c(this.f5359a);
            ai.m6901a(this.f5359a).m6926a(this.f5360b);
        } catch (Throwable th) {
            C0710v.f5341q.m6938b(th);
            C0710v.m7096a(this.f5359a, th);
        }
    }
}
