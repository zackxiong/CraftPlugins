package com.baidu.android.pushservice;

import android.text.TextUtils;
import com.baidu.android.pushservice.C0293h.C0291a;
import com.baidu.android.pushservice.C0293h.C0292b;
import com.baidu.android.pushservice.jni.PushSocket;
import com.baidu.android.pushservice.message.C0320f;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.location.C0452e;

/* renamed from: com.baidu.android.pushservice.i */
class C0294i implements Runnable {
    final /* synthetic */ C0293h f3322a;

    C0294i(C0293h c0293h) {
        this.f3322a = c0293h;
    }

    public void run() {
        C0293h.f3295a = PushSocket.createSocket(this.f3322a.f3311p, this.f3322a.f3312q);
        if (C0293h.f3295a == -1 || C0293h.f3295a == -2) {
            int lastSocketError = PushSocket.getLastSocketError();
            C0385a.m5313d("PushConnection", "Create socket err, errno: " + lastSocketError + "socketfd: " + C0293h.f3295a);
            if (C0383z.m5296b().equals(this.f3322a.f3311p)) {
                this.f3322a.m4979a("030301", lastSocketError);
            } else {
                this.f3322a.m4979a("030303", (int) PushConstants.ERROR_SERVICE_NOT_AVAILABLE);
            }
            if (C0293h.f3295a == -2) {
                String a = C0383z.m5292a(this.f3322a.f3308l, this.f3322a.f3309m);
                this.f3322a.f3309m = false;
                if (!TextUtils.isEmpty(a)) {
                    this.f3322a.f3311p = a;
                }
            }
            if (C0293h.f3295a == -1 && lastSocketError == C0452e.f3847m) {
                this.f3322a.f3312q = C0383z.f3614a;
            }
            C0293h.f3296e = Boolean.valueOf(false);
            this.f3322a.m4993f();
            if (C0192a.f2943d > 0) {
                C0374f.m5189a("PushConnection Create socket err " + this.f3322a.f3308l.getPackageName() + " lastSocketError " + lastSocketError + " socketfd " + C0293h.f3295a + System.currentTimeMillis(), this.f3322a.f3308l.getApplicationContext());
                return;
            }
            return;
        }
        if (C0192a.m4341b()) {
            C0385a.m5311b("PushConnection", "create Socket ok with " + (PushSocket.f3324a ? "c socket" : "java socket"));
            C0374f.m5201b("create Socket ok socketfd" + C0293h.f3295a);
        }
        this.f3322a.f3300c = new C0320f(this.f3322a.f3308l.getApplicationContext());
        this.f3322a.f3301d = true;
        this.f3322a.m5006a(true);
        if (this.f3322a.f3305i != null) {
            this.f3322a.f3305i.interrupt();
        }
        if (this.f3322a.f3304h != null) {
            this.f3322a.f3304h.interrupt();
        }
        this.f3322a.f3302f = false;
        this.f3322a.f3305i = new C0291a(this.f3322a);
        this.f3322a.f3305i.start();
        this.f3322a.f3304h = new C0292b(this.f3322a);
        this.f3322a.f3304h.start();
        this.f3322a.f3300c.m5052a(C0293h.f3295a);
        if (!C0383z.m5296b().equals(this.f3322a.f3311p)) {
            this.f3322a.m4979a("030302", 0);
        }
        C0293h.f3296e = Boolean.valueOf(false);
        this.f3322a.f3309m = true;
        this.f3322a.f3311p = C0383z.m5296b();
        C0383z.m5294a(this.f3322a.f3308l);
        PushSDK.getInstance(this.f3322a.f3308l).setAlarmTimeout(this.f3322a.f3316u[this.f3322a.f3319x]);
    }
}
