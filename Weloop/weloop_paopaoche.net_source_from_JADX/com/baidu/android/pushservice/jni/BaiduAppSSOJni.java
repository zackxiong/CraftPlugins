package com.baidu.android.pushservice.jni;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.android.pushservice.util.NoProGuard;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p081e.C0400a;
import com.baidu.frontia.p075a.p081e.C0401b;
import com.baidu.frontia.p075a.p081e.C0402c;

public class BaiduAppSSOJni implements NoProGuard {
    private static final String TAG = "BaiduAppSSOJni";

    static {
        try {
            System.loadLibrary("bdpush_V2_3");
        } catch (UnsatisfiedLinkError e) {
            C0385a.m5313d(TAG, "Native library not found! Please copy libbdpush_V2_3.so into your project!");
        }
    }

    private static native byte[] encrypt(String str, String str2);

    public static String getDecrypted(String str, String str2) {
        if (str == null) {
            try {
                str = "";
            } catch (Exception e) {
                if (!C0192a.m4341b()) {
                    return null;
                }
                C0385a.m5311b(TAG, "getEncrypted: " + e);
                return null;
            }
        }
        byte[] key = getKey(str);
        if (key != null) {
            String str3;
            byte[] a = C0401b.m5344a(str2.getBytes());
            String str4 = new String(key, "utf-8");
            if (str4.length() > 0) {
                str3 = new String(C0400a.m5342b(str4.substring(16), str4.substring(0, 16), a), "utf-8");
            } else {
                str3 = null;
            }
            return str3;
        } else if (!C0192a.m4341b()) {
            return null;
        } else {
            C0385a.m5312c(TAG, "keyInfo null");
            return null;
        }
    }

    public static String getEncrypted(String str, String str2) {
        String str3 = null;
        if (str == null) {
            try {
                str = "";
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5311b(TAG, "getEncrypted: " + e);
                }
            }
        }
        byte[] key = getKey(str);
        if (key != null) {
            byte[] bytes = str2.getBytes();
            String str4 = new String(key, "utf-8");
            if (str4.length() > 0) {
                str3 = C0401b.m5343a(C0400a.m5341a(str4.substring(16), str4.substring(0, 16), bytes), "utf-8");
            }
        } else if (C0192a.m4341b()) {
            C0385a.m5312c(TAG, "keyInfo null");
        }
        return str3;
    }

    private static native byte[] getKey(String str);

    public static String getPushHash(Context context, String str, String str2, String str3) {
        String str4 = null;
        if (!(context == null || str == null || str2 == null)) {
            String str5 = str3 == null ? "other" : str3;
            String u = C0374f.m5247u(context.getApplicationContext(), str);
            if (u != null) {
                str4 = "";
                try {
                    str4 = C0401b.m5343a(getSsoHashNative(context, str, str2, u, C0402c.m5346a(context), str5, System.currentTimeMillis()), "utf-8");
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b(TAG, "getPushHashException: " + e);
                    }
                }
            } else if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "can not get singInfo for: " + str);
            }
        }
        return str4;
    }

    private static native byte[] getSsoHashNative(Context context, String str, String str2, String str3, String str4, String str5, long j);
}
