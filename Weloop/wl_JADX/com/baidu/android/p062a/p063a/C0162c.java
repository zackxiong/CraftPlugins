package com.baidu.android.p062a.p063a;

import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.nio.ByteBuffer;

/* renamed from: com.baidu.android.a.a.c */
public class C0162c {
    private long f2862a;
    private long f2863b;
    private ByteBuffer f2864c;
    private StringBuilder f2865d;
    private C0160a f2866e;
    private int f2867f;
    private boolean f2868g;

    C0162c() {
        this.f2862a = 60000;
        this.f2863b = System.currentTimeMillis();
        this.f2867f = -1;
        this.f2868g = false;
    }

    public static int m4150a(String str) {
        return str.startsWith("GET") ? 0 : str.startsWith("POST") ? 1 : str.startsWith("HEAD") ? 2 : 0;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int m4151a(java.nio.ByteBuffer r3, java.nio.ByteBuffer r4) {
        /*
        r2 = 4;
        r0 = 0;
        if (r3 == 0) goto L_0x0006;
    L_0x0004:
        if (r4 != 0) goto L_0x0007;
    L_0x0006:
        return r0;
    L_0x0007:
        r1 = r3.remaining();
        if (r1 < r2) goto L_0x001d;
    L_0x000d:
        r1 = r4.remaining();
        if (r1 < r2) goto L_0x001d;
    L_0x0013:
        r1 = r3.getInt();
        r4.putInt(r1);
        r0 = r0 + 4;
        goto L_0x0007;
    L_0x001d:
        r1 = r3.remaining();
        if (r1 <= 0) goto L_0x0006;
    L_0x0023:
        r1 = r4.remaining();
        if (r1 <= 0) goto L_0x0006;
    L_0x0029:
        r1 = r3.get();
        r4.put(r1);
        r0 = r0 + 1;
        goto L_0x0007;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.a.a.c.a(java.nio.ByteBuffer, java.nio.ByteBuffer):int");
    }

    public int m4152a(ByteBuffer byteBuffer) {
        if (this.f2868g) {
            return 0;
        }
        int remaining = byteBuffer.remaining();
        if (remaining <= 0) {
            return 0;
        }
        if (this.f2865d == null) {
            this.f2865d = new StringBuilder();
        }
        this.f2865d.append(new String(byteBuffer.array(), byteBuffer.position(), remaining));
        return remaining;
    }

    public C0160a m4153a() {
        return this.f2866e;
    }

    public void m4154a(long j) {
        this.f2862a = j;
    }

    public void m4155a(C0161b c0161b) {
        this.f2864c = ByteBuffer.wrap(c0161b.toString().getBytes());
        this.f2864c.rewind();
    }

    public int m4156b(ByteBuffer byteBuffer) {
        return this.f2868g ? 0 : C0162c.m4151a(this.f2864c, byteBuffer);
    }

    public boolean m4157b() {
        if (this.f2868g) {
            return true;
        }
        if (this.f2865d == null) {
            return false;
        }
        String stringBuilder = this.f2865d.toString();
        if (this.f2867f == -1) {
            this.f2867f = C0162c.m4150a(stringBuilder);
            if (this.f2867f == -1) {
                return false;
            }
        }
        if (this.f2867f == 0 || this.f2867f == 2) {
            if (stringBuilder.endsWith("\r\n\r\n")) {
                this.f2866e = new C0160a(this.f2865d.toString());
                return true;
            }
        } else if (this.f2867f == 1) {
            if (this.f2866e == null) {
                int indexOf = stringBuilder.indexOf("\r\n\r\n");
                if (indexOf != -1) {
                    stringBuilder = stringBuilder.substring(0, indexOf + 1);
                    this.f2866e = new C0160a(stringBuilder);
                    this.f2865d.delete(0, stringBuilder.getBytes().length);
                }
            }
            if (this.f2866e != null) {
                try {
                    if (this.f2865d.length() >= Integer.parseInt(this.f2866e.m4143a("Content-Length"))) {
                        this.f2866e.m4145a(this.f2865d.toString().getBytes());
                        this.f2865d = new StringBuilder();
                        return true;
                    }
                } catch (Throwable e) {
                    C0385a.m5309a("HttpSession", "Content-Length Parse Error \uff1a", e);
                    return true;
                }
            }
        }
        return false;
    }

    public boolean m4158c() {
        return this.f2868g ? true : (this.f2864c == null || this.f2864c.hasRemaining()) ? false : true;
    }

    public void m4159d() {
        this.f2868g = true;
    }

    public boolean m4160e() {
        return this.f2868g;
    }

    public boolean m4161f() {
        return this.f2862a != 0 && System.currentTimeMillis() - this.f2863b > this.f2862a;
    }

    void m4162g() {
        this.f2863b = System.currentTimeMillis();
    }
}
