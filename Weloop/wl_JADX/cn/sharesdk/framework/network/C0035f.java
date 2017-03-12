package cn.sharesdk.framework.network;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: cn.sharesdk.framework.network.f */
public class C0035f extends C0031d {
    private ArrayList<C0031d> f1979a;

    public C0035f() {
        this.f1979a = new ArrayList();
    }

    public C0035f m3004a(C0031d c0031d) {
        this.f1979a.add(c0031d);
        return this;
    }

    protected InputStream m3005a() {
        InputStream c0036g = new C0036g();
        Iterator it = this.f1979a.iterator();
        while (it.hasNext()) {
            c0036g.m3008a(((C0031d) it.next()).m2994a());
        }
        return c0036g;
    }

    protected long m3006b() {
        Iterator it = this.f1979a.iterator();
        long j = 0;
        while (it.hasNext()) {
            j = ((C0031d) it.next()).m2995b() + j;
        }
        return j;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = this.f1979a.iterator();
        while (it.hasNext()) {
            stringBuilder.append(((C0031d) it.next()).toString());
        }
        return stringBuilder.toString();
    }
}
