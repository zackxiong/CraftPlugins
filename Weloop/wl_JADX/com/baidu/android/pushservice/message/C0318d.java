package com.baidu.android.pushservice.message;

import android.content.Context;
import java.util.LinkedList;

/* renamed from: com.baidu.android.pushservice.message.d */
public abstract class C0318d {
    protected Context f3364a;
    private LinkedList<C0319e> f3365b;

    public C0318d(Context context) {
        this.f3365b = new LinkedList();
        this.f3364a = context;
    }

    public abstract C0319e m5050a(byte[] bArr, int i);

    public LinkedList<C0319e> m5051a() {
        return this.f3365b;
    }

    public abstract void m5052a(int i);

    public void m5053a(C0319e c0319e) {
        synchronized (this.f3365b) {
            this.f3365b.add(c0319e);
            this.f3365b.notify();
        }
    }

    public abstract void m5054b();

    public abstract void m5055b(C0319e c0319e);

    public abstract void m5056c();
}
