package com.umeng.update.util;

import android.content.Context;
import java.io.File;
import p028c.p029a.ProGuard;

/* compiled from: ProGuard */
public class DeltaUpdate {
    private static boolean f5666a = false;
    private static final String f5667b = "bspatch";

    public static native int bspatch(String str, String str2, String str3);

    public static boolean m7339a() {
        return f5666a;
    }

    public static int m7337a(String str, String str2, String str3) {
        return bspatch(str, str2, str3);
    }

    public static String m7338a(Context context) {
        return context.getApplicationInfo().sourceDir;
    }

    public static String m7340b(Context context) {
        String a = m7338a(context);
        if (new File(a).exists()) {
            return ProGuard.m2851a(new File(a));
        }
        return "";
    }

    static {
        try {
            System.loadLibrary(f5667b);
            f5666a = true;
        } catch (UnsatisfiedLinkError e) {
            f5666a = false;
        }
    }
}
