package com.p032a.p033a.p034a.p035a;

import com.p032a.p033a.p034a.C0143r;

/* renamed from: com.a.a.a.a.b */
public abstract class C0101b extends C0100e {
    private final String f2156a;

    C0101b(String str, String str2) {
        super(str);
        this.f2156a = C0143r.m3552a(str2);
    }

    public String m3370a() {
        return this.f2156a;
    }

    protected String m3371a(String str) {
        return new StringBuffer().append("[").append(super.toString()).append(str).append("'").append(this.f2156a).append("']").toString();
    }
}
