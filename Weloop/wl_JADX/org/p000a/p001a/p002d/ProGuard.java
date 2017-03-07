package org.p000a.p001a.p002d;

import java.io.Serializable;
import java.util.Hashtable;

/* renamed from: org.a.a.d.j */
public class ProGuard implements Serializable {
    static final Integer[] f9431e;
    static final Class[] f9432f;
    static final Hashtable f9433g;
    private static long f9434h;
    public final transient String f9435a;
    public final String f9436b;
    public transient org.p000a.p001a.ProGuard f9437c;
    public final long f9438d;
    private transient org.p000a.p001a.ProGuard f9439i;
    private String f9440j;
    private Hashtable f9441k;
    private boolean f9442l;
    private boolean f9443m;
    private transient Object f9444n;
    private String f9445o;
    private String f9446p;
    private ProGuard f9447q;
    private ProGuard f9448r;

    static {
        f9434h = System.currentTimeMillis();
        f9431e = new Integer[1];
        f9432f = new Class[]{Integer.TYPE};
        f9433g = new Hashtable(3);
    }

    public ProGuard(String str, org.p000a.p001a.ProGuard proGuard, org.p000a.p001a.ProGuard proGuard2, Object obj, Throwable th) {
        this.f9442l = true;
        this.f9443m = true;
        this.f9435a = str;
        this.f9439i = proGuard;
        this.f9436b = proGuard.m11860e();
        this.f9437c = proGuard2;
        this.f9444n = obj;
        if (th != null) {
            this.f9447q = new ProGuard(th);
        }
        this.f9438d = System.currentTimeMillis();
    }

    public ProGuard m11885a() {
        if (this.f9448r == null) {
            this.f9448r = new ProGuard(new Throwable(), this.f9435a);
        }
        return this.f9448r;
    }

    public org.p000a.p001a.ProGuard m11886b() {
        return (org.p000a.p001a.ProGuard) this.f9437c;
    }

    public String m11887c() {
        return this.f9436b;
    }

    public String m11888d() {
        if (this.f9442l) {
            this.f9442l = false;
            this.f9440j = org.p000a.p001a.ProGuard.m11949a();
        }
        return this.f9440j;
    }

    public Object m11884a(String str) {
        if (this.f9441k != null) {
            Object obj = this.f9441k.get(str);
            if (obj != null) {
                return obj;
            }
        }
        return org.p000a.p001a.ProGuard.m11947a(str);
    }

    public String m11889e() {
        if (this.f9445o == null && this.f9444n != null) {
            if (this.f9444n instanceof String) {
                this.f9445o = (String) this.f9444n;
            } else {
                ProGuard d = this.f9439i.m11859d();
                if (d instanceof ProGuard) {
                    this.f9445o = ((ProGuard) d).m11894c().m11842a(this.f9444n);
                } else {
                    this.f9445o = this.f9444n.toString();
                }
            }
        }
        return this.f9445o;
    }

    public static long m11883f() {
        return f9434h;
    }

    public String m11890g() {
        if (this.f9446p == null) {
            this.f9446p = Thread.currentThread().getName();
        }
        return this.f9446p;
    }

    public ProGuard m11891h() {
        return this.f9447q;
    }

    public String[] m11892i() {
        if (this.f9447q == null) {
            return null;
        }
        return this.f9447q.m11900b();
    }
}
