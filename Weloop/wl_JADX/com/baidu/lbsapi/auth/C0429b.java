package com.baidu.lbsapi.auth;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import android.util.Base64;
import com.baidu.frontia.module.deeplink.GetApn;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Locale;

/* renamed from: com.baidu.lbsapi.auth.b */
class C0429b {

    /* renamed from: com.baidu.lbsapi.auth.b.a */
    static class C0428a {
        public static String m5447a(byte[] bArr) {
            char[] cArr = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
            StringBuilder stringBuilder = new StringBuilder(bArr.length * 2);
            for (int i = 0; i < bArr.length; i++) {
                stringBuilder.append(cArr[(bArr[i] & 240) >> 4]);
                stringBuilder.append(cArr[bArr[i] & 15]);
            }
            return stringBuilder.toString();
        }
    }

    static String m5448a() {
        return Locale.getDefault().getLanguage();
    }

    protected static String m5449a(Context context) {
        String packageName = context.getPackageName();
        return C0429b.m5450a(context, packageName) + ";" + packageName;
    }

    private static String m5450a(Context context, String str) {
        String a;
        String str2 = "";
        try {
            a = C0429b.m5451a((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(context.getPackageManager().getPackageInfo(str, 64).signatures[0].toByteArray())));
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

    static String m5451a(X509Certificate x509Certificate) {
        try {
            return C0428a.m5447a(C0429b.m5452a(x509Certificate.getEncoded()));
        } catch (CertificateEncodingException e) {
            return null;
        }
    }

    static byte[] m5452a(byte[] bArr) {
        try {
            return MessageDigest.getInstance("SHA1").digest(bArr);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    protected static String[] m5453b(Context context) {
        String packageName = context.getPackageName();
        String[] b = C0429b.m5454b(context, packageName);
        if (b == null || b.length <= 0) {
            return null;
        }
        String[] strArr = new String[b.length];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = b[i] + ";" + packageName;
            if (C0427a.f3727a) {
                C0427a.m5446a("mcode" + strArr[i]);
            }
        }
        return strArr;
    }

    private static String[] m5454b(Context context, String str) {
        String[] strArr;
        String[] strArr2;
        int i;
        StringBuffer stringBuffer;
        int i2;
        String[] strArr3 = null;
        try {
            String[] strArr4;
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(str, 64).signatures;
            if (signatureArr == null || signatureArr.length <= 0) {
                strArr4 = null;
            } else {
                strArr = new String[signatureArr.length];
                int i3 = 0;
                while (i3 < signatureArr.length) {
                    try {
                        strArr[i3] = C0429b.m5451a((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[i3].toByteArray())));
                        i3++;
                    } catch (NameNotFoundException e) {
                    } catch (CertificateException e2) {
                    }
                }
                strArr4 = strArr;
            }
            strArr2 = strArr4;
        } catch (NameNotFoundException e3) {
            strArr = null;
            strArr2 = strArr;
            strArr3 = new String[strArr2.length];
            i = 0;
            while (i < strArr2.length) {
                stringBuffer = new StringBuffer();
                i2 = 0;
                while (i2 < strArr2[i].length()) {
                    stringBuffer.append(strArr2[i].charAt(i2));
                    stringBuffer.append(":");
                    i2++;
                }
                strArr3[i] = stringBuffer.toString();
                i++;
            }
            return strArr3;
        } catch (CertificateException e4) {
            strArr = null;
            strArr2 = strArr;
            strArr3 = new String[strArr2.length];
            i = 0;
            while (i < strArr2.length) {
                stringBuffer = new StringBuffer();
                i2 = 0;
                while (i2 < strArr2[i].length()) {
                    stringBuffer.append(strArr2[i].charAt(i2));
                    stringBuffer.append(":");
                    i2++;
                }
                strArr3[i] = stringBuffer.toString();
                i++;
            }
            return strArr3;
        }
        if (strArr2 != null && strArr2.length > 0) {
            strArr3 = new String[strArr2.length];
            i = 0;
            while (i < strArr2.length) {
                stringBuffer = new StringBuffer();
                i2 = 0;
                while (i2 < strArr2[i].length()) {
                    stringBuffer.append(strArr2[i].charAt(i2));
                    if (i2 > 0 && i2 % 2 == 1 && i2 < strArr2[i].length() - 1) {
                        stringBuffer.append(":");
                    }
                    i2++;
                }
                strArr3[i] = stringBuffer.toString();
                i++;
            }
        }
        return strArr3;
    }

    static String m5455c(Context context) {
        String str = null;
        if (null == null || "".equals(null)) {
            str = context.getSharedPreferences("mac", 0).getString("macaddr", null);
            if (str == null) {
                str = C0429b.m5457d(context);
                if (str != null) {
                    str = Base64.encodeToString(str.getBytes(), 0);
                    if (!TextUtils.isEmpty(str)) {
                        context.getSharedPreferences("mac", 0).edit().putString("macaddr", str).commit();
                    }
                } else {
                    str = "";
                }
            }
        }
        if (C0427a.f3727a) {
            C0427a.m5446a("getMacID mac_adress: " + str);
        }
        return str;
    }

    private static boolean m5456c(Context context, String str) {
        boolean z = context.checkCallingOrSelfPermission(str) != -1;
        if (C0427a.f3727a) {
            C0427a.m5446a("hasPermission " + z + " | " + str);
        }
        return z;
    }

    static String m5457d(Context context) {
        Exception e;
        String macAddress;
        try {
            if (C0429b.m5456c(context, "android.permission.ACCESS_WIFI_STATE")) {
                macAddress = ((WifiManager) context.getSystemService(GetApn.APN_TYPE_WIFI)).getConnectionInfo().getMacAddress();
                try {
                    if (!TextUtils.isEmpty(macAddress)) {
                        Base64.encode(macAddress.getBytes(), 0);
                    }
                    if (!C0427a.f3727a) {
                        return macAddress;
                    }
                    C0427a.m5446a(String.format("ssid=%s mac=%s", new Object[]{r2.getSSID(), r2.getMacAddress()}));
                    return macAddress;
                } catch (Exception e2) {
                    e = e2;
                    if (C0427a.f3727a) {
                        return macAddress;
                    }
                    C0427a.m5446a(e.toString());
                    return macAddress;
                }
            }
            if (C0427a.f3727a) {
                C0427a.m5446a("You need the android.Manifest.permission.ACCESS_WIFI_STATE permission. Open AndroidManifest.xml and just before the final </manifest> tag add:android.permission.ACCESS_WIFI_STATE");
            }
            return null;
        } catch (Exception e3) {
            Exception exception = e3;
            macAddress = null;
            e = exception;
            if (C0427a.f3727a) {
                return macAddress;
            }
            C0427a.m5446a(e.toString());
            return macAddress;
        }
    }
}