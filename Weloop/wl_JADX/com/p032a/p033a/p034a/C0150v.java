package com.p032a.p033a.p034a;

import com.p032a.p033a.p034a.p035a.C0096a;
import com.p032a.p033a.p034a.p035a.C0097k;
import com.p032a.p033a.p034a.p035a.C0102c;
import com.p032a.p033a.p034a.p035a.C0103d;
import com.p032a.p033a.p034a.p035a.C0105f;
import com.p032a.p033a.p034a.p035a.C0106g;
import com.p032a.p033a.p034a.p035a.C0107h;
import com.p032a.p033a.p034a.p035a.C0108j;
import com.p032a.p033a.p034a.p035a.C0109m;
import com.p032a.p033a.p034a.p035a.C0111q;
import com.p032a.p033a.p034a.p035a.C0112r;
import com.p032a.p033a.p034a.p035a.C0114t;
import com.p032a.p033a.p034a.p035a.C0116v;
import com.p032a.p033a.p034a.p035a.C0117w;
import com.p032a.p033a.p034a.p035a.C0118x;
import com.p032a.p033a.p034a.p035a.C0119y;
import com.p032a.p033a.p034a.p035a.C0120z;
import com.p032a.p033a.p034a.p035a.aa;
import com.p032a.p033a.p034a.p035a.ab;
import com.p032a.p033a.p034a.p035a.ac;
import com.p032a.p033a.p034a.p035a.ad;
import java.util.Enumeration;
import java.util.Vector;

/* renamed from: com.a.a.a.v */
class C0150v implements ab {
    private static final Boolean f2268a;
    private static final Boolean f2269b;
    private final C0135j f2270c;
    private Vector f2271d;
    private Enumeration f2272e;
    private Object f2273f;
    private final C0149a f2274g;
    private C0129i f2275h;
    private boolean f2276i;
    private ac f2277j;

    /* renamed from: com.a.a.a.v.1 */
    class C01471 {
    }

    /* renamed from: com.a.a.a.v.a */
    private static class C0149a {
        private C0148a f2267a;

        /* renamed from: com.a.a.a.v.a.a */
        private static class C0148a {
            final Boolean f2265a;
            final C0148a f2266b;

            C0148a(Boolean bool, C0148a c0148a) {
                this.f2265a = bool;
                this.f2266b = c0148a;
            }
        }

        private C0149a() {
            this.f2267a = null;
        }

        C0149a(C01471 c01471) {
            this();
        }

        Boolean m3560a() {
            Boolean bool = this.f2267a.f2265a;
            this.f2267a = this.f2267a.f2266b;
            return bool;
        }

        void m3561a(Boolean bool) {
            this.f2267a = new C0148a(bool, this.f2267a);
        }
    }

    static {
        f2268a = new Boolean(true);
        f2269b = new Boolean(false);
    }

    private C0150v(ac acVar, C0129i c0129i) {
        this.f2270c = new C0135j();
        this.f2271d = new Vector();
        this.f2272e = null;
        this.f2273f = null;
        this.f2274g = new C0149a(null);
        this.f2277j = acVar;
        this.f2275h = c0129i;
        this.f2271d = new Vector(1);
        this.f2271d.addElement(this.f2275h);
        Enumeration c = acVar.m3366c();
        while (c.hasMoreElements()) {
            C0114t c0114t = (C0114t) c.nextElement();
            this.f2276i = c0114t.m3394a();
            this.f2272e = null;
            c0114t.m3396c().m3340a(this);
            this.f2272e = this.f2270c.m3473a();
            this.f2271d.removeAllElements();
            C0097k d = c0114t.m3397d();
            while (this.f2272e.hasMoreElements()) {
                this.f2273f = this.f2272e.nextElement();
                d.m3344a(this);
                if (this.f2274g.m3560a().booleanValue()) {
                    this.f2271d.addElement(this.f2273f);
                }
            }
        }
    }

    public C0150v(C0130d c0130d, ac acVar) {
        this(acVar, (C0129i) c0130d);
    }

    public C0150v(C0131f c0131f, ac acVar) {
        this(acVar, (C0129i) c0131f);
        if (acVar.m3364a()) {
            throw new ad(acVar, "Cannot use element as context node for absolute xpath");
        }
    }

