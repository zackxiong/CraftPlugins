package com.baidu.frontia.p075a.p081e;

import android.annotation.SuppressLint;
import java.security.Key;
import java.security.KeyFactory;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* renamed from: com.baidu.frontia.a.e.f */
public final class C0406f {
    @SuppressLint({"InlinedApi", "OldTargetApi"})
    public static byte[] m5359a(byte[] bArr, String str) {
        Key generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(C0401b.m5344a(str.getBytes())));
        Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        instance.init(2, generatePublic);
        return instance.doFinal(bArr);
    }

    @SuppressLint({"InlinedApi", "OldTargetApi"})
    public static byte[] m5360a(byte[] bArr, String str, int i) {
        Key generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(C0401b.m5344a(str.getBytes())));
        Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        instance.init(1, generatePublic);
        int i2 = i / 8;
        int i3 = i2 - 11;
        int length = bArr.length;
        Object obj = new byte[((((length + i3) - 1) / i3) * i2)];
        int i4 = 0;
        int i5 = 0;
        while (i5 < length) {
            int i6 = length - i5;
            if (i3 < i6) {
                i6 = i3;
            }
            Object obj2 = new byte[i6];
            System.arraycopy(bArr, i5, obj2, 0, i6);
            i5 += i6;
            System.arraycopy(instance.doFinal(obj2), 0, obj, i4, i2);
            i4 += i2;
        }
        return obj;
    }

    @SuppressLint({"InlinedApi", "OldTargetApi"})
    public static byte[] m5361b(byte[] bArr, String str) {
        Key generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(C0401b.m5344a(str.getBytes())));
        Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        instance.init(1, generatePublic);
        return instance.doFinal(bArr);
    }
}
