package com.baidu.android.pushservice.p072f;

/* renamed from: com.baidu.android.pushservice.f.o */
class C0280o implements Runnable {
    final /* synthetic */ boolean f3250a;
    final /* synthetic */ C0274n f3251b;

    C0280o(C0274n c0274n, boolean z) {
        this.f3251b = c0274n;
        this.f3250a = z;
    }

    public void run() {
        this.f3251b.m4889c(this.f3250a);
        this.f3251b.f3237c = false;
    }
}
