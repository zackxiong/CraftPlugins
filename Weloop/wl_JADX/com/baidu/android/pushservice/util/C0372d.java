package com.baidu.android.pushservice.util;

import java.io.DataInputStream;
import java.io.EOFException;
import java.io.InputStream;

/* renamed from: com.baidu.android.pushservice.util.d */
public class C0372d {
    byte[] f3602a;
    private DataInputStream f3603b;

    public C0372d(InputStream inputStream) {
        this.f3603b = new DataInputStream(inputStream);
        this.f3602a = new byte[8];
    }

    private int m5158a(int i) {
        int i2 = 0;
        while (i2 < i) {
            int read = this.f3603b.read(this.f3602a, i2, i - i2);
            if (read == -1) {
                return read;
            }
            i2 += read;
        }
        return i2;
    }

    public void m5159a() {
        this.f3603b.close();
    }

    public final void m5160a(byte[] bArr) {
        this.f3603b.readFully(bArr, 0, bArr.length);
    }

    public final int m5161b() {
        if (m5158a(4) >= 0) {
            return ((((this.f3602a[3] & 255) << 24) | ((this.f3602a[2] & 255) << 16)) | ((this.f3602a[1] & 255) << 8)) | (this.f3602a[0] & 255);
        }
        throw new EOFException();
    }

    public final short m5162c() {
        if (m5158a(2) >= 0) {
            return (short) (((this.f3602a[1] & 255) << 8) | (this.f3602a[0] & 255));
        }
        throw new EOFException();
    }

    public final long m5163d() {
        if (m5158a(8) < 0) {
            throw new EOFException();
        }
        return (((long) (((((this.f3602a[3] & 255) << 24) | ((this.f3602a[2] & 255) << 16)) | ((this.f3602a[1] & 255) << 8)) | (this.f3602a[0] & 255))) & 4294967295L) | ((((long) (((((this.f3602a[7] & 255) << 24) | ((this.f3602a[6] & 255) << 16)) | ((this.f3602a[5] & 255) << 8)) | (this.f3602a[4] & 255))) & 4294967295L) << 32);
    }
}
