package com.p032a.p033a.p034a.p035a;

/* renamed from: com.a.a.a.a.i */
public abstract class C0104i extends C0100e {
    private final int f2157a;

    C0104i(String str, int i) {
        super(str);
        this.f2157a = i;
    }

    public double m3374a() {
        return (double) this.f2157a;
    }

    protected String m3375a(String str) {
        return new StringBuffer().append("[").append(super.toString()).append(str).append("'").append(this.f2157a).append("']").toString();
    }
}
