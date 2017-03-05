package com.baidu.android.pushservice.p072f;

import android.text.TextUtils;

/* renamed from: com.baidu.android.pushservice.f.f */
public class C0271f {
    private int f3214a;
    private String f3215b;
    private long f3216c;
    private String f3217d;
    private int f3218e;
    private String f3219f;
    private int f3220g;
    private String f3221h;
    private String f3222i;
    private int f3223j;
    private int f3224k;
    private String f3225l;
    private String f3226m;
    private String f3227n;

    public String m4856a() {
        return this.f3215b;
    }

    public void m4857a(int i) {
        this.f3214a = i;
    }

    public void m4858a(long j) {
        this.f3216c = j;
    }

    public void m4859a(String str) {
        this.f3215b = str;
    }

    public String m4860b() {
        return this.f3225l;
    }

    public void m4861b(int i) {
        this.f3218e = i;
    }

    public void m4862b(String str) {
        this.f3217d = str;
    }

    public C0267p m4863c() {
        return new C0267p(this.f3215b, this.f3216c, this.f3217d, this.f3224k, this.f3225l);
    }

    public void m4864c(int i) {
        this.f3220g = i;
    }

    public void m4865c(String str) {
        this.f3219f = str;
    }

    public C0276j m4866d() {
        C0276j c0276j = new C0276j(m4863c());
        c0276j.f3242a = this.f3223j;
        return c0276j;
    }

    public void m4867d(int i) {
        this.f3223j = i;
    }

    public void m4868d(String str) {
        this.f3221h = str;
    }

    public C0278l m4869e() {
        C0278l c0278l = new C0278l(m4863c());
        c0278l.f3248c = this.f3218e;
        c0278l.f3246a = this.f3219f;
        c0278l.f3247b = this.f3220g;
        Object obj = this.f3227n;
        if (!TextUtils.isEmpty(obj)) {
            c0278l.f3249d = obj;
        }
        return c0278l;
    }

    public void m4870e(int i) {
        this.f3224k = i;
    }

    public void m4871e(String str) {
        this.f3222i = str;
    }

    public C0269c m4872f() {
        C0269c c0269c = new C0269c(m4863c());
        c0269c.f3202a = this.f3221h;
        c0269c.f3203b = this.f3222i;
        c0269c.f3204c = this.f3226m;
        return c0269c;
    }

    public void m4873f(String str) {
        this.f3225l = str;
    }

    public C0272g m4874g() {
        C0272g c0272g = new C0272g(m4863c());
        c0272g.f3228a = this.f3221h;
        return c0272g;
    }

    public void m4875g(String str) {
        this.f3226m = str;
    }

    public void m4876h(String str) {
        this.f3227n = str;
    }
}
