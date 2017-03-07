package com.baidu.android.pushservice;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;

/* renamed from: com.baidu.android.pushservice.a */
public final class C0192a {
    public static int f2940a;
    public static int f2941b;
    public static int f2942c;
    public static int f2943d;

    static {
        f2940a = 600;
        f2941b = 30;
        f2942c = 3;
        f2943d = 0;
    }

    public static short m4336a() {
        return (short) 40;
    }

    public static void m4337a(Context context, Intent intent) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("Constants", "start service: com.baidu.android.pushservice.PushService");
        }
        try {
            intent.setClassName(context.getPackageName(), "com.baidu.android.pushservice.PushService");
            context.startService(intent);
        } catch (Exception e) {
            if (C0192a.m4341b()) {
                e.printStackTrace();
            }
        }
    }

    public static void m4338a(Context context, boolean z) {
        int i = 40;
        if (z) {
            i = 0;
        }
        Editor edit = context.getSharedPreferences("pst", 4).edit();
        edit.putInt("com.baidu.push.nd_restart", i);
        edit.commit();
    }

    public static boolean m4339a(Context context) {
        try {
            return System.getInt(context.getContentResolver(), "com.baidu.android.pushservice.PushSettings.internal_debug_mode") == 1;
        } catch (SettingNotFoundException e) {
            return false;
        }
    }

    public static void m4340b(Context context, boolean z) {
        String str;
        SharedPreferences sharedPreferences = context.getSharedPreferences("pst", 4);
        if (z) {
            if ("disabled".equals(C0192a.m4343c(context))) {
                C0192a.m4338a(context, true);
            }
            str = "enabled";
        } else {
            str = "disabled";
        }
        Editor edit = sharedPreferences.edit();
        edit.putString("s_e", str);
        edit.commit();
    }

    public static boolean m4341b() {
        return PushSettings.m4222c();
    }

    public static boolean m4342b(Context context) {
        return 40 > context.getSharedPreferences("pst", 4).getInt("com.baidu.push.nd_restart", 0);
    }

    public static String m4343c(Context context) {
        return context.getSharedPreferences("pst", 4).getString("s_e", "default");
    }

    public static void m4344c(Context context, boolean z) {
        Editor edit = context.getSharedPreferences("pst", 0).edit();
        edit.putBoolean("c_e", z);
        edit.commit();
    }
}
