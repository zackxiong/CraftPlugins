package com.baidu.android.pushservice.richmedia;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.NameValuePair;
import org.apache.http.util.LangUtils;

/* renamed from: com.baidu.android.pushservice.richmedia.n */
public class C0347n {
    public String f3461a;
    public String f3462b;
    public String f3463c;
    public String f3464d;
    protected C0346a f3465e;
    public List<NameValuePair> f3466f;
    public boolean f3467g;
    public boolean f3468h;
    private C0344l f3469i;
    private String f3470j;
    private Map<String, String> f3471k;
    private String f3472l;
    private String f3473m;
    private String f3474n;

    /* renamed from: com.baidu.android.pushservice.richmedia.n.a */
    public enum C0346a {
        REQ_TYPE_GET_ZIP
    }

    public C0347n() {
        this.f3469i = C0344l.m5135a(C0347n.class.getName());
        this.f3471k = new HashMap();
        this.f3467g = true;
        this.f3468h = false;
        this.f3466f = new ArrayList();
    }

    public Map<String, String> m5138a() {
        return this.f3471k;
    }

    public void m5139a(C0346a c0346a) {
        this.f3465e = c0346a;
    }

    public void m5140a(String str) {
        this.f3472l = str;
    }

    public C0346a m5141b() {
        return this.f3465e;
    }

    public void m5142b(String str) {
        this.f3473m = str;
    }

    public String m5143c() {
        return this.f3472l == null ? "GET" : this.f3472l;
    }

    public String m5144d() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.f3473m != null) {
            stringBuffer.append(this.f3473m);
        }
        this.f3473m = stringBuffer.toString();
        return this.f3473m.endsWith("&") ? this.f3473m.substring(0, this.f3473m.length() - 1) : this.f3473m;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r5) {
        /*
        r4 = this;
        r0 = 1;
        r1 = 0;
        if (r4 != r5) goto L_0x0005;
    L_0x0004:
        return r0;
    L_0x0005:
        r2 = r5 instanceof com.baidu.android.pushservice.richmedia.C0347n;
        if (r2 == 0) goto L_0x0098;
    L_0x0009:
        r5 = (com.baidu.android.pushservice.richmedia.C0347n) r5;
        r2 = r4.f3470j;
        if (r2 != 0) goto L_0x004b;
    L_0x000f:
        r2 = r5.f3470j;
        if (r2 != 0) goto L_0x0049;
    L_0x0013:
        r2 = r4.f3465e;
        if (r2 != 0) goto L_0x0056;
    L_0x0017:
        r2 = r5.f3465e;
        if (r2 != 0) goto L_0x0049;
    L_0x001b:
        r2 = r4.f3471k;
        if (r2 != 0) goto L_0x0061;
    L_0x001f:
        r2 = r5.f3471k;
        if (r2 != 0) goto L_0x0049;
    L_0x0023:
        r2 = r4.f3472l;
        if (r2 != 0) goto L_0x006c;
    L_0x0027:
        r2 = r5.f3472l;
        if (r2 != 0) goto L_0x0049;
    L_0x002b:
        r2 = r4.f3473m;
        if (r2 != 0) goto L_0x0077;
    L_0x002f:
        r2 = r5.f3473m;
        if (r2 != 0) goto L_0x0049;
    L_0x0033:
        r2 = r4.f3474n;
        if (r2 != 0) goto L_0x0082;
    L_0x0037:
        r2 = r5.f3474n;
        if (r2 != 0) goto L_0x0049;
    L_0x003b:
        r2 = r4.f3466f;
        if (r2 != 0) goto L_0x008d;
    L_0x003f:
        r2 = r5.f3466f;
        if (r2 != 0) goto L_0x0049;
    L_0x0043:
        r2 = r4.f3468h;
        r3 = r5.f3468h;
        if (r2 == r3) goto L_0x0004;
    L_0x0049:
        r0 = r1;
        goto L_0x0004;
    L_0x004b:
        r2 = r4.f3470j;
        r3 = r5.f3470j;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0049;
    L_0x0055:
        goto L_0x0013;
    L_0x0056:
        r2 = r4.f3465e;
        r3 = r5.f3465e;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0049;
    L_0x0060:
        goto L_0x001b;
    L_0x0061:
        r2 = r4.f3471k;
        r3 = r5.f3471k;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0049;
    L_0x006b:
        goto L_0x0023;
    L_0x006c:
        r2 = r4.f3472l;
        r3 = r5.f3472l;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0049;
    L_0x0076:
        goto L_0x002b;
    L_0x0077:
        r2 = r4.f3473m;
        r3 = r5.f3473m;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0049;
    L_0x0081:
        goto L_0x0033;
    L_0x0082:
        r2 = r4.f3474n;
        r3 = r5.f3474n;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0049;
    L_0x008c:
        goto L_0x003b;
    L_0x008d:
        r2 = r4.f3466f;
        r3 = r5.f3466f;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0049;
    L_0x0097:
        goto L_0x0043;
    L_0x0098:
        r0 = r1;
        goto L_0x0004;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.richmedia.n.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, this.f3470j), this.f3465e), this.f3471k), this.f3472l), this.f3473m), this.f3474n), this.f3466f), this.f3468h);
    }
}
