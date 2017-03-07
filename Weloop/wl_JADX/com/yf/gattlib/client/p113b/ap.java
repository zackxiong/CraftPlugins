package com.yf.gattlib.client.p113b;

import com.tencent.mm.sdk.modelbase.BaseResp.ErrCode;
import com.yf.gattlib.p117p.ProGuard;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.ap */
public class ap extends ProGuard {
    private static final String f5767a;
    private ProGuard f5768b;
    private int f5769c;
    private int f5770d;
    private int f5771e;
    private int f5772f;
    private int f5773g;

    /* renamed from: com.yf.gattlib.client.b.ap.a */
    public interface ProGuard {
        void m7548a();

        void m7549b();

        void m7550c();

        void m7551d();
    }

    static {
        f5767a = ap.class.getSimpleName();
    }

    public ap(ProGuard proGuard, int i, int i2, int i3, int i4) {
        this.f5769c = 3;
        this.f5768b = proGuard;
        this.f5770d = i;
        this.f5771e = i3;
        this.f5772f = i2;
        this.f5773g = i4;
    }

    public void m7554a(byte[] bArr, Object... objArr) {
        ProGuard.m8292a(f5767a + " Accept value = " + ProGuard.m8289a(bArr));
        int a;
        switch (this.f5769c) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                a = com.yf.gattlib.client.ProGuard.m7990a(bArr);
                ProGuard.m8292a(f5767a + " STATE_WAITING_CMD,code=" + a + ",step=" + this.f5770d + ",calories=" + this.f5771e + ",distance=" + this.f5772f);
                if (a == 181) {
                    this.f5769c = 2;
                    byte[] a2 = ap.m7552a(this.f5770d, this.f5772f, this.f5771e, (short) this.f5773g);
                    ProGuard.m8289a(a2);
                    m7488a(a2);
                    return;
                }
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                a = com.yf.gattlib.client.ProGuard.m7990a(bArr);
                ProGuard.m8292a(f5767a + " STATE_WRITE_CMD,code2=" + a);
                if (a == 181) {
                    if (this.f5768b != null) {
                        this.f5768b.m7550c();
                    }
                    m7501i();
                    return;
                }
                break;
        }
        if (this.f5768b != null) {
            this.f5768b.m7551d();
        }
        m7501i();
    }

    public void m7555b() {
        if (this.f5768b != null) {
            this.f5768b.m7548a();
        }
        m7488a(com.yf.gattlib.client.ProGuard.m7994a("H2DR", 181, 15, 0));
        this.f5769c = 1;
    }

    public void m7553a(int i, int i2, int i3, Object... objArr) {
        if (com.yf.gattlib.client.p113b.p114a.ProGuard.m7480a(i)) {
            switch (i2) {
                case ErrCode.ERR_USER_CANCEL /*-2*/:
                    if (this.f5768b != null) {
                        this.f5768b.m7549b();
                        break;
                    }
                    break;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                    break;
                default:
                    if (this.f5768b != null) {
                        this.f5768b.m7551d();
                        break;
                    }
                    break;
            }
        }
        super.m7484a(i, i2, i3, objArr);
    }

    private static byte[] m7552a(int i, int i2, int i3, short s) {
        ByteBuffer allocate = ByteBuffer.allocate(15);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.rewind();
        allocate.putInt(i);
        allocate.putInt(i2);
        allocate.putInt(i3);
        allocate.putShort(s);
        allocate.rewind();
        byte[] array = allocate.array();
        ProGuard.m8319a(array);
        return array;
    }
}
