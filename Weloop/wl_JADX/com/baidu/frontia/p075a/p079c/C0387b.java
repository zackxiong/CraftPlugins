package com.baidu.frontia.p075a.p079c;

/* renamed from: com.baidu.frontia.a.c.b */
public class C0387b {
    private static C0387b f3642a;

    static {
        f3642a = new C0387b();
    }

    public static C0387b m5320a() {
        if (f3642a == null) {
            synchronized (C0387b.class) {
                if (f3642a == null) {
                    f3642a = new C0387b();
                }
            }
        }
        return f3642a;
    }

    public String m5321b() {
        return "http://deeplink.baidu.com";
    }
}
