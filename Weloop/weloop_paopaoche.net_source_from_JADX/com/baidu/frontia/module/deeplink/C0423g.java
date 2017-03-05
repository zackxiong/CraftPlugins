package com.baidu.frontia.module.deeplink;

import android.content.Context;
import android.util.Log;
import com.baidu.android.p062a.p063a.C0164e;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.p070d.C0229o;
import java.util.ArrayList;

/* renamed from: com.baidu.frontia.module.deeplink.g */
public class C0423g {
    public static final String f3713a;
    private static C0423g f3714h;
    private static Object f3715k;
    private ArrayList<Integer> f3716b;
    private final int f3717c;
    private int f3718d;
    private final int f3719e;
    private int f3720f;
    private long f3721g;
    private C0164e f3722i;
    private final Context f3723j;

    static {
        f3713a = "WRONG API OR VERSION NOT SUPPORTED - VERSION " + C0192a.m4336a();
        f3714h = null;
        f3715k = new Object();
    }

    private C0423g(Context context) {
        this.f3717c = 7777;
        this.f3718d = 7777;
        this.f3719e = 5;
        this.f3720f = 0;
        this.f3721g = 0;
        this.f3722i = null;
        this.f3723j = context;
        this.f3716b = new ArrayList();
        this.f3720f = 0;
    }

    public static C0423g m5430a() {
        return f3714h;
    }

    public static synchronized C0423g m5431a(Context context) {
        C0423g c0423g;
        synchronized (C0423g.class) {
            if (context == null) {
                c0423g = null;
            } else {
                if (f3714h == null) {
                    synchronized (f3715k) {
                        if (f3714h == null) {
                            f3714h = new C0423g(context);
                        }
                    }
                }
                c0423g = f3714h;
            }
        }
        return c0423g;
    }

    private void m5436f() {
        if (this.f3716b.size() == 0 && this.f3720f < 5) {
            this.f3716b = new C0229o(this.f3723j).m4542a();
            this.f3720f++;
        }
        if (this.f3716b != null && 2 == this.f3716b.size()) {
            if (this.f3718d == 7777) {
                this.f3718d = ((Integer) this.f3716b.get(0)).intValue();
            } else if (this.f3718d == ((Integer) this.f3716b.get(0)).intValue()) {
                this.f3718d = ((Integer) this.f3716b.get(1)).intValue();
            } else {
                this.f3718d = 7777;
            }
        }
    }

    public Context m5437b() {
        return this.f3723j;
    }

    public boolean m5438c() {
        if (m5440e()) {
            return true;
        }
        try {
            new Thread(new C0424h(this)).start();
            return true;
        } catch (Exception e) {
            Log.e("LocalServer", "error: " + e.getMessage());
            return false;
        }
    }

    public void m5439d() {
        if (m5440e()) {
            this.f3722i.m4171a();
        }
    }

    public boolean m5440e() {
        return this.f3722i != null && this.f3722i.m4173b();
    }
}
