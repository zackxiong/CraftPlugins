package com.baidu.mapapi.utils;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

/* renamed from: com.baidu.mapapi.utils.a */
public class C0586a {

    /* renamed from: com.baidu.mapapi.utils.a.a */
    static class C0585a {
        public static String m6373a(byte[] bArr) {
            char[] cArr = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
            StringBuilder stringBuilder = new StringBuilder(bArr.length * 2);
            for (int i = 0; i < bArr.length; i++) {
                stringBuilder.append(cArr[(bArr[i] & 240) >> 4]);
                stringBuilder.append(cArr[bArr[i] & 15]);
            }
            return stringBuilder.toString();
        }
    }

    public static String m6374a(Context context) {
        String packageName = context.getPackageName();
        return C0586a.m6375a(context, packageName) + ";" + packageName;
    }

    private static String m6375a(Context context, String str) {
        String a;
        String str2 = "";
        try {
            a = C0586a.m6376a((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(context.getPackageManager().getPackageInfo(str, 64).signatures[0].toByteArray())));
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            a = str2;
        } catch (CertificateException e2) {
            e2.printStackTrace();
            a = str2;
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (i < a.length()) {
            stringBuffer.append(a.charAt(i));
            if (i > 0 && i % 2 == 1 && i < a.length() - 1) {
                stringBuffer.append(":");
            }
            i++;
        }
        return stringBuffer.toString();
    }

    static String m6376a(X509Certificate x509Certificate) {
        try {
            return C0585a.m6373a(C0586a.m6377a(x509Certificate.getEncoded()));
        } catch (CertificateEncodingException e) {
            return null;
        }
    }

    static byte[] m6377a(byte[] bArr) {
        try {
            return MessageDigest.getInstance("SHA1").digest(bArr);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }
}
