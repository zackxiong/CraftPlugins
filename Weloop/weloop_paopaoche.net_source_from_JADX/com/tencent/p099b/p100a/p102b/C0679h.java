package com.tencent.p099b.p100a.p102b;

import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.tencent.b.a.b.h */
public class C0679h {
    static final /* synthetic */ boolean f5183a;

    static {
        f5183a = !C0679h.class.desiredAssertionStatus();
    }

    private C0679h() {
    }

    public static byte[] m6956a(byte[] bArr) {
        int length = bArr.length;
        C0681j c0681j = new C0681j(new byte[((length * 3) / 4)]);
        if (!c0681j.m6958a(bArr, length)) {
            throw new IllegalArgumentException("bad base-64");
        } else if (c0681j.b == c0681j.a.length) {
            return c0681j.a;
        } else {
            Object obj = new byte[c0681j.b];
            System.arraycopy(c0681j.a, 0, obj, 0, c0681j.b);
            return obj;
        }
    }

    public static byte[] m6957b(byte[] bArr) {
        int length = bArr.length;
        C0682k c0682k = new C0682k();
        int i = (length / 3) * 4;
        if (!c0682k.f5195d) {
            switch (length % 3) {
                case ProGuard.styleable.View_android_theme /*0*/:
                    break;
                case ProGuard.styleable.View_android_focusable /*1*/:
                    i += 2;
                    break;
                case ProGuard.styleable.View_paddingStart /*2*/:
                    i += 3;
                    break;
                default:
                    break;
            }
        } else if (length % 3 > 0) {
            i += 4;
        }
        if (c0682k.f5196e && length > 0) {
            i += (c0682k.f5197f ? 2 : 1) * (((length - 1) / 57) + 1);
        }
        c0682k.a = new byte[i];
        c0682k.m6959a(bArr, length);
        if (f5183a || c0682k.b == i) {
            return c0682k.a;
        }
        throw new AssertionError();
    }
}
