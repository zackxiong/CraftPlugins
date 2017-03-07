package com.tencent.p099b.p100a;

import android.content.Context;

/* renamed from: com.tencent.b.a.ab */
final class ab implements Runnable {
    final /* synthetic */ Context f5100a;
    final /* synthetic */ C0711w f5101b;

    ab(Context context) {
        this.f5100a = context;
        this.f5101b = null;
    }

    public final void run() {
        try {
            C0710v.m7089a(this.f5100a, false, this.f5101b);
        } catch (Throwable th) {
            C0710v.f5341q.m6938b(th);
        }
    }
}
