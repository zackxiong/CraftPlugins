package com.p032a.p033a.p034a;

import java.io.Writer;

/* renamed from: com.a.a.a.u */
public class C0146u extends C0129i {
    private StringBuffer f2264a;

    public C0146u(String str) {
        this.f2264a = new StringBuffer(str);
    }

    public String m3555a() {
        return this.f2264a.toString();
    }

    void m3556a(Writer writer) {
        writer.write(this.f2264a.toString());
    }

    public void m3557a(char[] cArr, int i, int i2) {
        this.f2264a.append(cArr, i, i2);
        m3430b();
    }

    void m3558b(Writer writer) {
        String stringBuffer = this.f2264a.toString();
        if (stringBuffer.length() < 50) {
            C0129i.m3427a(writer, stringBuffer);
            return;
        }
        writer.write("<![CDATA[");
        writer.write(stringBuffer);
        writer.write("]]>");
    }

    protected int m3559c() {
        return this.f2264a.toString().hashCode();
    }

    public Object clone() {
        return new C0146u(this.f2264a.toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0146u)) {
            return false;
        }
        return this.f2264a.toString().equals(((C0146u) obj).f2264a.toString());
    }
}
