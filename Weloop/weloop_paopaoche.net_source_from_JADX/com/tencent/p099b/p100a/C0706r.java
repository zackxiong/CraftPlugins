package com.tencent.p099b.p100a;

import android.content.Context;
import com.tencent.p099b.p100a.p101a.C0662d;
import com.tencent.p099b.p100a.p101a.C0663a;
import com.tencent.p099b.p100a.p101a.C0664b;

/* renamed from: com.tencent.b.a.r */
final class C0706r implements Runnable {
    final /* synthetic */ Context f5262a;
    final /* synthetic */ C0711w f5263b;
    final /* synthetic */ C0664b f5264c;

    C0706r(Context context, C0664b c0664b) {
        this.f5262a = context;
        this.f5263b = null;
        this.f5264c = c0664b;
    }

    public final void run() {
        try {
            C0662d c0663a = new C0663a(this.f5262a, C0710v.m7089a(this.f5262a, false, this.f5263b), this.f5264c.f5075a, this.f5263b);
            c0663a.m6871a().f5077c = this.f5264c.f5077c;
            new ae(c0663a).m6892a();
        } catch (Throwable th) {
            C0710v.f5341q.m6938b(th);
            C0710v.m7096a(this.f5262a, th);
        }
    }
}
