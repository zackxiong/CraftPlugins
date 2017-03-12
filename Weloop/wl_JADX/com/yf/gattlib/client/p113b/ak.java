package com.yf.gattlib.client.p113b;

import android.text.TextUtils;
import android.util.Log;
import com.tencent.mm.sdk.modelbase.BaseResp.ErrCode;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.ak */
public class ak extends ProGuard {
    private static final String f5758a;
    private ProGuard f5759b;
    private String f5760c;
    private String f5761d;
    private int f5762e;

    /* renamed from: com.yf.gattlib.client.b.ak.a */
    public interface ProGuard {
        void m7535a();

        void m7536a(String str, String str2);

        void m7537b();

        void m7538c();

        void m7539d();
    }

    static {
        f5758a = ak.class.getSimpleName();
    }

    public void m7542a(byte[] bArr, Object... objArr) {
        int a;
        switch (this.f5762e) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                a = com.yf.gattlib.client.ProGuard.m7990a(bArr);
                Log.e(f5758a, "STATE_WAITING_CMD,code=" + a + ",beginTime=" + this.f5760c + ",endTime=" + this.f5761d);
                if (a == 173) {
                    this.f5762e = 2;
                    byte[] a2 = m7540a(this.f5760c, this.f5761d);
                    if (a2 == null) {
                        if (this.f5759b != null) {
                            this.f5759b.m7536a(this.f5760c, this.f5761d);
                        }
                        m7501i();
                        return;
                    }
                    com.yf.gattlib.p117p.ProGuard.m8289a(a2);
                    m7488a(a2);
                    return;
                }
                break;
            case ProGuard.styleable.View_paddingStart /*2*/:
                a = com.yf.gattlib.client.ProGuard.m7990a(bArr);
                Log.e(f5758a, "STATE_WRITE_CMD,code2=" + a);
                if (a == 173) {
                    if (this.f5759b != null) {
                        this.f5759b.m7538c();
                    }
                    m7501i();
                    return;
                }
                break;
        }
        if (this.f5759b != null) {
            this.f5759b.m7539d();
        }
        m7501i();
    }

    public ak(ProGuard proGuard, String str, String str2) {
        this.f5762e = 3;
        this.f5759b = proGuard;
        this.f5760c = str;
        this.f5761d = str2;
    }

    private byte[] m7540a(String str, String str2) {
        byte[] bArr = new byte[5];
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        String[] split = str.split(":");
        String[] split2 = str2.split(":");
        if (split == null || split.length != 2) {
            return null;
        }
        try {
            bArr[0] = Byte.parseByte(split[0]);
            try {
                bArr[1] = Byte.parseByte(split[1]);
                if (split2 == null || split2.length != 2) {
                    return null;
                }
                try {
                    bArr[2] = Byte.parseByte(split2[0]);
                    try {
                        bArr[3] = Byte.parseByte(split2[1]);
                        bArr[4] = (byte) (((bArr[0] + bArr[1]) + bArr[2]) + bArr[3]);
                        return bArr;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return null;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return null;
                }
            } catch (Exception e22) {
                e22.printStackTrace();
                return null;
            }
        } catch (Exception e222) {
            e222.printStackTrace();
            return null;
        }
    }

    public void m7541a(int i, int i2, int i3, Object... objArr) {
        if (2 != i) {
            super.m7484a(i, i2, i3, objArr);
            return;
        }
        switch (i2) {
            case ErrCode.ERR_SENT_FAILED /*-3*/:
                if (this.f5759b != null) {
                    this.f5759b.m7539d();
                }
            case ErrCode.ERR_USER_CANCEL /*-2*/:
                if (this.f5759b != null) {
                    this.f5759b.m7537b();
                }
            case ProGuard.styleable.View_android_theme /*0*/:
            case ProGuard.styleable.View_theme /*4*/:
                if (this.f5759b != null) {
                    this.f5759b.m7539d();
                }
            default:
                if (this.f5759b != null) {
                    this.f5759b.m7539d();
                }
        }
    }

    public void m7543b() {
        if (this.f5759b != null) {
            this.f5759b.m7535a();
        }
        m7488a(com.yf.gattlib.client.ProGuard.m7994a("H2DR", 173, 5, 0));
        this.f5762e = 1;
    }
}
