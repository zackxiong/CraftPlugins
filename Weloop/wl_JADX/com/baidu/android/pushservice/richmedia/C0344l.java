package com.baidu.android.pushservice.richmedia;

import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.Hashtable;

/* renamed from: com.baidu.android.pushservice.richmedia.l */
public class C0344l {
    private static boolean f3454a;
    private static Hashtable<String, C0344l> f3455b;
    private String f3456c;

    static {
        f3454a = true;
        f3455b = new Hashtable();
    }

    private C0344l(String str) {
        this.f3456c = str;
    }

    public static C0344l m5135a(String str) {
        C0344l c0344l = (C0344l) f3455b.get(str);
        if (c0344l != null) {
            return c0344l;
        }
        c0344l = new C0344l(str);
        f3455b.put(str, c0344l);
        return c0344l;
    }

    public void m5136b(String str) {
        if (f3454a) {
            C0385a.m5311b("[Channel]", "{Thread:" + Thread.currentThread().getName() + "}" + "[" + this.f3456c + ":] " + str);
        }
    }

    public void m5137c(String str) {
        if (f3454a) {
            C0385a.m5312c("[Channel]", "{Thread:" + Thread.currentThread().getName() + "}" + "[" + this.f3456c + ":] " + str);
        }
    }
}
