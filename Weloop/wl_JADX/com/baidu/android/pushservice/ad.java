package com.baidu.android.pushservice;

import android.content.Context;
import android.text.TextUtils;

public final class ad {
    private static ad f2952a;
    private String f2953b;
    private String f2954c;
    private Thread f2955d;
    private boolean f2956e;

    private ad() {
        this.f2953b = null;
        this.f2954c = null;
        this.f2955d = null;
        this.f2954c = PushSettings.m4214b();
        this.f2953b = PushSettings.m4204a();
        this.f2956e = false;
    }

    public static synchronized ad m4377a() {
        ad adVar;
        synchronized (ad.class) {
            if (f2952a == null) {
                f2952a = new ad();
            }
            adVar = f2952a;
        }
        return adVar;
    }

    public void m4378a(Context context, boolean z) {
        if (this.f2955d == null || !this.f2955d.isAlive()) {
            Runnable adVar = new com.baidu.android.pushservice.p070d.ad(context);
            if (!z) {
                adVar.m4525a(0);
            }
            this.f2955d = new Thread(adVar);
            this.f2955d.start();
        }
    }

    public synchronized void m4379a(String str, String str2) {
        this.f2953b = str;
        this.f2954c = str2;
        PushSettings.m4210a(str);
        PushSettings.m4221c(str2);
        C0383z.m5301d();
    }

    public void m4380a(boolean z) {
        this.f2956e = z;
    }

    public boolean m4381b() {
        return this.f2956e;
    }

    public String m4382c() {
        return this.f2953b;
    }

    public String m4383d() {
        return this.f2954c;
    }

    public boolean m4384e() {
        return (TextUtils.isEmpty(this.f2953b) || TextUtils.isEmpty(this.f2954c)) ? false : true;
    }
}
