package com.yf.gattlib.client.p113b;

import android.os.Handler;
import android.os.HandlerThread;
import cn.sharesdk.framework.Platform;
import com.yf.gattlib.p117p.ProGuard;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.bl */
public class bl extends ProGuard {
    private static final String f5861a;
    private int f5862b;
    private final int f5863c;
    private final int f5864d;
    private final int f5865e;
    private final int f5866f;
    private final long f5867g;
    private ByteBuffer f5868h;
    private int f5869i;
    private int f5870j;
    private short f5871k;
    private short f5872l;
    private int f5873m;
    private int f5874n;
    private int f5875o;
    private long f5876p;
    private bk f5877q;
    private int f5878r;
    private byte f5879s;
    private HandlerThread f5880t;
    private Handler f5881u;
    private int f5882v;
    private Runnable f5883w;

    static {
        f5861a = bl.class.getSimpleName();
    }

    public bl(bk bkVar, int i, byte b) {
        this.f5863c = 16;
        this.f5864d = 64;
        this.f5865e = 1024;
        this.f5866f = 14;
        this.f5867g = 10000;
        this.f5883w = new bm(this);
        this.f5877q = bkVar;
        if (i < 0) {
            this.f5878r = 0;
        } else {
            this.f5878r = i;
        }
        if (b == null || b == (byte) 1) {
            this.f5879s = b;
        } else {
            this.f5879s = (byte) 1;
        }
        this.f5875o = 0;
        this.f5882v = 0;
        this.f5868h = null;
        ProGuard.m8292a(f5861a + " TransferFirmwareTransaction type, interval= " + this.f5879s + "," + this.f5878r);
    }

    private void m7628e() {
        if (this.f5880t == null) {
            this.f5880t = new HandlerThread("transher timeout");
            this.f5880t.start();
            this.f5881u = new Handler(this.f5880t.getLooper());
        }
    }

    private void m7629p() {
        ProGuard.m8293a(f5861a, "remove timeout");
        if (this.f5881u != null) {
            this.f5881u.removeCallbacks(this.f5883w);
        }
    }

    private void m7624a(long j) {
        ProGuard.m8293a(f5861a, "add timeout");
        if (this.f5881u != null) {
            this.f5881u.removeCallbacks(this.f5883w);
            this.f5881u.postDelayed(this.f5883w, j);
        }
    }

    private synchronized void m7630q() {
        HandlerThread handlerThread = this.f5880t;
        if (handlerThread != null) {
            m7629p();
            handlerThread.quit();
            this.f5881u = null;
            this.f5880t = null;
        }
    }

    public long m7642d() {
        return 3600000;
    }

