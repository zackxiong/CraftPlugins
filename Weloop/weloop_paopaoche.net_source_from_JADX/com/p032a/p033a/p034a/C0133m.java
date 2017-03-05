package com.p032a.p033a.p034a;

/* renamed from: com.a.a.a.m */
public class C0133m extends Exception {
    private int f2206a;
    private Throwable f2207b;

    public C0133m(C0137l c0137l, char c, char c2) {
        this(c0137l, new StringBuffer().append("got '").append(c).append("' instead of expected '").append(c2).append("'").toString());
    }

    public C0133m(C0137l c0137l, char c, String str) {
        this(c0137l, new StringBuffer().append("got '").append(c).append("' instead of ").append(str).append(" as expected").toString());
    }

    public C0133m(C0137l c0137l, char c, char[] cArr) {
        this(c0137l, new StringBuffer().append("got '").append(c).append("' instead of ").append(C0133m.m3469a(cArr)).toString());
    }

    public C0133m(C0137l c0137l, String str) {
        this(c0137l.m3547e(), c0137l.m3543a(), c0137l.m3544b(), c0137l.m3545c(), c0137l.m3546d(), str);
    }

    public C0133m(C0137l c0137l, String str, String str2) {
        this(c0137l, new StringBuffer().append("got \"").append(str).append("\" instead of \"").append(str2).append("\" as expected").toString());
    }

    public C0133m(C0137l c0137l, String str, char[] cArr) {
        this(c0137l, str, new String(cArr));
    }

    public C0133m(C0126o c0126o, String str, int i, int i2, String str2, String str3) {
        this(str, i, i2, str2, str3);
        c0126o.m3420a(str3, str, i);
    }

    public C0133m(String str, int i, int i2, String str2, String str3) {
        super(C0133m.m3468a(str, i, i2, str2, str3));
        this.f2206a = -1;
        this.f2207b = null;
        this.f2206a = i;
    }

    public C0133m(String str, Throwable th) {
        super(new StringBuffer().append(str).append(" ").append(th).toString());
        this.f2206a = -1;
        this.f2207b = null;
        this.f2207b = th;
    }

    static String m3467a(int i) {
        return i == -1 ? "EOF" : new StringBuffer().append("").append((char) i).toString();
    }

    private static String m3468a(String str, int i, int i2, String str2, String str3) {
        return new StringBuffer().append(str).append("(").append(i).append("): \n").append(str2).append("\nLast character read was '").append(C0133m.m3467a(i2)).append("'\n").append(str3).toString();
    }

    private static String m3469a(char[] cArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(cArr[0]);
        for (int i = 1; i < cArr.length; i++) {
            stringBuffer.append(new StringBuffer().append("or ").append(cArr[i]).toString());
        }
        return stringBuffer.toString();
    }

    public Throwable getCause() {
        return this.f2207b;
    }
}