    private void m3562a(C0130d c0130d) {
        C0131f a = c0130d.m3441a();
        this.f2270c.add(a, 1);
        if (this.f2276i) {
            m3564a(a);
        }
    }

    private void m3563a(C0130d c0130d, String str) {
        C0131f a = c0130d.m3441a();
        if (a != null) {
            if (a.m3454a() == str) {
                this.f2270c.add(a, 1);
            }
            if (this.f2276i) {
                m3565a(a, str);
            }
        }
    }

    private void m3564a(C0131f c0131f) {
        int i = 0;
        for (C0129i d = c0131f.m3465d(); d != null; d = d.m3438i()) {
            if (d instanceof C0131f) {
                int i2 = i + 1;
                this.f2270c.add(d, i2);
                if (this.f2276i) {
                    m3564a((C0131f) d);
                }
                i = i2;
            }
        }
    }

    private void m3565a(C0131f c0131f, String str) {
        int i = 0;
        for (C0129i d = c0131f.m3465d(); d != null; d = d.m3438i()) {
            if (d instanceof C0131f) {
                C0131f c0131f2 = (C0131f) d;
                if (c0131f2.m3454a() == str) {
                    i++;
                    this.f2270c.add(c0131f2, i);
                }
                if (this.f2276i) {
                    m3565a(c0131f2, str);
                }
            }
        }
    }

    public C0131f m3566a() {
        return this.f2271d.size() == 0 ? null : (C0131f) this.f2271d.elementAt(0);
    }

    public void m3567a(C0096a c0096a) {
        Vector vector = this.f2271d;
        this.f2270c.m3474b();
        Enumeration elements = vector.elements();
        while (elements.hasMoreElements()) {
            Object nextElement = elements.nextElement();
            if (nextElement instanceof C0131f) {
                m3564a((C0131f) nextElement);
            } else if (nextElement instanceof C0130d) {
                m3562a((C0130d) nextElement);
            }
        }
    }

    public void m3568a(aa aaVar) {
        this.f2274g.m3561a(f2268a);
    }

    public void m3569a(C0102c c0102c) {
        if (this.f2273f instanceof C0131f) {
            this.f2274g.m3561a(c0102c.m3370a().equals(((C0131f) this.f2273f).m3459b(c0102c.m3369b())) ? f2268a : f2269b);
            return;
        }
        throw new ad(this.f2277j, "Cannot test attribute of document");
    }

    public void m3570a(C0103d c0103d) {
        if (this.f2273f instanceof C0131f) {
            String b = ((C0131f) this.f2273f).m3459b(c0103d.m3369b());
            Object obj = (b == null || b.length() <= 0) ? null : 1;
            this.f2274g.m3561a(obj != null ? f2268a : f2269b);
            return;
        }
        throw new ad(this.f2277j, "Cannot test attribute of document");
    }

    public void m3571a(C0105f c0105f) {
        if (this.f2273f instanceof C0131f) {
            this.f2274g.m3561a(((((double) Long.parseLong(((C0131f) this.f2273f).m3459b(c0105f.m3369b()))) > c0105f.m3374a() ? 1 : (((double) Long.parseLong(((C0131f) this.f2273f).m3459b(c0105f.m3369b()))) == c0105f.m3374a() ? 0 : -1)) > 0 ? 1 : null) != null ? f2268a : f2269b);
            return;
        }
        throw new ad(this.f2277j, "Cannot test attribute of document");
    }

    public void m3572a(C0106g c0106g) {
        if (this.f2273f instanceof C0131f) {
            this.f2274g.m3561a(((((double) Long.parseLong(((C0131f) this.f2273f).m3459b(c0106g.m3369b()))) > c0106g.m3374a() ? 1 : (((double) Long.parseLong(((C0131f) this.f2273f).m3459b(c0106g.m3369b()))) == c0106g.m3374a() ? 0 : -1)) < 0 ? 1 : null) != null ? f2268a : f2269b);
            return;
        }
        throw new ad(this.f2277j, "Cannot test attribute of document");
    }

    public void m3573a(C0107h c0107h) {
        if (this.f2273f instanceof C0131f) {
            this.f2274g.m3561a((!c0107h.m3370a().equals(((C0131f) this.f2273f).m3459b(c0107h.m3369b())) ? 1 : null) != null ? f2268a : f2269b);
            return;
        }
        throw new ad(this.f2277j, "Cannot test attribute of document");
    }

