package com.baidu.android.pushservice;

import com.baidu.android.pushservice.jni.PushSocket;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;

/* renamed from: com.baidu.android.pushservice.k */
class C0296k implements Runnable {
    final /* synthetic */ C0293h f3330a;

    C0296k(C0293h c0293h) {
        this.f3330a = c0293h;
    }

    public void run() {
        if (C0192a.m4341b()) {
            C0385a.m5308a("PushConnection", " -- Send Timeout --");
        }
        if (this.f3330a.f3310o) {
            this.f3330a.f3310o = false;
            this.f3330a.m4983b(false);
        }
        this.f3330a.m4993f();
        if (C0192a.f2943d > 0) {
            C0374f.m5189a("PushConnection Send Timeout " + this.f3330a.f3308l.getPackageName() + " lastSocketError " + PushSocket.getLastSocketError() + " socketfd " + C0293h.f3295a + System.currentTimeMillis(), this.f3330a.f3308l.getApplicationContext());
        }
    }
}
