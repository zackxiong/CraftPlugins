package p003a.p004a.p005a.p006a.p007a;

/* renamed from: a.a.a.a.a.b */
public class ProGuard {
    private org.p000a.p001a.ProGuard f7a;
    private String f8b;
    private String f9c;
    private String f10d;
    private int f11e;
    private long f12f;
    private boolean f13g;
    private boolean f14h;
    private boolean f15i;
    private boolean f16j;
    private boolean f17k;

    public ProGuard() {
        this.f7a = org.p000a.p001a.ProGuard.f9488f;
        this.f8b = "%d - [%p::%c::%C] - %m%n";
        this.f9c = "%m%n";
        this.f10d = "android-log4j.log";
        this.f11e = 5;
        this.f12f = 524288;
        this.f13g = true;
        this.f14h = true;
        this.f15i = true;
        this.f16j = true;
        this.f17k = false;
    }

    public void m21a() {
        org.p000a.p001a.ProGuard h = org.p000a.p001a.ProGuard.m11897h();
        if (m37k()) {
            org.p000a.p001a.ProGuard.m11944a().m11882e();
        }
        org.p000a.p001a.p156b.ProGuard.m11798a(m38l());
        if (m35i()) {
            m19m();
        }
        if (m36j()) {
            m20n();
        }
        h.m11855a(m27b());
    }

    private void m19m() {
        org.p000a.p001a.ProGuard h = org.p000a.p001a.ProGuard.m11897h();
        try {
            org.p000a.p001a.ProGuard proGuard = new org.p000a.p001a.ProGuard(new org.p000a.p001a.ProGuard(m29c()), m31e());
            proGuard.m11966a(m32f());
            proGuard.m11967a(m33g());
            proGuard.m11907a(m34h());
            h.m11852a(proGuard);
        } catch (Throwable e) {
            throw new RuntimeException("Exception configuring log system", e);
        }
    }

    private void m20n() {
        org.p000a.p001a.ProGuard.m11897h().m11852a(new ProGuard(new org.p000a.p001a.ProGuard(m30d())));
    }

    public org.p000a.p001a.ProGuard m27b() {
        return this.f7a;
    }

    public void m25a(org.p000a.p001a.ProGuard proGuard) {
        this.f7a = proGuard;
    }

    public String m29c() {
        return this.f8b;
    }

    public void m24a(String str) {
        this.f8b = str;
    }

    public String m30d() {
        return this.f9c;
    }

    public String m31e() {
        return this.f10d;
    }

    public void m28b(String str) {
        this.f10d = str;
    }

    public int m32f() {
        return this.f11e;
    }

    public void m22a(int i) {
        this.f11e = i;
    }

    public long m33g() {
        return this.f12f;
    }

    public void m23a(long j) {
        this.f12f = j;
    }

    public boolean m34h() {
        return this.f13g;
    }

    public boolean m35i() {
        return this.f15i;
    }

    public boolean m36j() {
        return this.f14h;
    }

    public void m26a(boolean z) {
        this.f14h = z;
    }

    public boolean m37k() {
        return this.f16j;
    }

    public boolean m38l() {
        return this.f17k;
    }
}
