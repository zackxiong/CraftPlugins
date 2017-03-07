package com.baidu.android.pushservice.p065a.p066a;

import android.net.Uri;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: com.baidu.android.pushservice.a.a.g */
public final class C0176g {
    public static String m4254a(String str) {
        C0176g.m4256a(str, "str");
        return C0176g.m4255a(str.getBytes());
    }

    public static String m4255a(byte[] bArr) {
        C0176g.m4256a(bArr, "data");
        StringBuilder stringBuilder = new StringBuilder();
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bArr);
            byte[] digest = instance.digest();
            for (byte b : digest) {
                String toHexString = Integer.toHexString(b & 255);
                if (toHexString.length() == 1) {
                    stringBuilder.append("0");
                }
                stringBuilder.append(toHexString);
            }
        } catch (NoSuchAlgorithmException e) {
        }
        return stringBuilder.toString();
    }

    public static void m4256a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(String.format("Argument '%s' cannot be null", new Object[]{str}));
        }
    }

    public static boolean m4257a(Uri uri) {
        if (uri != null) {
            String scheme = uri.getScheme();
            if (scheme != null && (scheme.equalsIgnoreCase("http") || scheme.equalsIgnoreCase("https"))) {
                return true;
            }
        }
        return false;
    }
}
