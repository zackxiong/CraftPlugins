package com.p032a.p033a.p034a;

import com.p032a.p033a.p034a.p035a.ac;
import com.p032a.p033a.p034a.p035a.ad;
import java.io.Writer;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

/* renamed from: com.a.a.a.f */
public class C0131f extends C0129i {
    private C0129i f2201a;
    private C0129i f2202b;
    private Hashtable f2203c;
    private Vector f2204d;
    private String f2205e;

    C0131f() {
        this.f2201a = null;
        this.f2202b = null;
        this.f2203c = null;
        this.f2204d = null;
        this.f2205e = null;
    }

    public C0131f(String str) {
        this.f2201a = null;
        this.f2202b = null;
        this.f2203c = null;
        this.f2204d = null;
        this.f2205e = null;
        this.f2205e = C0143r.m3552a(str);
    }

    private C0150v m3451a(String str, boolean z) {
        ac a = ac.m3362a(str);
        if (a.m3365b() == z) {
            return new C0150v(this, a);
        }
        throw new ad(a, new StringBuffer().append("\"").append(a).append("\" evaluates to ").append(z ? "evaluates to element not string" : "evaluates to string not element").toString());
    }

    private boolean m3452e(C0129i c0129i) {
        int i = 0;
        for (C0129i c0129i2 = this.f2201a; c0129i2 != null; c0129i2 = c0129i2.m3438i()) {
            if (c0129i2.equals(c0129i)) {
                if (this.f2201a == c0129i2) {
                    this.f2201a = c0129i2.m3438i();
                }
                if (this.f2202b == c0129i2) {
                    this.f2202b = c0129i2.m3437h();
                }
                c0129i2.m3439j();
                c0129i2.m3431b(null);
                c0129i2.m3428a(null);
                return true;
            }
            i++;
        }
        return false;
    }

    public C0131f m3453a(boolean z) {
        C0131f c0131f = new C0131f(this.f2205e);
        if (this.f2204d != null) {
            Enumeration elements = this.f2204d.elements();
            while (elements.hasMoreElements()) {
                String str = (String) elements.nextElement();
                c0131f.m3458a(str, (String) this.f2203c.get(str));
            }
        }
        if (z) {
            for (C0129i c0129i = this.f2201a; c0129i != null; c0129i = c0129i.m3438i()) {
                c0131f.m3460b((C0129i) c0129i.clone());
            }
        }
        return c0131f;
    }

    public String m3454a() {
        return this.f2205e;
    }

    void m3455a(C0129i c0129i) {
        C0131f g = c0129i.m3436g();
        if (g != null) {
            g.m3452e(c0129i);
        }
        c0129i.m3434d(this.f2202b);
        if (this.f2201a == null) {
            this.f2201a = c0129i;
        }
        c0129i.m3431b(this);
        this.f2202b = c0129i;
        c0129i.m3428a(m3435f());
    }

    void m3456a(Writer writer) {
        for (C0129i c0129i = this.f2201a; c0129i != null; c0129i = c0129i.m3438i()) {
            c0129i.m3429a(writer);
        }
    }

    public void m3457a(String str) {
        this.f2205e = C0143r.m3552a(str);
        m3430b();
    }

    public void m3458a(String str, String str2) {
        if (this.f2203c == null) {
            this.f2203c = new Hashtable();
            this.f2204d = new Vector();
        }
        if (this.f2203c.get(str) == null) {
            this.f2204d.addElement(str);
        }
        this.f2203c.put(str, str2);
        m3430b();
    }

    public String m3459b(String str) {
        return this.f2203c == null ? null : (String) this.f2203c.get(str);
    }

    public void m3460b(C0129i c0129i) {
        m3455a(!m3464c(c0129i) ? (C0131f) c0129i.clone() : c0129i);
        m3430b();
    }

    public void m3461b(Writer writer) {
        writer.write(new StringBuffer().append("<").append(this.f2205e).toString());
        if (this.f2204d != null) {
            Enumeration elements = this.f2204d.elements();
            while (elements.hasMoreElements()) {
                String str = (String) elements.nextElement();
                String str2 = (String) this.f2203c.get(str);
                writer.write(new StringBuffer().append(" ").append(str).append("=\"").toString());
                C0129i.m3427a(writer, str2);
                writer.write("\"");
            }
        }
        if (this.f2201a == null) {
            writer.write("/>");
            return;
        }
        writer.write(">");
        for (C0129i c0129i = this.f2201a; c0129i != null; c0129i = c0129i.m3438i()) {
            c0129i.m3432b(writer);
        }
        writer.write(new StringBuffer().append("</").append(this.f2205e).append(">").toString());
    }

    protected int m3462c() {
        int i;
        int hashCode = this.f2205e.hashCode();
        if (this.f2203c != null) {
            Enumeration keys = this.f2203c.keys();
            i = hashCode;
            while (keys.hasMoreElements()) {
                String str = (String) keys.nextElement();
                i = ((String) this.f2203c.get(str)).hashCode() + (((i * 31) + str.hashCode()) * 31);
            }
        } else {
            i = hashCode;
        }
        for (C0129i c0129i = this.f2201a; c0129i != null; c0129i = c0129i.m3438i()) {
            i = (i * 31) + c0129i.hashCode();
        }
        return i;
    }

    public String m3463c(String str) {
        try {
            return m3451a(str, true).m3583b();
        } catch (Throwable e) {
            throw new C0133m("XPath problem", e);
        }
    }

    boolean m3464c(C0129i c0129i) {
        if (c0129i == this) {
            return false;
        }
        C0131f g = m3436g();
        return g == null ? true : g.m3464c(c0129i);
    }

    public Object clone() {
        return m3453a(true);
    }

    public C0129i m3465d() {
        return this.f2201a;
    }

    public C0129i m3466e() {
        return this.f2202b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0131f)) {
            return false;
        }
        C0131f c0131f = (C0131f) obj;
        if (!this.f2205e.equals(c0131f.f2205e)) {
            return false;
        }
        if ((this.f2203c == null ? 0 : this.f2203c.size()) != (c0131f.f2203c == null ? 0 : c0131f.f2203c.size())) {
            return false;
        }
        if (this.f2203c != null) {
            Enumeration keys = this.f2203c.keys();
            while (keys.hasMoreElements()) {
                String str = (String) keys.nextElement();
                if (!((String) this.f2203c.get(str)).equals((String) c0131f.f2203c.get(str))) {
                    return false;
                }
            }
        }
        C0129i c0129i = this.f2201a;
        C0129i c0129i2 = c0131f.f2201a;
        while (c0129i != null) {
            if (!c0129i.equals(c0129i2)) {
                return false;
            }
            c0129i = c0129i.m3438i();
            c0129i2 = c0129i2.m3438i();
        }
        return true;
    }
}
