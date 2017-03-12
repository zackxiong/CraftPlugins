package com.p032a.p033a.p034a;

import com.p032a.p033a.p034a.C0143r.C0139a;
import com.p032a.p033a.p034a.p035a.ac;
import com.p032a.p033a.p034a.p035a.ad;
import java.io.Writer;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

/* renamed from: com.a.a.a.d */
public class C0130d extends C0129i {
    static final Enumeration f2194a;
    private static final Integer f2195b;
    private C0131f f2196c;
    private String f2197d;
    private C0139a f2198e;
    private Vector f2199f;
    private final Hashtable f2200g;

    /* renamed from: com.a.a.a.d.a */
    public interface C0128a {
        void m3426a(C0130d c0130d);
    }

    static {
        f2195b = new Integer(1);
        f2194a = new C0132g();
    }

    public C0130d() {
        this.f2196c = null;
        this.f2198e = C0143r.m3551a();
        this.f2199f = new Vector();
        this.f2200g = (Hashtable) null;
        this.f2197d = "MEMORY";
    }

    C0130d(String str) {
        this.f2196c = null;
        this.f2198e = C0143r.m3551a();
        this.f2199f = new Vector();
        this.f2200g = (Hashtable) null;
        this.f2197d = str;
    }

    public C0131f m3441a() {
        return this.f2196c;
    }

    C0150v m3442a(ac acVar, boolean z) {
        if (acVar.m3365b() == z) {
            return new C0150v(this, acVar);
        }
        throw new ad(acVar, new StringBuffer().append("\"").append(acVar).append("\" evaluates to ").append(z ? "evaluates to element not string" : "evaluates to string not element").toString());
    }

    void m3443a(ac acVar) {
    }

    public void m3444a(C0131f c0131f) {
        this.f2196c = c0131f;
        this.f2196c.m3428a(this);
        m3448b();
    }

    public void m3445a(Writer writer) {
        this.f2196c.m3456a(writer);
    }

    public void m3446a(String str) {
        this.f2197d = str;
        m3448b();
    }

    public C0131f m3447b(String str) {
        try {
            if (str.charAt(0) != '/') {
                str = new StringBuffer().append("/").append(str).toString();
            }
            ac a = ac.m3362a(str);
            m3443a(a);
            return m3442a(a, false).m3566a();
        } catch (Throwable e) {
            throw new C0133m("XPath problem", e);
        }
    }

    void m3448b() {
        Enumeration elements = this.f2199f.elements();
        while (elements.hasMoreElements()) {
            ((C0128a) elements.nextElement()).m3426a(this);
        }
    }

    public void m3449b(Writer writer) {
        writer.write("<?xml version=\"1.0\" ?>\n");
        this.f2196c.m3461b(writer);
    }

    protected int m3450c() {
        return this.f2196c.hashCode();
    }

    public Object clone() {
        C0130d c0130d = new C0130d(this.f2197d);
        c0130d.f2196c = (C0131f) this.f2196c.clone();
        return c0130d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0130d)) {
            return false;
        }
        return this.f2196c.equals(((C0130d) obj).f2196c);
    }

    public String toString() {
        return this.f2197d;
    }
}
