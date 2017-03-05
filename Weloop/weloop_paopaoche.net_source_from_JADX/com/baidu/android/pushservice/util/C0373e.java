package com.baidu.android.pushservice.util;

import java.io.DataOutputStream;
import java.io.OutputStream;

/* renamed from: com.baidu.android.pushservice.util.e */
public class C0373e {
    byte[] f3604a;
    private DataOutputStream f3605b;

    public C0373e(OutputStream outputStream) {
        this.f3605b = new DataOutputStream(outputStream);
        this.f3604a = new byte[8];
    }

    public void m5164a() {
        this.f3605b.close();
    }

    public final void m5165a(int i) {
        this.f3604a[1] = (byte) (i >> 8);
        this.f3604a[0] = (byte) i;
        this.f3605b.write(this.f3604a, 0, 2);
    }

    public final void m5166a(long j) {
        this.f3604a[7] = (byte) ((int) (j >> 56));
        this.f3604a[6] = (byte) ((int) (j >> 48));
        this.f3604a[5] = (byte) ((int) (j >> 40));
        this.f3604a[4] = (byte) ((int) (j >> 32));
        this.f3604a[3] = (byte) ((int) (j >> 24));
        this.f3604a[2] = (byte) ((int) (j >> 16));
        this.f3604a[1] = (byte) ((int) (j >> 8));
        this.f3604a[0] = (byte) ((int) j);
        this.f3605b.write(this.f3604a, 0, 8);
    }

    public void m5167a(byte[] bArr) {
        this.f3605b.write(bArr);
    }

    public final void m5168b(int i) {
        this.f3604a[3] = (byte) (i >> 24);
        this.f3604a[2] = (byte) (i >> 16);
        this.f3604a[1] = (byte) (i >> 8);
        this.f3604a[0] = (byte) i;
        this.f3605b.write(this.f3604a, 0, 4);
    }
}
