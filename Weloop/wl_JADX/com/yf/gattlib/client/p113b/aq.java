package com.yf.gattlib.client.p113b;

import android.util.Log;
import com.tencent.mm.sdk.modelbase.BaseResp.ErrCode;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.aq */
public class aq extends ProGuard {
    private static final String f5774a;
    private ProGuard f5775b;
    private int f5776c;
    private int f5777d;
    private int f5778e;
    private int f5779f;

    /* renamed from: com.yf.gattlib.client.b.aq.a */
    public interface ProGuard {
        void m7556a();

        void m7557b();

        void m7558c();

        void m7559d();
    }

    static {
        f5774a = aq.class.getSimpleName();
    }

    public aq(ProGuard proGuard, int i, int i2, int i3) {
        this.f5778e = -1;
        this.f5779f = 3;
        this.f5775b = proGuard;
        this.f5776c = i;
        this.f5777d = i2;
        this.f5778e = i3;
    }

    public void m7561a(byte[] bArr, Object... objArr) {
        int a;
        switch (this.f5779f) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                a = com.yf.gattlib.client.ProGuard.m7990a(bArr);
                Log.e(f5774a, "STATE_WAITING_CMD,code=" + a + ",height=" + this.f5777d + ",weight=" + this.f5776c);
                if (a == 180) {
                    this.f5779f = 2;
                    byte[] bArr2 = this.f5778e < 0 ? new byte[]{(byte) this.f5777d, (byte) this.f5776c, (byte) 0} : new byte[]{(byte) this.f5777d, (byte) this.f5776c, (byte) this.f5778e, (byte) (this.f5778e >> 8), (byte) 0};
                    com.yf.gattlib.p117p.ProGuard.m8319a(bArr2);
                    com.yf.gattlib.p117p.ProGuard.m8289a(bArr2);
                    m7488a(bArr2);
                    return;
                }
                break;
            case ProGuard.styleable.View_paddingStart /*2*/:
                a = com.yf.gattlib.client.ProGuard.m7990a(bArr);
                Log.e(f5774a, "STATE_WRITE_CMD,code2=" + a);
                if (a == 180) {
                    if (this.f5775b != null) {
                        this.f5775b.m7558c();
                    }
                    m7501i();
                    return;
                }
                break;
        }
        if (this.f5775b != null) {
            this.f5775b.m7559d();
        }
        m7501i();
    }

    public void m7562b() {
        if (this.f5775b != null) {
            this.f5775b.m7556a();
        }
        int i = 3;
        if (this.f5778e > 0) {
            i = 5;
        }
        m7488a(com.yf.gattlib.client.ProGuard.m7994a("H2DR", 180, i, 0));
        this.f5779f = 1;
    }

    public void m7560a(int i, int i2, int i3, Object... objArr) {
        if (!com.yf.gattlib.client.p113b.p114a.ProGuard.m7480a(i)) {
            super.m7484a(i, i2, i3, objArr);
        } else if (!com.yf.gattlib.client.p113b.p114a.ProGuard.m7482b(i, i2)) {
            switch (i2) {
                case ErrCode.ERR_USER_CANCEL /*-2*/:
                    if (this.f5775b != null) {
                        this.f5775b.m7557b();
                    }
                case ProGuard.styleable.View_theme /*4*/:
                    if (this.f5775b != null) {
                        this.f5775b.m7559d();
                    }
                default:
                    if (this.f5775b != null) {
                        this.f5775b.m7557b();
                    }
            }
        }
    }
}
