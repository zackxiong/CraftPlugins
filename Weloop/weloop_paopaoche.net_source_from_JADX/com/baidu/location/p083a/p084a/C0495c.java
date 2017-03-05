package com.baidu.location.p083a.p084a;

import java.security.MessageDigest;

/* renamed from: com.baidu.location.a.a.c */
public final class C0495c {
    public static String m5819a(byte[] bArr, String str, boolean z) {
        StringBuilder stringBuilder = new StringBuilder();
        for (byte b : bArr) {
            String toHexString = Integer.toHexString(b & 255);
            if (z) {
                toHexString = toHexString.toUpperCase();
            }
            if (toHexString.length() == 1) {
                stringBuilder.append("0");
            }
            stringBuilder.append(toHexString).append(str);
        }
        return stringBuilder.toString();
    }

    public static String m5820a(byte[] bArr, boolean z) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.reset();
            instance.update(bArr);
            return C0495c.m5819a(instance.digest(), "", z);
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }
}
