package com.tencent.mm.sdk.p106b;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.Looper;
import android.os.Process;

/* renamed from: com.tencent.mm.sdk.b.a */
public final class C0723a {
    private static int level;
    public static C0726d f5371q;
    private static C0722a f5372r;
    private static C0722a f5373s;
    private static final String f5374t;

    /* renamed from: com.tencent.mm.sdk.b.a.a */
    public interface C0722a {
        void m7138e(String str, String str2);

        void m7139f(String str, String str2);

        void m7140g(String str, String str2);

        int m7141h();

        void m7142h(String str, String str2);
    }

    static {
        level = 6;
        C0722a c0724b = new C0724b();
        f5372r = c0724b;
        f5373s = c0724b;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("VERSION.RELEASE:[" + VERSION.RELEASE);
        stringBuilder.append("] VERSION.CODENAME:[" + VERSION.CODENAME);
        stringBuilder.append("] VERSION.INCREMENTAL:[" + VERSION.INCREMENTAL);
        stringBuilder.append("] BOARD:[" + Build.BOARD);
        stringBuilder.append("] DEVICE:[" + Build.DEVICE);
        stringBuilder.append("] DISPLAY:[" + Build.DISPLAY);
        stringBuilder.append("] FINGERPRINT:[" + Build.FINGERPRINT);
        stringBuilder.append("] HOST:[" + Build.HOST);
        stringBuilder.append("] MANUFACTURER:[" + Build.MANUFACTURER);
        stringBuilder.append("] MODEL:[" + Build.MODEL);
        stringBuilder.append("] PRODUCT:[" + Build.PRODUCT);
        stringBuilder.append("] TAGS:[" + Build.TAGS);
        stringBuilder.append("] TYPE:[" + Build.TYPE);
        stringBuilder.append("] USER:[" + Build.USER + "]");
        f5374t = stringBuilder.toString();
    }

    public static void m7143a(String str, String str2) {
        C0723a.m7144a(str, str2, null);
    }

    public static void m7144a(String str, String str2, Object... objArr) {
        if (f5373s != null && f5373s.m7141h() <= 4) {
            String format = objArr == null ? str2 : String.format(str2, objArr);
            if (format == null) {
                format = "";
            }
            String i = C0723a.m7149i(str);
            C0722a c0722a = f5373s;
            Process.myPid();
            Thread.currentThread().getId();
            Looper.getMainLooper().getThread().getId();
            c0722a.m7142h(i, format);
        }
    }

    public static void m7145b(String str, String str2) {
        if (f5373s != null && f5373s.m7141h() <= 3) {
            if (str2 == null) {
                str2 = "";
            }
            String i = C0723a.m7149i(str);
            C0722a c0722a = f5373s;
            Process.myPid();
            Thread.currentThread().getId();
            Looper.getMainLooper().getThread().getId();
            c0722a.m7140g(i, str2);
        }
    }

    public static void m7146c(String str, String str2) {
        if (f5373s != null && f5373s.m7141h() <= 2) {
            if (str2 == null) {
                str2 = "";
            }
            String i = C0723a.m7149i(str);
            C0722a c0722a = f5373s;
            Process.myPid();
            Thread.currentThread().getId();
            Looper.getMainLooper().getThread().getId();
            c0722a.m7138e(i, str2);
        }
    }

    public static void m7147d(String str, String str2) {
        if (f5373s != null && f5373s.m7141h() <= 1) {
            if (str2 == null) {
                str2 = "";
            }
            String i = C0723a.m7149i(str);
            C0722a c0722a = f5373s;
            Process.myPid();
            Thread.currentThread().getId();
            Looper.getMainLooper().getThread().getId();
            c0722a.m7139f(i, str2);
        }
    }

    private static String m7149i(String str) {
        return f5371q != null ? f5371q.m7156i(str) : str;
    }
}
