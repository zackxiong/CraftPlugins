package p023b.p024a.p025a.p026a.p027a;

import android.text.TextUtils;

/* renamed from: b.a.a.a.a.a */
public final class ProGuard {
    private String f1868a;
    private String f1869b;
    private String f1870c;
    private String f1871d;

    public ProGuard(com.yf.gattlib.p108a.ProGuard proGuard, String str) {
        this.f1868a = "VersionComparer";
        m2789a(proGuard, str);
    }

    public ProGuard(com.yf.gattlib.p108a.ProGuard proGuard, int i) {
        this.f1868a = "VersionComparer";
        m2788a(proGuard, i);
    }

    public void m2789a(com.yf.gattlib.p108a.ProGuard proGuard, String str) {
        this.f1869b = proGuard.m7382l().m7407b();
        this.f1870c = proGuard.m7376f().m8081k().m7822e();
        this.f1871d = str;
        if (TextUtils.isEmpty(this.f1870c)) {
            this.f1870c = this.f1871d;
        }
    }

    public void m2790a(String str) {
        this.f1870c = str;
    }

    public void m2792b(String str) {
        this.f1871d = str;
    }

    public void m2788a(com.yf.gattlib.p108a.ProGuard proGuard, int i) {
        m2789a(proGuard, proGuard.m7374d().getString(i));
    }

    public String m2787a() {
        return this.f1869b;
    }

    public String m2791b() {
        return this.f1870c;
    }

    public void m2793c() {
        this.f1870c = this.f1869b;
    }

    public boolean m2794d() {
        if (TextUtils.isEmpty(this.f1869b) || TextUtils.isEmpty(this.f1870c) || this.f1869b.replace(" ", "").toLowerCase().compareToIgnoreCase(this.f1870c.replace(" ", "").toLowerCase()) <= 0) {
            return false;
        }
        return true;
    }
}
