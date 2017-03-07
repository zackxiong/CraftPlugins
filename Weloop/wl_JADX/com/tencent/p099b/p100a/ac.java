package com.tencent.p099b.p100a;

import com.tencent.p099b.p100a.p101a.C0665c;
import java.lang.Thread.UncaughtExceptionHandler;

/* renamed from: com.tencent.b.a.ac */
final class ac implements UncaughtExceptionHandler {
    ac() {
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        if (C0708t.m7065c() && C0710v.f5344t != null) {
            if (C0708t.m7079n()) {
                ai.m6901a(C0710v.f5344t).m6927a(new C0665c(C0710v.f5344t, C0710v.m7089a(C0710v.f5344t, false, null), th, thread), null, false, true);
                C0710v.f5341q.m6942f("MTA has caught the following uncaught exception:");
                C0710v.f5341q.m6936a(th);
            }
            C0710v.m7102c(C0710v.f5344t);
            if (C0710v.f5342r != null) {
                C0710v.f5341q.m6943g("Call the original uncaught exception handler.");
                if (!(C0710v.f5342r instanceof ac)) {
                    C0710v.f5342r.uncaughtException(thread, th);
                }
            }
        }
    }
}
