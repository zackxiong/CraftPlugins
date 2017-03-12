package com.yf.gattlib.p110c;

import android.os.Build;
import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.yf.gattlib.c.e */
public class ProGuard {
    private static String f5715a;

    static {
        f5715a = "PhoneAdapter";
    }

    public static int m7418a() {
        return ProGuard.m7427h();
    }

    private static int m7427h() {
        if (ProGuard.m7445k() || ProGuard.m7447m() || ProGuard.m7446l() || ProGuard.m7443i() || ProGuard.m7455u()) {
            return 30;
        }
        if (ProGuard.m7456v()) {
            return 64;
        }
        if (ProGuard.m7453s()) {
            return 30;
        }
        if (ProGuard.m7457w()) {
            return 32;
        }
        return (ProGuard.m7458x() || ProGuard.m7428A() || !ProGuard.m7429B()) ? 30 : 30;
    }

    public static long m7420b() {
        if (ProGuard.m7452r() || ProGuard.m7459y() || ProGuard.m7453s() || ProGuard.m7448n()) {
            return 81000;
        }
        return 15100;
    }

    public static long m7422c() {
        if (ProGuard.m7453s()) {
            return 15100;
        }
        return 3100;
    }

    public static int m7423d() {
        if (ProGuard.m7446l()) {
            return 21;
        }
        if (ProGuard.m7447m()) {
            return 29;
        }
        if (ProGuard.m7449o()) {
            return 29;
        }
        if (ProGuard.m7450p()) {
            return 21;
        }
        if (ProGuard.m7453s()) {
            return 37;
        }
        if (ProGuard.m7456v()) {
            return 15;
        }
        if (ProGuard.m7443i()) {
            return 7;
        }
        if (ProGuard.m7457w()) {
            return 20;
        }
        if (ProGuard.m7442h()) {
            return 42;
        }
        if (ProGuard.m7441g()) {
            return 42;
        }
        if (ProGuard.m7455u()) {
            return 20;
        }
        return 11;
    }

    public static boolean m7424e() {
        if (ProGuard.m7444j() || ProGuard.m7451q() || ProGuard.m7459y() || ProGuard.m7460z()) {
            return false;
        }
        return true;
    }

    public static boolean m7425f() {
        return ProGuard.m7419a(Build.DISPLAY) || ProGuard.m7421b(Build.DISPLAY);
    }

    private static boolean m7419a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        CharSequence toLowerCase = str.toLowerCase();
        if (!toLowerCase.contains("flyme")) {
            return false;
        }
        Matcher matcher = Pattern.compile(" (\\d*)\\.(\\d*)\\.(\\d*)").matcher(toLowerCase);
        if (!matcher.find()) {
            return false;
        }
        int compareTo = matcher.group(1).compareTo("4");
        if (compareTo > 0) {
            return true;
        }
        if (compareTo < 0) {
            return false;
        }
        compareTo = matcher.group(2).compareTo("2");
        if (compareTo > 0) {
            return true;
        }
        if (compareTo < 0) {
            return false;
        }
        int compareTo2 = matcher.group(3).compareTo("8");
        if (compareTo2 > 0) {
            return true;
        }
        return compareTo2 < 0 ? false : false;
    }

    private static boolean m7421b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        CharSequence toLowerCase = str.toLowerCase();
        if (!toLowerCase.contains("flyme")) {
            return false;
        }
        Matcher matcher = Pattern.compile(" (\\d*)\\.(\\d*)\\.(\\d*)a").matcher(toLowerCase);
        if (!matcher.find()) {
            return false;
        }
        int compareTo = matcher.group(1).compareTo("4");
        if (compareTo > 0) {
            return true;
        }
        if (compareTo < 0) {
            return false;
        }
        compareTo = matcher.group(2).compareTo("2");
        if (compareTo > 0) {
            return true;
        }
        if (compareTo < 0) {
            return false;
        }
        int compareTo2 = matcher.group(3).compareTo("5");
        if (compareTo2 > 0) {
            return true;
        }
        return compareTo2 < 0 ? false : false;
    }

    public static String m7426g() {
        String str = "";
        if (ProGuard.m7446l()) {
            str = "com.miui.gallery";
        } else if (ProGuard.m7447m()) {
            str = "com.miui.gallery";
        } else if (ProGuard.m7449o()) {
            str = "com.oppo.gallery3d";
        } else if (ProGuard.m7450p()) {
            str = "";
        } else if (ProGuard.m7453s() || ProGuard.m7454t() || ProGuard.m7459y() || ProGuard.m7431D()) {
            str = "com.meizu.media.gallery";
        } else if (ProGuard.m7456v()) {
            str = "com.sec.android.gallery3d";
        } else if (ProGuard.m7443i()) {
            str = "com.sec.android.gallery3d";
        } else if (ProGuard.m7457w()) {
            str = "com.android.gallery3d";
        } else if (ProGuard.m7442h()) {
            str = "com.meizu.media.gallery";
        } else if (ProGuard.m7441g()) {
            str = "com.htc.album";
        } else if (ProGuard.m7445k()) {
            str = "com.google.android.gallery3d";
        } else if (ProGuard.m7440f()) {
            str = "com.miui.gallery";
        } else if (ProGuard.m7439e()) {
            str = "com.meizu.media.gallery";
        } else if (ProGuard.m7438d()) {
            str = "com.android.gallery3d";
        } else if (ProGuard.m7437c()) {
            str = "com.android.gallery3d";
        } else if (ProGuard.m7436b()) {
            str = "com.sonyericsson.album";
        } else if (ProGuard.m7433F()) {
            str = "com.oppo.gallery3d";
        } else if (ProGuard.m7432E()) {
            str = "com.android.gallery3d";
        } else if (ProGuard.m7435a()) {
            str = "com.android.gallery3d";
        }
        com.yf.gattlib.p117p.ProGuard.m8292a(f5715a + " \u624b\u673a\u578b\u53f7 = " + Build.MODEL + ", \u76f8\u518c\u5305\u540d = " + str);
        return str;
    }
}
