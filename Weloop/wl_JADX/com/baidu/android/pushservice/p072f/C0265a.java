package com.baidu.android.pushservice.p072f;

import android.text.TextUtils;

/* renamed from: com.baidu.android.pushservice.f.a */
public class C0265a {
    private int f3170a;
    private String f3171b;
    private long f3172c;
    private String f3173d;
    private int f3174e;
    private String f3175f;
    private int f3176g;
    private String f3177h;
    private int f3178i;
    private String f3179j;
    private String f3180k;

    public String m4821a() {
        return this.f3171b;
    }

    public void m4822a(int i) {
        this.f3170a = i;
    }

    public void m4823a(long j) {
        this.f3172c = j;
    }

    public void m4824a(String str) {
        this.f3171b = str;
    }

    public String m4825b() {
        return this.f3179j;
    }

    public void m4826b(int i) {
        this.f3174e = i;
    }

    public void m4827b(String str) {
        this.f3173d = str;
    }

    public C0267p m4828c() {
        return new C0267p(this.f3171b, this.f3172c, this.f3173d, this.f3178i, this.f3179j);
    }

    public void m4829c(int i) {
        this.f3176g = i;
    }

    public void m4830c(String str) {
        this.f3175f = str;
    }

    public C0268b m4831d() {
        C0268b c0268b = new C0268b(m4828c());
        c0268b.f3199c = this.f3174e;
        c0268b.f3197a = this.f3175f;
        c0268b.f3198b = this.f3176g;
        if (!TextUtils.isEmpty(this.f3180k)) {
            c0268b.f3201e = this.f3180k;
        }
        if (!TextUtils.isEmpty(this.f3177h)) {
            c0268b.f3200d = this.f3177h;
        }
        return c0268b;
    }

    public void m4832d(int i) {
        this.f3178i = i;
    }

    public void m4833d(String str) {
        this.f3177h = str;
    }

    public void m4834e(String str) {
        this.f3179j = str;
    }

    public void m4835f(String str) {
        this.f3180k = str;
    }
}
