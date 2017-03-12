package com.yf.gattlib.p108a;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import com.roscopeco.ormdroid.ORMDroidApplication;

/* renamed from: com.yf.gattlib.a.b */
public final class ProGuard {
    private static final String f5687a;
    private Application f5688b;
    private com.yf.gattlib.p121f.ProGuard f5689c;
    private com.yf.gattlib.server.android.ProGuard f5690d;
    private com.yf.gattlib.p123h.ProGuard f5691e;
    private com.yf.gattlib.p130o.ProGuard f5692f;
    private com.yf.gattlib.p124i.ProGuard f5693g;
    private com.yf.gattlib.p122g.ProGuard f5694h;
    private Handler f5695i;
    private com.yf.gattlib.p110c.ProGuard f5696j;
    private com.yf.gattlib.client.p111a.p112a.ProGuard f5697k;
    private com.yf.gattlib.p110c.ProGuard f5698l;

    /* renamed from: com.yf.gattlib.a.b.a */
    private static class ProGuard {
        private static final ProGuard f5686a;

        static {
            f5686a = new ProGuard();
        }
    }

    static {
        f5687a = ProGuard.class.getSimpleName();
    }

    public static final ProGuard m7368a() {
        return ProGuard.f5686a;
    }

    public void m7369a(Application application) {
        this.f5688b = application;
        this.f5695i = new Handler();
        this.f5698l = new com.yf.gattlib.p110c.ProGuard(application);
        ProGuard.m7347a().m7351a((Context) application);
        ORMDroidApplication.initialize(application);
        com.yf.gattlib.notification.ProGuard.m8214a();
    }

    public void m7370a(com.yf.gattlib.p110c.ProGuard proGuard) {
        com.yf.gattlib.p117p.ProGuard.m8298b(f5687a, "init gatt app");
        this.f5696j = proGuard;
        proGuard.m7405a(this.f5698l);
        this.f5689c = new com.yf.gattlib.p121f.ProGuard(this);
        this.f5690d = new com.yf.gattlib.server.android.ProGuard();
        this.f5691e = new com.yf.gattlib.p123h.ProGuard();
        this.f5693g = new com.yf.gattlib.p124i.ProGuard();
        this.f5694h = new com.yf.gattlib.p122g.ProGuard();
        this.f5692f = new com.yf.gattlib.p130o.ProGuard();
        this.f5697k = new com.yf.gattlib.client.p111a.p112a.ProGuard();
    }

    public String m7372b() {
        return m7387q().getString("anti disturb begin", "");
    }

    public String m7373c() {
        return m7387q().getString("anti disturb end", "");
    }

    public Application m7374d() {
        return this.f5688b;
    }

    public ProGuard m7375e() {
        return ProGuard.m7347a();
    }

    public com.yf.gattlib.p121f.ProGuard m7376f() {
        return this.f5689c;
    }

    public com.yf.gattlib.server.android.ProGuard m7377g() {
        return this.f5690d;
    }

    public com.yf.gattlib.p123h.ProGuard m7378h() {
        return this.f5691e;
    }

    public com.yf.gattlib.p124i.ProGuard m7379i() {
        return this.f5693g;
    }

    public com.yf.gattlib.p122g.ProGuard m7380j() {
        return this.f5694h;
    }

    public Handler m7381k() {
        return this.f5695i;
    }

    public void m7371a(Runnable runnable, long j) {
        this.f5695i.postDelayed(runnable, j);
    }

    public com.yf.gattlib.p110c.ProGuard m7382l() {
        return this.f5696j;
    }

    public boolean m7383m() {
        if (!m7384n()) {
            return false;
        }
        this.f5695i.postDelayed(new ProGuard(this), 100);
        return true;
    }

    public boolean m7384n() {
        return com.yf.gattlib.p110c.ProGuard.m7464a() && !com.yf.gattlib.p110c.ProGuard.m7465b();
    }

    public com.yf.gattlib.p130o.ProGuard m7385o() {
        return this.f5692f;
    }

    public com.yf.gattlib.client.p111a.p112a.ProGuard m7386p() {
        return this.f5697k;
    }

    public com.yf.gattlib.p110c.ProGuard m7387q() {
        return this.f5698l;
    }
}
