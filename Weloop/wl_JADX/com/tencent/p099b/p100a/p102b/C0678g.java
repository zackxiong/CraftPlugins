package com.tencent.p099b.p100a.p102b;

import android.util.Base64;
import com.umeng.update.util.ProGuard;

/* renamed from: com.tencent.b.a.b.g */
public final class C0678g {
    public static byte[] m6953a(byte[] bArr) {
        return C0678g.m6954a(bArr, Base64.decode("MDNhOTc2NTExZTJjYmUzYTdmMjY4MDhmYjdhZjNjMDU=", 0));
    }

    private static byte[] m6954a(byte[] bArr, byte[] bArr2) {
        int i = 0;
        int[] iArr = new int[ProGuard.f5669b];
        int[] iArr2 = new int[ProGuard.f5669b];
        int length = bArr2.length;
        if (length <= 0 || length > ProGuard.f5669b) {
            throw new IllegalArgumentException("key must be between 1 and 256 bytes");
        }
        int i2;
        for (i2 = 0; i2 < ProGuard.f5669b; i2++) {
            iArr[i2] = i2;
            iArr2[i2] = bArr2[i2 % length];
        }
        i2 = 0;
        for (length = 0; length < ProGuard.f5669b; length++) {
            i2 = ((i2 + iArr[length]) + iArr2[length]) & 255;
            int i3 = iArr[length];
            iArr[length] = iArr[i2];
            iArr[i2] = i3;
        }
        byte[] bArr3 = new byte[bArr.length];
        i2 = 0;
        length = 0;
        while (i < bArr.length) {
            i2 = (i2 + 1) & 255;
            length = (length + iArr[i2]) & 255;
            i3 = iArr[i2];
            iArr[i2] = iArr[length];
            iArr[length] = i3;
            bArr3[i] = (byte) (iArr[(iArr[i2] + iArr[length]) & 255] ^ bArr[i]);
            i++;
        }
        return bArr3;
    }

    public static byte[] m6955b(byte[] bArr) {
        return C0678g.m6954a(bArr, Base64.decode("MDNhOTc2NTExZTJjYmUzYTdmMjY4MDhmYjdhZjNjMDU=", 0));
    }
}
