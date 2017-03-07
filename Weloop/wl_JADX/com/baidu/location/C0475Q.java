package com.baidu.location;

import java.text.SimpleDateFormat;

/* renamed from: com.baidu.location.Q */
class C0475Q implements C0452e {
    private static C0475Q f3937Z;
    private long f3938Y;
    private long f3939a;
    public long bs;
    public boolean bv;

    static {
        f3937Z = null;
    }

    private C0475Q() {
        this.bv = false;
        this.bs = 0;
        this.f3939a = 0;
        this.f3938Y = 0;
    }

    public static C0475Q m5711h() {
        if (f3937Z == null) {
            f3937Z = new C0475Q();
        }
        return f3937Z;
    }

    public void m5712i() {
        if (!this.bv) {
            this.f3939a = System.currentTimeMillis();
        }
    }

    public long m5713new(String str) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str).getTime();
        } catch (Exception e) {
            return -1;
        }
    }

    public void m5714try(String str) {
        if (!this.bv) {
            this.f3938Y = System.currentTimeMillis();
            long j = (this.f3938Y - this.f3939a) / 2;
            if (j <= 3000 && j >= 0) {
                long j2 = m5713new(str);
                if (j2 > 0) {
                    this.bs = (j + j2) - System.currentTimeMillis();
                    this.bv = false;
                }
            }
        }
    }
}
