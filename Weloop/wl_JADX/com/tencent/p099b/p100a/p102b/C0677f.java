package com.tencent.p099b.p100a.p102b;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: com.tencent.b.a.b.f */
public final class C0677f {
    ExecutorService f5182a;

    public C0677f() {
        this.f5182a = null;
        this.f5182a = Executors.newSingleThreadExecutor();
    }

    public final void m6952a(Runnable runnable) {
        this.f5182a.execute(runnable);
    }
}
