package cn.sharesdk.framework.authorize;

import android.content.Intent;

/* renamed from: cn.sharesdk.framework.authorize.f */
public abstract class C0002f {
    protected C0014e f1899a;
    protected int f1900b;
    protected SSOListener f1901c;

    public C0002f(C0014e c0014e) {
        this.f1899a = c0014e;
        this.f1901c = c0014e.m2920a().getSSOListener();
    }

    public abstract void m2866a();

    public void m2867a(int i) {
        this.f1900b = i;
    }

    public void m2868a(int i, int i2, Intent intent) {
    }

    protected void m2869a(Intent intent) {
    }
}
