package com.baidu.location;

import com.baidu.location.p083a.p085b.C0497b;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class CommonEncrypt {
    public static boolean f3798a;

    static {
        try {
            System.loadLibrary("locSDK4d");
            f3798a = true;
        } catch (Exception e) {
            f3798a = false;
        }
        f3798a = true;
    }

    public static String m5528a(String str) {
        if (!f3798a) {
            return null;
        }
        try {
            return URLEncoder.encode(m5529a(encrypt(str.getBytes())), "UTF-8");
        } catch (Exception e) {
            return "";
        }
    }

    public static String m5529a(byte[] bArr) {
        try {
            return C0497b.m5823a(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            return "";
        }
    }

    public static native byte[] encrypt(byte[] bArr);
}
