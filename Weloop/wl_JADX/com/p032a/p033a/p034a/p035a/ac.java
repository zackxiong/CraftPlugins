package com.p032a.p033a.p034a.p035a;

import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Stack;

/* renamed from: com.a.a.a.a.ac */
public class ac {
    private static Hashtable f2150d;
    private Stack f2151a;
    private boolean f2152b;
    private String f2153c;

    static {
        f2150d = new Hashtable();
    }

    private ac(String str) {
        this(str, new InputStreamReader(new ByteArrayInputStream(str.getBytes())));
    }

    private ac(String str, Reader reader) {
        this.f2151a = new Stack();
        try {
            boolean z;
            this.f2153c = str;
            C0113s c0113s = new C0113s(reader);
            c0113s.m3391a('/');
            c0113s.m3391a('.');
            c0113s.m3392a(':', ':');
            c0113s.m3392a('_', '_');
            if (c0113s.m3390a() == 47) {
                this.f2152b = true;
                if (c0113s.m3390a() == 47) {
                    c0113s.m3390a();
                    z = true;
                } else {
                    z = false;
                }
            } else {
                this.f2152b = false;
                z = false;
            }
            this.f2151a.push(new C0114t(this, z, c0113s));
            while (c0113s.f2162a == 47) {
                if (c0113s.m3390a() == 47) {
                    c0113s.m3390a();
                    z = true;
                } else {
                    z = false;
                }
                this.f2151a.push(new C0114t(this, z, c0113s));
            }
            if (c0113s.f2162a != -1) {
                throw new ad(this, "at end of XPATH expression", c0113s, "end of expression");
            }
        } catch (Exception e) {
            throw new ad(this, e);
        }
    }

    private ac(boolean z, C0114t[] c0114tArr) {
        this.f2151a = new Stack();
        for (Object addElement : c0114tArr) {
            this.f2151a.addElement(addElement);
        }
        this.f2152b = z;
        this.f2153c = null;
    }

    public static ac m3362a(String str) {
        ac acVar;
        synchronized (f2150d) {
            acVar = (ac) f2150d.get(str);
            if (acVar == null) {
                acVar = new ac(str);
                f2150d.put(str, acVar);
            }
        }
        return acVar;
    }

    private String m3363d() {
        StringBuffer stringBuffer = new StringBuffer();
        Enumeration elements = this.f2151a.elements();
        Object obj = 1;
        while (elements.hasMoreElements()) {
            C0114t c0114t = (C0114t) elements.nextElement();
            if (obj == null || this.f2152b) {
                stringBuffer.append('/');
                if (c0114t.m3394a()) {
                    stringBuffer.append('/');
                }
            }
            stringBuffer.append(c0114t.toString());
            obj = null;
        }
        return stringBuffer.toString();
    }

    public boolean m3364a() {
        return this.f2152b;
    }

    public boolean m3365b() {
        return ((C0114t) this.f2151a.peek()).m3395b();
    }

    public Enumeration m3366c() {
        return this.f2151a.elements();
    }

    public Object clone() {
        C0114t[] c0114tArr = new C0114t[this.f2151a.size()];
        Enumeration elements = this.f2151a.elements();
        for (int i = 0; i < c0114tArr.length; i++) {
            c0114tArr[i] = (C0114t) elements.nextElement();
        }
        return new ac(this.f2152b, c0114tArr);
    }

    public String toString() {
        if (this.f2153c == null) {
            this.f2153c = m3363d();
        }
        return this.f2153c;
    }
}
