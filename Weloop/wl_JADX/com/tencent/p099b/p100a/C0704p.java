package com.tencent.p099b.p100a;

import android.content.Context;
import com.tencent.p099b.p100a.p101a.C0665c;
import com.tencent.p099b.p100a.p101a.C0667f;

/* renamed from: com.tencent.b.a.p */
final class C0704p implements Runnable {
    final /* synthetic */ Context f5260a;
    final /* synthetic */ Throwable f5261b;

    C0704p(Context context, Throwable th) {
        this.f5260a = context;
        this.f5261b = th;
    }

    public final void run() {
        try {
            if (C0708t.m7065c()) {
                new ae(new C0665c(this.f5260a, C0710v.m7089a(this.f5260a, false, null), this.f5261b, C0667f.f5093a)).m6892a();
            }
        } catch (Throwable th) {
            C0710v.f5341q.m6941e("reportSdkSelfException error: " + th);
        }
    }
}
