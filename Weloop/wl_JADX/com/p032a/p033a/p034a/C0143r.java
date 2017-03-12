package com.p032a.p033a.p034a;

import java.util.Hashtable;

/* renamed from: com.a.a.a.r */
public class C0143r {
    private static C0142d f2261a;
    private static C0140b f2262b;

    /* renamed from: com.a.a.a.r.a */
    public interface C0139a {
    }

    /* renamed from: com.a.a.a.r.b */
    public interface C0140b {
        C0139a m3549a();
    }

    /* renamed from: com.a.a.a.r.c */
    private static class C0141c extends Hashtable implements C0139a {
        private C0141c() {
        }

        C0141c(C0144s c0144s) {
            this();
        }
    }

    /* renamed from: com.a.a.a.r.d */
    public interface C0142d {
        String m3550a(String str);
    }

    static {
        f2261a = new C0144s();
        f2262b = new C0145t();
    }

    static C0139a m3551a() {
        return f2262b.m3549a();
    }

    public static String m3552a(String str) {
        return f2261a.m3550a(str);
    }
}
