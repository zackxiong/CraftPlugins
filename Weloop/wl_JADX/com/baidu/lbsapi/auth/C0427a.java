package com.baidu.lbsapi.auth;

import android.util.Log;

/* renamed from: com.baidu.lbsapi.auth.a */
class C0427a {
    public static boolean f3727a;

    static {
        f3727a = false;
    }

    public static String m5445a() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
        return stackTraceElement.getFileName() + "[" + stackTraceElement.getLineNumber() + "]";
    }

    public static void m5446a(String str) {
        if (Thread.currentThread().getStackTrace().length != 0) {
            Log.d(C0427a.m5445a(), str);
        }
    }
}
