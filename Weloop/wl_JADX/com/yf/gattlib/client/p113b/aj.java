package com.yf.gattlib.client.p113b;

import com.tencent.mm.sdk.modelbase.BaseResp.ErrCode;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.aj */
public class aj extends ProGuard {
    private static final String f5753b;
    public ProGuard f5754a;
    private int f5755c;
    private byte[] f5756d;
    private int f5757e;

    /* renamed from: com.yf.gattlib.client.b.aj.a */
    public interface ProGuard {
        void m7528a();

        void m7529b();

        void m7530c();

        void m7531d();
    }

    static {
        f5753b = aj.class.getSimpleName();
    }

    public aj(ProGuard proGuard, byte[] bArr, int i) {
        this.f5755c = 2;
        this.f5757e = 0;
        this.f5757e = i;
        this.f5754a = proGuard;
        this.f5756d = bArr;
    }

    public void m7533a(byte[] bArr, Object... objArr) {
        switch (this.f5755c) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                if (com.yf.gattlib.client.ProGuard.m7990a(bArr) != 158 || this.f5756d == null || this.f5756d.length != 15) {
                    this.f5755c = 3;
                    break;
                }
                com.yf.gattlib.p117p.ProGuard.m8319a(this.f5756d);
                Object obj = " alarmData = " + com.yf.gattlib.p117p.ProGuard.m8242a(this.f5756d);
                com.yf.gattlib.p117p.ProGuard.m8292a(f5753b + obj);
                if (com.yf.gattlib.p117p.ProGuard.m8247a()) {
                    com.yf.gattlib.p117p.ProGuard.m8245a(obj);
                }
                m7488a(this.f5756d);
                this.f5755c = 4;
                return;
                break;
            case ProGuard.styleable.View_theme /*4*/:
                if (com.yf.gattlib.client.ProGuard.m7990a(bArr) != 158) {
                    this.f5755c = 3;
                    break;
                }
                m7495b(bArr);
                com.yf.gattlib.p117p.ProGuard.m8292a(f5753b + " finish");
                if (this.f5754a != null) {
                    this.f5754a.m7530c();
                }
                m7501i();
                return;
        }
        if (this.f5754a != null) {
            this.f5754a.m7531d();
        }
        m7501i();
    }

    public void m7534b() {
        if (this.f5754a != null) {
            this.f5754a.m7528a();
        }
        byte[] a = com.yf.gattlib.client.ProGuard.m7994a("H2DR", 158, 15, this.f5757e);
        com.yf.gattlib.p117p.ProGuard.m8292a(f5753b + " ObtainCommand = " + com.yf.gattlib.p117p.ProGuard.m8289a(a) + ", channel = " + this.f5757e);
        m7488a(a);
        this.f5755c = 1;
    }

    public void m7532a(int i, int i2, int i3, Object... objArr) {
        if (2 != i) {
            super.m7484a(i, i2, i3, objArr);
            return;
        }
        switch (i2) {
            case ErrCode.ERR_SENT_FAILED /*-3*/:
                if (this.f5754a != null) {
                    this.f5754a.m7531d();
                }
            case ErrCode.ERR_USER_CANCEL /*-2*/:
                if (this.f5754a != null) {
                    this.f5754a.m7529b();
                }
            case ProGuard.styleable.View_android_theme /*0*/:
            case ProGuard.styleable.View_theme /*4*/:
                if (this.f5754a != null) {
                    this.f5754a.m7531d();
                }
            default:
                if (this.f5754a != null) {
                    this.f5754a.m7531d();
                }
        }
    }
}
