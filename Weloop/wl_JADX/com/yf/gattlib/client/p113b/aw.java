package com.yf.gattlib.client.p113b;

import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.aw */
public abstract class aw extends ProGuard {
    private static final String f5739a;
    private final int f5740b;
    private final int f5741c;
    private final int f5742d;
    private int f5743e;

    protected abstract byte[] m7515c();

    protected abstract byte[] m7516q();

    public aw() {
        this.f5740b = 1;
        this.f5741c = 2;
        this.f5742d = 3;
    }

    static {
        f5739a = aw.class.getSimpleName();
    }

    public void m7513a(byte[] bArr, Object... objArr) {
        ProGuard.m8320b(bArr);
        switch (this.f5743e) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                ProGuard.m8293a(f5739a, "STATE_SENDING_START: " + ProGuard.m8289a(bArr));
                m7488a(m7516q());
                this.f5743e = 2;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                ProGuard.m8293a(f5739a, "STATE_SENDING_NAME: " + ProGuard.m8289a(bArr));
                m7501i();
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                m7501i();
            default:
                m7501i();
        }
    }

    public void m7514b() {
        byte[] c = m7515c();
        if (c == null) {
            throw new com.yf.gattlib.p120e.ProGuard("syncValue is empty");
        }
        this.f5743e = 1;
        m7488a(c);
    }
}
