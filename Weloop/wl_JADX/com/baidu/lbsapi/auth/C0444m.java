package com.baidu.lbsapi.auth;

import android.os.Handler;
import android.os.Looper;

/* renamed from: com.baidu.lbsapi.auth.m */
class C0444m extends Thread {
    Handler f3761a;
    private Object f3762b;
    private boolean f3763c;
    private boolean f3764d;

    C0444m() {
        this.f3761a = null;
        this.f3762b = new Object();
        this.f3763c = false;
        this.f3764d = true;
    }

    C0444m(String str) {
        super(str);
        this.f3761a = null;
        this.f3762b = new Object();
        this.f3763c = false;
        this.f3764d = true;
    }

    public void m5487a() {
        if (C0427a.f3727a) {
            C0427a.m5446a("Looper thread quit()");
        }
        this.f3761a.getLooper().quit();
    }

    public void m5488b() {
        synchronized (this.f3762b) {
            try {
                if (!this.f3763c) {
                    this.f3762b.wait();
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public void m5489c() {
        synchronized (this.f3762b) {
            this.f3763c = true;
            this.f3762b.notifyAll();
        }
    }

    public void run() {
        Looper.prepare();
        this.f3761a = new Handler();
        if (C0427a.f3727a) {
            C0427a.m5446a("new Handler() finish!!");
        }
        Looper.loop();
        if (C0427a.f3727a) {
            C0427a.m5446a("LooperThread run() thread id:" + String.valueOf(Thread.currentThread().getId()));
        }
    }
}
