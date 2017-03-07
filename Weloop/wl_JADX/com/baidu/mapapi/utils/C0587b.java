package com.baidu.mapapi.utils;

import android.content.Context;
import java.io.File;

/* renamed from: com.baidu.mapapi.utils.b */
public class C0587b {
    static String f4616a;
    static String f4617b;
    static String f4618c;
    static int f4619d;
    static int f4620e;
    static int f4621f;
    private static C0594i f4622g;

    static {
        f4622g = null;
    }

    public static String m6378a() {
        String str = f4616a + "/BaiduMapSDK";
        if (str.length() != 0) {
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return str;
    }

    public static void m6379a(Context context) {
        if (f4622g == null) {
            f4622g = C0594i.m6413a();
            f4622g.m6417a(context);
        }
        if (f4616a == null || f4616a.length() <= 0) {
            f4616a = f4622g.m6419b().m6409a();
            f4617b = f4622g.m6419b().m6411c();
        } else {
            f4617b = f4616a + File.separator + "BaiduMapSDK" + File.separator + "cache";
        }
        f4618c = f4622g.m6419b().m6412d();
        f4619d = 20971520;
        f4620e = 52428800;
        f4621f = 5242880;
    }

    public static void m6380a(String str) {
        f4616a = str;
    }

    public static String m6381b() {
        return f4617b;
    }

    public static String m6382c() {
        return f4618c;
    }

    public static int m6383d() {
        return f4619d;
    }

    public static int m6384e() {
        return f4620e;
    }

    public static int m6385f() {
        return f4621f;
    }
}
