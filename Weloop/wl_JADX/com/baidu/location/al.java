package com.baidu.location;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.umeng.update.util.ProGuard;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.regex.Pattern;

class al {

    /* renamed from: com.baidu.location.al.a */
    static class C0505a {
        public static String m5878a(byte[] bArr) {
            char[] cArr = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
            StringBuilder stringBuilder = new StringBuilder(bArr.length * 2);
            for (int i = 0; i < bArr.length; i++) {
                stringBuilder.append(cArr[(bArr[i] & 240) >> 4]);
                stringBuilder.append(cArr[bArr[i] & 15]);
            }
            return stringBuilder.toString();
        }
    }

    public static String m5879a(Context context) {
        String str = null;
        try {
            str = context.getPackageManager().getApplicationInfo(context.getPackageName(), ProGuard.f5670c).metaData.getString("com.baidu.lbsapi.API_KEY");
            if (!TextUtils.isEmpty(str)) {
                str = Pattern.compile("[&=]").matcher(str).replaceAll("");
            }
        } catch (Exception e) {
        }
        return str;
    }

    private static String m5880a(Context context, String str) {
        String a;
        String str2 = "";
        try {
            a = m5881a((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(context.getPackageManager().getPackageInfo(str, 64).signatures[0].toByteArray())));
        } catch (NameNotFoundException e) {
            a = str2;
        } catch (CertificateException e2) {
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

    static String m5881a(X509Certificate x509Certificate) {
        try {
            return C0505a.m5878a(m5882a(x509Certificate.getEncoded()));
        } catch (CertificateEncodingException e) {
            return null;
        }
    }

    static byte[] m5882a(byte[] bArr) {
        try {
            return MessageDigest.getInstance("SHA1").digest(bArr);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public static String m5883if(Context context) {
        String packageName = context.getPackageName();
        return m5880a(context, packageName) + ";" + packageName;
    }
}
