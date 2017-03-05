package com.p032a.p033a.p034a;

/* renamed from: com.a.a.a.a */
class C0124a implements C0122e, C0123n {
    private final C0126o f2181c;
    private C0131f f2182d;
    private final C0130d f2183e;
    private C0121p f2184f;

    public C0124a() {
        this(null);
    }

    public C0124a(C0126o c0126o) {
        this.f2182d = null;
        this.f2183e = new C0130d();
        this.f2184f = null;
        if (c0126o == null) {
            c0126o = C0121p.f2179a;
        }
        this.f2181c = c0126o;
    }

    public C0130d m3413a() {
        return this.f2183e;
    }

    public void m3414a(C0131f c0131f) {
        if (this.f2182d == null) {
            this.f2183e.m3444a(c0131f);
        } else {
            this.f2182d.m3460b((C0129i) c0131f);
        }
        this.f2182d = c0131f;
    }

    public void m3415a(C0121p c0121p) {
        this.f2184f = c0121p;
        this.f2183e.m3446a(c0121p.toString());
    }

    public void m3416a(char[] cArr, int i, int i2) {
        C0131f c0131f = this.f2182d;
        if (c0131f.m3466e() instanceof C0146u) {
            ((C0146u) c0131f.m3466e()).m3557a(cArr, i, i2);
        } else {
            c0131f.m3455a(new C0146u(new String(cArr, i, i2)));
        }
    }

    public void m3417b() {
    }

    public void m3418b(C0131f c0131f) {
        this.f2182d = this.f2182d.m3436g();
    }

    public void m3419c() {
    }

    public String toString() {
        return this.f2184f != null ? new StringBuffer().append("BuildDoc: ").append(this.f2184f.toString()).toString() : null;
    }
}
