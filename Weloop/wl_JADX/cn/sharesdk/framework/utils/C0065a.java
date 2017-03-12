package cn.sharesdk.framework.utils;

import android.util.Base64;
import java.net.URLEncoder;
import java.security.Key;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: cn.sharesdk.framework.utils.a */
public class C0065a {
    private static C0068d f2095a;

    static {
        f2095a = new C0068d();
    }

    public static String m3202a(byte[] bArr) {
        return C0065a.m3203a(bArr, 0, bArr.length);
    }

    public static String m3203a(byte[] bArr, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        while (i < i2) {
            stringBuffer.append(String.format("%02x", new Object[]{Byte.valueOf(bArr[i])}));
            i++;
        }
        return stringBuffer.toString();
    }

    public static byte[] m3204a(String str) {
        byte[] bytes = str.getBytes("utf-8");
        MessageDigest instance = MessageDigest.getInstance("SHA-1");
        instance.update(bytes);
        return instance.digest();
    }

    public static byte[] m3205a(String str, String str2) {
        Object bytes = str.getBytes("UTF-8");
        Object obj = new byte[16];
        System.arraycopy(bytes, 0, obj, 0, Math.min(bytes.length, 16));
        byte[] bytes2 = str2.getBytes("UTF-8");
        Key secretKeySpec = new SecretKeySpec(obj, "AES");
        Cipher instance = Cipher.getInstance("AES/ECB/PKCS7Padding", "BC");
        instance.init(1, secretKeySpec);
        byte[] bArr = new byte[instance.getOutputSize(bytes2.length)];
        instance.doFinal(bArr, instance.update(bytes2, 0, bytes2.length, bArr, 0));
        return bArr;
    }

    public static byte[] m3206a(byte[] bArr, String str) {
        byte[] bytes = str.getBytes("UTF-8");
        Key secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher instance = Cipher.getInstance("AES/ECB/PKCS7Padding", "BC");
        instance.init(1, secretKeySpec);
        byte[] bArr2 = new byte[instance.getOutputSize(bytes.length)];
        instance.doFinal(bArr2, instance.update(bytes, 0, bytes.length, bArr2, 0));
        return bArr2;
    }

    public static byte[] m3207a(byte[] bArr, byte[] bArr2) {
        Object obj = new byte[16];
        System.arraycopy(bArr, 0, obj, 0, Math.min(bArr.length, 16));
        Key secretKeySpec = new SecretKeySpec(obj, "AES");
        Cipher instance = Cipher.getInstance("AES/ECB/NoPadding", "BC");
        instance.init(2, secretKeySpec);
        byte[] bArr3 = new byte[instance.getOutputSize(bArr2.length)];
        int update = instance.update(bArr2, 0, bArr2.length, bArr3, 0);
        int doFinal = instance.doFinal(bArr3, update) + update;
        return bArr3;
    }

    public static String m3208b(String str) {
        if (str == null) {
            return null;
        }
        byte[] c = C0065a.m3211c(str);
        return c != null ? C0067c.m3247a(c) : null;
    }

    public static String m3209b(String str, String str2) {
        String encodeToString;
        Throwable th;
        try {
            encodeToString = Base64.encodeToString(C0065a.m3205a(str2, str), 0);
            try {
                if (encodeToString.contains("\n")) {
                    encodeToString = encodeToString.replace("\n", "");
                }
            } catch (Throwable th2) {
                th = th2;
                C0071e.m3269c(th);
                return encodeToString;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            encodeToString = null;
            th = th4;
            C0071e.m3269c(th);
            return encodeToString;
        }
        return encodeToString;
    }

    public static String m3210c(String str, String str2) {
        return URLEncoder.encode(str, str2).replace("+", "%20");
    }

    public static byte[] m3211c(String str) {
        byte[] bArr = null;
        if (str != null) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(str.getBytes("utf-8"));
                bArr = instance.digest();
            } catch (Throwable e) {
                C0071e.m3269c(e);
            }
        }
        return bArr;
    }

    public static String m3212d(String str) {
        try {
            return C0065a.m3210c(str, "utf-8");
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return null;
        }
    }
}
