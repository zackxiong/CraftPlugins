package com.p032a.p033a.p034a;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.a.a.a.i */
public abstract class C0129i {
    private C0130d f2188a;
    private C0131f f2189b;
    private C0129i f2190c;
    private C0129i f2191d;
    private Object f2192e;
    private int f2193f;

    public C0129i() {
        this.f2188a = null;
        this.f2189b = null;
        this.f2190c = null;
        this.f2191d = null;
        this.f2192e = null;
        this.f2193f = 0;
    }

    protected static void m3427a(Writer writer, String str) {
        int i = 0;
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            String str2;
            char charAt = str.charAt(i2);
            if (charAt < '\u0080') {
                switch (charAt) {
                    case ProGuard.styleable.Theme_actionModePasteDrawable /*34*/:
                        str2 = "&quot;";
                        break;
                    case ProGuard.styleable.Theme_actionModeWebSearchDrawable /*38*/:
                        str2 = "&amp;";
                        break;
                    case ProGuard.styleable.Theme_actionModePopupWindowStyle /*39*/:
                        str2 = "&#39;";
                        break;
                    case ProGuard.styleable.Theme_popupWindowStyle /*60*/:
                        str2 = "&lt;";
                        break;
                    case ProGuard.styleable.Theme_editTextBackground /*62*/:
                        str2 = "&gt;";
                        break;
                    default:
                        str2 = null;
                        break;
                }
            }
            str2 = new StringBuffer().append("&#").append(charAt).append(";").toString();
            if (str2 != null) {
                writer.write(str, i, i2 - i);
                writer.write(str2);
                i = i2 + 1;
            }
        }
        if (i < length) {
            writer.write(str, i, length - i);
        }
    }

    void m3428a(C0130d c0130d) {
        this.f2188a = c0130d;
    }

    abstract void m3429a(Writer writer);

    void m3430b() {
        this.f2193f = 0;
        if (this.f2188a != null) {
            this.f2188a.m3448b();
        }
    }

    void m3431b(C0131f c0131f) {
        this.f2189b = c0131f;
    }

    abstract void m3432b(Writer writer);

    protected abstract int m3433c();

    public abstract Object clone();

    void m3434d(C0129i c0129i) {
        this.f2190c = c0129i;
        if (c0129i != null) {
            c0129i.f2191d = this;
        }
    }

    public C0130d m3435f() {
        return this.f2188a;
    }

    public C0131f m3436g() {
        return this.f2189b;
    }

    public C0129i m3437h() {
        return this.f2190c;
    }

    public int hashCode() {
        if (this.f2193f == 0) {
            this.f2193f = m3433c();
        }
        return this.f2193f;
    }

    public C0129i m3438i() {
        return this.f2191d;
    }

    void m3439j() {
        if (this.f2190c != null) {
            this.f2190c.f2191d = this.f2191d;
        }
        if (this.f2191d != null) {
            this.f2191d.f2190c = this.f2190c;
        }
        this.f2191d = null;
        this.f2190c = null;
    }

    public String m3440k() {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Writer outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream);
        m3432b(outputStreamWriter);
        outputStreamWriter.flush();
        return new String(byteArrayOutputStream.toByteArray());
    }

    public String toString() {
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Writer outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream);
            m3429a(outputStreamWriter);
            outputStreamWriter.flush();
            return new String(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            return super.toString();
        }
    }
}
