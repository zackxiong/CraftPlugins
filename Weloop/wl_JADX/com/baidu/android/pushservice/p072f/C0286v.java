package com.baidu.android.pushservice.p072f;

import android.text.TextUtils;

/* renamed from: com.baidu.android.pushservice.f.v */
public class C0286v {
    private int f3269a;
    private String f3270b;
    private long f3271c;
    private String f3272d;
    private String f3273e;
    private String f3274f;
    private String f3275g;
    private String f3276h;
    private String f3277i;
    private String f3278j;
    private int f3279k;

    public String m4941a() {
        return this.f3270b;
    }

    public void m4942a(int i) {
        this.f3269a = i;
    }

    public void m4943a(long j) {
        this.f3271c = j;
    }

    public void m4944a(String str) {
        this.f3270b = str;
    }

    public String m4945b() {
        return this.f3278j;
    }

    public void m4946b(int i) {
        this.f3279k = i;
    }

    public void m4947b(String str) {
        this.f3272d = str;
    }

    public C0267p m4948c() {
        return new C0267p(this.f3270b, this.f3271c, this.f3272d, this.f3278j);
    }

    public void m4949c(String str) {
        this.f3273e = str;
    }

    public C0285u m4950d() {
        C0285u c0285u = new C0285u(m4948c());
        if (!TextUtils.isEmpty(this.f3273e)) {
            c0285u.f3263a = this.f3273e;
        }
        if (!TextUtils.isEmpty(this.f3274f)) {
            c0285u.f3264b = this.f3274f;
        }
        if (!TextUtils.isEmpty(this.f3275g)) {
            c0285u.f3265c = this.f3275g;
        }
        if (!TextUtils.isEmpty(this.f3276h)) {
            c0285u.f3266d = this.f3276h;
        }
        if (!TextUtils.isEmpty(this.f3277i)) {
            c0285u.f3267e = this.f3277i;
        }
        if (this.f3279k != -1) {
            c0285u.f3268v = this.f3279k;
        }
        return c0285u;
    }

    public void m4951d(String str) {
        this.f3274f = str;
    }

    public void m4952e(String str) {
        this.f3275g = str;
    }

    public void m4953f(String str) {
        this.f3276h = str;
    }

    public void m4954g(String str) {
        this.f3277i = str;
    }

    public void m4955h(String str) {
        this.f3278j = str;
    }
}