    public void m7640a(byte[] bArr, Object... objArr) {
        switch (this.f5862b) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                ProGuard.m8292a(f5861a + " 1.onGetValue " + ProGuard.m8289a(bArr));
                m7629p();
                if (150 == com.yf.gattlib.client.ProGuard.m7990a(bArr)) {
                    ProGuard.m8293a(f5861a, "1.1 onGetValue ");
                    ProGuard.m8245a((Object) "ota: 1");
                    try {
                        m7635v();
                        m7634u();
                        this.f5862b = 2;
                        return;
                    } catch (Throwable e) {
                        ProGuard.m8298b(f5861a, "catch Exception");
                        ProGuard.m8245a((Object) "ota: catch Exception");
                        m7631r();
                        throw new com.yf.gattlib.p120e.ProGuard(e);
                    }
                }
                this.f5862b = -1;
                m7501i();
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                ProGuard.m8292a(f5861a + " 2.onGetValue " + ProGuard.m8289a(bArr));
                if (150 == com.yf.gattlib.client.ProGuard.m7990a(bArr)) {
                    try {
                        m7629p();
                        m7632s();
                        this.f5862b = 3;
                        return;
                    } catch (com.yf.gattlib.p120e.ProGuard e2) {
                        m7631r();
                        throw e2;
                    }
                }
                this.f5862b = -1;
                m7501i();
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                ProGuard.m8292a(f5861a + " 3.onGetValue " + ProGuard.m8289a(bArr));
                if (151 == com.yf.gattlib.client.ProGuard.m7990a(bArr)) {
                    this.f5862b = 4;
                    try {
                        this.f5876p = System.currentTimeMillis();
                        m7633t();
                        this.f5862b = 5;
                        return;
                    } catch (com.yf.gattlib.p120e.ProGuard e22) {
                        m7631r();
                        throw e22;
                    }
                }
                m7631r();
                m7501i();
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                ProGuard.m8292a(f5861a + " 5.onGetValue " + ProGuard.m8289a(bArr));
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                ProGuard.m8292a(f5861a + " 4.onGetValue curFrame = " + this.f5875o + ", \u603b\u6570\u636e = " + this.f5873m + ", " + ProGuard.m8289a(bArr));
                try {
                    this.f5875o++;
                    ProGuard.m8245a("ota: ++mCurFrame=" + this.f5875o);
                    if (this.f5875o > this.f5874n) {
                        m7638y();
                        if (this.f5877q != null) {
                            this.f5877q.m7622c();
                        }
                        m7501i();
                        return;
                    }
                    m7629p();
                    m7632s();
                    this.f5862b = 3;
                } catch (com.yf.gattlib.p120e.ProGuard e222) {
                    m7631r();
                    throw e222;
                }
            default:
                m7501i();
        }
    }

    private boolean m7631r() {
        this.f5862b = -1;
        m7638y();
        if (this.f5877q != null) {
            this.f5877q.m7621b();
        }
        return false;
    }

    public void m7641b() {
        byte[] a = com.yf.gattlib.client.ProGuard.m7994a("H2DR", 150, 14, 0);
        m7628e();
        m7629p();
        ProGuard.m8292a(f5861a + " 0. onStart");
        ProGuard.m8245a((Object) "ota: onStart");
        this.f5876p = -1;
        if (this.f5877q != null) {
            this.f5877q.m7619a();
        }
        m7624a(30000);
        m7488a(a);
        this.f5862b = 1;
    }

    private boolean m7632s() {
        int i = 64;
        if (this.f5875o >= this.f5874n) {
            if (this.f5875o == this.f5874n) {
                int i2 = this.f5869i % 1024;
                if (i2 != 0) {
                    i = i2 / 16;
                    if (i2 % 16 > 0) {
                        i++;
                    }
                }
            } else {
                ProGuard.m8245a("ota: requestSendingOneFrame error, mCurFrame=" + this.f5875o);
                return false;
            }
        }
        ProGuard.m8292a(f5861a + " requestSendingOneFrame mTransferringFrame, mCurFrame = " + this.f5882v + ", " + this.f5875o);
        ProGuard.m8245a("ota: requestSendingOneFrame, mTransferringFrame=" + this.f5882v + ", mCurFrame=" + this.f5875o + ", numOfPacket=" + i);
        this.f5882v = this.f5875o;
        m7488a(com.yf.gattlib.client.ProGuard.m7994a("H2DR", 151, (short) i, 0));
        return true;
    }

    private void m7633t() {
        byte[] bArr;
        ByteBuffer byteBuffer = this.f5868h;
        if (byteBuffer.remaining() > 1024) {
            bArr = new byte[1024];
        } else {
            bArr = new byte[byteBuffer.remaining()];
        }
        m7624a((long) ((this.f5878r + 990) * 64));
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        short a = com.yf.gattlib.client.ProGuard.m7991a(byteBuffer.array(), byteBuffer.position(), (short) -1);
        Object obj = "ota: sendOneFrame, crc=" + String.format("%04x", new Object[]{Short.valueOf(a)}) + ", mCurFrame=" + this.f5875o + ", mTransferringFrame=" + this.f5882v + ", cur buffer position=" + position + ", frameData.length=" + bArr.length;
        ProGuard.m8292a(f5861a + " sendOneFrame() " + obj);
        ProGuard.m8245a(obj);
        m7489a(bArr, 16, this.f5878r);
        this.f5877q.m7620a(this.f5869i, byteBuffer.position());
    }

    private void m7634u() {
        ByteBuffer allocate = ByteBuffer.allocate(14);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putInt(this.f5869i);
        allocate.putShort((short) 1024);
        allocate.putShort(this.f5872l);
        allocate.putShort(this.f5871k);
        allocate.putShort((short) (Platform.CUSTOMER_ACTION_MASK & (this.f5875o / 4)));
        allocate.put(this.f5879s);
        byte[] array = allocate.array();
        ProGuard.m8319a(array);
        String str = "ota: sendFirmwareMeta, , mFirmwareSize=" + this.f5869i + ", mFirmwareCrc16=" + String.format("%04x", new Object[]{Short.valueOf(this.f5872l)}) + ", mTransferCrc16=" + String.format("%04x", new Object[]{Short.valueOf(this.f5871k)}) + ", page=" + String.format("%04x", new Object[]{Short.valueOf(r1)}) + ", mTransferType=" + this.f5879s;
        ProGuard.m8245a((Object) str);
        ProGuard.m8292a(f5861a + " sendFirmwareMeta() " + str);
        m7488a(array);
        ProGuard.m8293a(f5861a, str);
    }

    private void m7635v() {
        ProGuard.m8245a((Object) "ota: initTransfer");
        ProGuard.m8292a(f5861a + " ota: initTransfer");
        if (this.f5868h == null) {
            m7636w();
        }
        m7637x();
    }

    private void m7636w() {
        ProGuard.m8245a((Object) "ota: loadFirmware");
        ProGuard.m8292a(f5861a + " ota: loadFirmware");
        InputStream d = this.f5877q.m7623d();
        ByteBuffer allocate = ByteBuffer.allocate(60000);
        byte[] bArr = new byte[4096];
        ProGuard.m8298b(f5861a, "1");
        ProGuard.m8245a((Object) "ota: 1");
        while (true) {
            try {
                int read = d.read(bArr);
                if (read <= 0) {
                    break;
                }
                ByteBuffer allocate2;
                if (allocate.remaining() < read) {
                    allocate2 = ByteBuffer.allocate(allocate.capacity() + 60000);
                    allocate2.put(allocate.array(), 0, allocate.position());
                } else {
                    allocate2 = allocate;
                }
                allocate2.put(bArr, 0, read);
                allocate = allocate2;
            } catch (Throwable e) {
                throw new com.yf.gattlib.p120e.ProGuard(e);
            } catch (Throwable th) {
                if (d != null) {
                    try {
                        d.close();
                    } catch (Throwable e2) {
                        ProGuard.m8295a(e2);
                    }
                }
            }
        }
        ProGuard.m8245a((Object) "ota: 2");
        allocate.limit(allocate.position());
        this.f5869i = allocate.position();
        allocate.position(0);
        this.f5873m = this.f5869i / 1024;
        if (this.f5869i % 1024 > 0) {
            this.f5873m++;
        }
        ProGuard.m8245a((Object) "ota: 3");
        this.f5874n = this.f5873m - 1;
        this.f5868h = allocate;
        this.f5872l = com.yf.gattlib.client.ProGuard.m7991a(allocate.array(), allocate.limit(), (short) -1);
        Object obj = "ota: loadFirmware, mFirmwareSize=" + this.f5869i + ", mNumOfFrame=" + this.f5873m + ", mLastFrameIndex=" + this.f5874n + ", mFirmwareCrc16=" + this.f5872l;
        ProGuard.m8245a(obj);
        ProGuard.m8292a(f5861a + " loadFirmware() " + obj);
        if (d != null) {
            try {
                d.close();
            } catch (Throwable e3) {
                ProGuard.m8295a(e3);
            }
        }
    }

    private void m7637x() {
        int i = (this.f5882v / 4) * 4;
        int i2 = i * 1024;
        this.f5870j = this.f5869i - i2;
        if (i2 == 0) {
            this.f5871k = (short) -1;
        } else {
            this.f5871k = com.yf.gattlib.client.ProGuard.m7991a(this.f5868h.array(), i2, (short) -1);
        }
        this.f5868h.position(i2);
        this.f5875o = i;
        Object obj = "ota: setTransferPosition, startFrame=" + i + ", begin=" + i2 + ", mNeedTransferSize=" + this.f5870j + ", mTransferCrc16=" + String.format("%04x", new Object[]{Short.valueOf(this.f5871k)}) + ", mTransferringFrame= " + this.f5882v;
        ProGuard.m8245a(obj);
        ProGuard.m8292a(f5861a + " setTransferPosition() " + obj);
    }

    public void m7639a(int i, int i2, int i3, Object... objArr) {
        if (2 == i) {
            m7638y();
        }
        super.m7484a(i, i2, i3, objArr);
    }

    private void m7638y() {
        m7630q();
    }
}