    public void m3574a(C0108j c0108j) {
        Vector vector = this.f2271d;
        this.f2270c.m3474b();
        Enumeration elements = vector.elements();
        while (elements.hasMoreElements()) {
            C0129i c0129i = (C0129i) elements.nextElement();
            if (c0129i instanceof C0131f) {
                String b = ((C0131f) c0129i).m3459b(c0108j.m3381b());
                if (b != null) {
                    this.f2270c.add(b);
                }
            }
        }
    }

    public void m3575a(C0109m c0109m) {
        String b = c0109m.m3384b();
        Vector vector = this.f2271d;
        int size = vector.size();
        this.f2270c.m3474b();
        for (int i = 0; i < size; i++) {
            Object elementAt = vector.elementAt(i);
            if (elementAt instanceof C0131f) {
                m3565a((C0131f) elementAt, b);
            } else if (elementAt instanceof C0130d) {
                m3563a((C0130d) elementAt, b);
            }
        }
    }

    public void m3576a(C0111q c0111q) {
        this.f2270c.m3474b();
        C0129i g = this.f2275h.m3436g();
        if (g == null) {
            throw new ad(this.f2277j, "Illegal attempt to apply \"..\" to node with no parent.");
        }
        this.f2270c.add(g, 1);
    }

    public void m3577a(C0112r c0112r) {
        if (this.f2273f instanceof C0131f) {
            this.f2274g.m3561a((this.f2270c.m3472a((C0131f) this.f2273f) == c0112r.m3388a() ? 1 : null) != null ? f2268a : f2269b);
            return;
        }
        throw new ad(this.f2277j, "Cannot test position of document");
    }

    public void m3578a(C0116v c0116v) {
        if (this.f2273f instanceof C0131f) {
            C0129i d = ((C0131f) this.f2273f).m3465d();
            while (d != null) {
                if ((d instanceof C0146u) && ((C0146u) d).m3555a().equals(c0116v.m3398a())) {
                    this.f2274g.m3561a(f2268a);
                    return;
                }
                d = d.m3438i();
            }
            this.f2274g.m3561a(f2269b);
            return;
        }
        throw new ad(this.f2277j, "Cannot test attribute of document");
    }

    public void m3579a(C0117w c0117w) {
        if (this.f2273f instanceof C0131f) {
            for (C0129i d = ((C0131f) this.f2273f).m3465d(); d != null; d = d.m3438i()) {
                if (d instanceof C0146u) {
                    this.f2274g.m3561a(f2268a);
                    return;
                }
            }
            this.f2274g.m3561a(f2269b);
            return;
        }
        throw new ad(this.f2277j, "Cannot test attribute of document");
    }

    public void m3580a(C0118x c0118x) {
        if (this.f2273f instanceof C0131f) {
            C0129i d = ((C0131f) this.f2273f).m3465d();
            while (d != null) {
                if (!(d instanceof C0146u) || ((C0146u) d).m3555a().equals(c0118x.m3398a())) {
                    d = d.m3438i();
                } else {
                    this.f2274g.m3561a(f2268a);
                    return;
                }
            }
            this.f2274g.m3561a(f2269b);
            return;
        }
        throw new ad(this.f2277j, "Cannot test attribute of document");
    }

    public void m3581a(C0119y c0119y) {
        Vector vector = this.f2271d;
        this.f2270c.m3474b();
        Enumeration elements = vector.elements();
        while (elements.hasMoreElements()) {
            Object nextElement = elements.nextElement();
            if (nextElement instanceof C0131f) {
                for (C0129i d = ((C0131f) nextElement).m3465d(); d != null; d = d.m3438i()) {
                    if (d instanceof C0146u) {
                        this.f2270c.add(((C0146u) d).m3555a());
                    }
                }
            }
        }
    }

    public void m3582a(C0120z c0120z) {
        this.f2270c.m3474b();
        this.f2270c.add(this.f2275h, 1);
    }

    public String m3583b() {
        return this.f2271d.size() == 0 ? null : this.f2271d.elementAt(0).toString();
    }
}
