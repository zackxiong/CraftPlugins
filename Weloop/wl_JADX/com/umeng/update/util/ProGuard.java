package com.umeng.update.util;

import android.content.Context;

/* renamed from: com.umeng.update.util.c */
public class ProGuard {
    private static float f5680a;

    static {
        f5680a = 1.0f;
    }

    public ProGuard(Context context) {
        ProGuard.m7342a(context);
    }

    public static void m7342a(Context context) {
        f5680a = context.getResources().getDisplayMetrics().density;
    }

    public static int m7341a(float f) {
        return (int) ((f5680a * f) + 0.5f);
    }

    public static int m7343b(float f) {
        return (int) ((f / f5680a) + 0.5f);
    }

    public static int m7344c(float f) {
        return (int) ((f5680a * f) + 0.5f);
    }

    public static int m7345d(float f) {
        return (int) ((f / f5680a) + 0.5f);
    }
}
