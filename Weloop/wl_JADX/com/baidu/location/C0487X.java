package com.baidu.location;

import android.os.Handler;
import java.io.File;
import java.util.ArrayList;
import java.util.Locale;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.baidu.location.X */
class C0487X extends ac {
    static C0487X ac = null;
    public static final int dk = 1;
    boolean f3965Y;
    long f3966Z;
    ArrayList f3967a;
    long aa;
    int ab;
    private Handler ae;
    private C0486a af;
    private int ag;

    /* renamed from: com.baidu.location.X.a */
    class C0486a extends ac {
        int f3962Y;
        boolean f3963Z;
        String f3964a;
        final /* synthetic */ C0487X aa;

        C0486a(C0487X c0487x) {
            this.aa = c0487x;
            this.f3964a = null;
            this.f3962Y = 0;
            this.f3963Z = false;
        }

        void m5765X() {
            this.c5 = this.f3964a;
            this.cY = C0465K.m5631do() + "?&qt=state&trtm=" + System.currentTimeMillis();
            this.c9 = 2;
        }

        public boolean af() {
            if (this.f3963Z) {
                return true;
            }
            this.f3964a = C0533o.bI().bC();
            if (this.f3964a == null) {
                return false;
            }
            this.f3963Z = true;
            m5572V();
            return true;
        }

        void m5766do(boolean z) {
            if (z) {
                try {
                    new File(this.f3964a).delete();
                    this.f3962Y = 0;
                } catch (Exception e) {
                }
            } else {
                this.f3962Y += 2;
            }
            this.f3964a = null;
            this.f3963Z = false;
            this.aa.ae.sendEmptyMessageDelayed(C0487X.dk, 1500);
        }
    }

    static {
        ac = null;
    }

    public C0487X() {
        this.f3967a = null;
        this.f3965Y = false;
        this.f3966Z = 0;
        this.aa = 0;
        this.ab = 0;
        this.ae = null;
        this.af = null;
        this.ag = 0;
        this.c0 = new ArrayList();
        this.af = new C0486a(this);
        this.c9 = 2;
        this.ae = new C0488Y(this);
    }

    public static C0487X ah() {
        if (ac == null) {
            ac = new C0487X();
        }
        return ac;
    }

    private void m5769d() {
        if (ad >= 6 || this.ag >= 10 || !C0512d.m5947do().m5951int()) {
            this.ag = 0;
            return;
        }
        this.ag += dk;
        if (!ag()) {
            this.ag = 0;
        }
    }

    void m5770X() {
        this.c0.add(new BasicNameValuePair("qt", "cltr"));
        try {
            this.c0.add(new BasicNameValuePair("info", Jni.m5622k(C0518i.cY().cZ())));
        } catch (Exception e) {
        }
        for (int i = 0; i < this.f3967a.size(); i += dk) {
            this.c0.add(new BasicNameValuePair("cltr[" + i + "]", (String) this.f3967a.get(i)));
        }
        Object[] objArr = new Object[dk];
        objArr[0] = Long.valueOf(System.currentTimeMillis());
        this.c0.add(new BasicNameValuePair("trtm", String.format(Locale.CHINA, "%d", objArr)));
    }

    public boolean ag() {
        if (!C0453D.cq()) {
            return false;
        }
        if (this.af.f3962Y <= 2) {
            return !this.af.af() ? m5773for(true) : true;
        } else {
            C0486a c0486a = this.af;
            c0486a.f3962Y--;
            return m5773for(true);
        }
    }

    public void m5771do(int i) {
        this.ae.sendEmptyMessageDelayed(i, 500);
    }

    void m5772do(boolean z) {
        if (!z || this.cZ == null) {
            this.f3966Z = 0;
        } else if (this.f3967a != null) {
            this.f3967a.clear();
        }
        if (this.c0 != null) {
            this.c0.clear();
        }
        this.f3965Y = false;
        this.ae.sendEmptyMessageDelayed(dk, 1500);
    }

    public boolean m5773for(boolean z) {
        if (this.f3965Y) {
            return true;
        }
        if (System.currentTimeMillis() - this.f3966Z < 7200000) {
            return false;
        }
        if (System.currentTimeMillis() - this.aa > 3600000) {
            this.ab = 0;
        }
        if (this.ab > 5 && z) {
            return false;
        }
        if (!C0453D.cq()) {
            return false;
        }
        if (!C0512d.m5947do().m5951int() && z) {
            return false;
        }
        if (this.f3967a == null || this.f3967a.size() < dk) {
            String str = C0465K.m5629case();
            if (str != null) {
                for (int i = 0; i < 2; i += dk) {
                    String m = Jni.m5624m(str);
                    if (m == null) {
                        this.f3966Z = System.currentTimeMillis();
                        break;
                    }
                    if (this.f3967a == null) {
                        this.f3967a = new ArrayList();
                    }
                    this.f3967a.add(m);
                }
            } else {
                return false;
            }
        }
        if (this.f3967a == null || this.f3967a.size() <= 0) {
            return false;
        }
        this.ab += dk;
        this.aa = System.currentTimeMillis();
        this.f3965Y = true;
        m5570R();
        return true;
    }
}
