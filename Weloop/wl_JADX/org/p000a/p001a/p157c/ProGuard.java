package org.p000a.p001a.p157c;

import java.util.Hashtable;

/* renamed from: org.a.a.c.c */
public class ProGuard {
    static ProGuard f9409b;
    static Class f9410c;
    Hashtable f9411a;

    static {
        f9409b = new ProGuard();
    }

    public ProGuard() {
        this.f9411a = new Hashtable();
    }

    public static void m11841a(org.p000a.p001a.p002d.ProGuard proGuard, String str, String str2) {
        Class a;
        org.p000a.p001a.p156b.ProGuard.m11796a(new StringBuffer().append("Rendering class: [").append(str2).append("], Rendered class: [").append(str).append("].").toString());
        if (f9410c == null) {
            a = ProGuard.m11840a("org.a.a.c.b");
            f9410c = a;
        } else {
            a = f9410c;
        }
        ProGuard proGuard2 = (ProGuard) org.p000a.p001a.p156b.ProGuard.m11810a(str2, a, null);
        if (proGuard2 == null) {
            org.p000a.p001a.p156b.ProGuard.m11799b(new StringBuffer().append("Could not instantiate renderer [").append(str2).append("].").toString());
            return;
        }
        try {
            proGuard.m11893a(org.p000a.p001a.p156b.ProGuard.m11793b(str), proGuard2);
        } catch (Throwable e) {
            org.p000a.p001a.p156b.ProGuard.m11797a(new StringBuffer().append("Could not find class [").append(str).append("].").toString(), e);
        }
    }

    static Class m11840a(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public String m11842a(Object obj) {
        if (obj == null) {
            return null;
        }
        return m11843a(obj.getClass()).m11838a(obj);
    }

    public ProGuard m11843a(Class cls) {
        while (cls != null) {
            ProGuard proGuard = (ProGuard) this.f9411a.get(cls);
            if (proGuard != null) {
                return proGuard;
            }
            proGuard = m11846b(cls);
            if (proGuard != null) {
                return proGuard;
            }
            cls = cls.getSuperclass();
        }
        return f9409b;
    }

    ProGuard m11846b(Class cls) {
        ProGuard proGuard = (ProGuard) this.f9411a.get(cls);
        if (proGuard != null) {
            return proGuard;
        }
        Class[] interfaces = cls.getInterfaces();
        for (Class b : interfaces) {
            ProGuard b2 = m11846b(b);
            if (b2 != null) {
                return b2;
            }
        }
        return null;
    }

    public void m11844a() {
        this.f9411a.clear();
    }

    public void m11845a(Class cls, ProGuard proGuard) {
        this.f9411a.put(cls, proGuard);
    }
}
