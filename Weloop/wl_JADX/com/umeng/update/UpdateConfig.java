package com.umeng.update;

import android.content.Context;
import p028c.p029a.ProGuard;

/* compiled from: ProGuard */
public class UpdateConfig {
    public static final String f5440a = "update";
    public static final String f5441b = "2.6.0.1.20150312";
    public static final String f5442c = "1.4";
    public static final String f5443d = "com.umeng.update.net.DownloadingService";
    public static final String f5444e = "com.umeng.update.UpdateDialogActivity";
    public static final String f5445f = "android.permission.WRITE_EXTERNAL_STORAGE";
    public static final String f5446g = "android.permission.ACCESS_NETWORK_STATE";
    public static final String f5447h = "android.permission.INTERNET";
    public static final String f5448i = "UMUpdateCheck";
    private static final String f5449j = "umeng_update";
    private static final String f5450k = "ignore";
    private static String f5451l;
    private static String f5452m;
    private static String f5453n;
    private static boolean f5454o;
    private static boolean f5455p;
    private static boolean f5456q;
    private static boolean f5457r;
    private static boolean f5458s;
    private static boolean f5459t;
    private static boolean f5460u;
    private static int f5461v;

    static {
        f5454o = true;
        f5455p = true;
        f5456q = false;
        f5457r = true;
        f5458s = false;
        f5459t = true;
        f5460u = true;
        f5461v = 0;
    }

    public static void setAppkey(String str) {
        f5451l = str;
    }

    public static void setChannel(String str) {
        f5452m = str;
    }

    public static void setDebug(boolean z) {
        ProGuard.f1873a = z;
    }

    public static String getAppkey(Context context) {
        if (f5451l == null) {
            f5451l = ProGuard.m2802f(context);
        }
        return f5451l;
    }

    public static String getChannel(Context context) {
        if (f5452m == null) {
            f5452m = ProGuard.m2804h(context);
        }
        return f5452m;
    }

    public static void saveIgnoreMd5(Context context, String str) {
        context.getApplicationContext().getSharedPreferences(f5449j, 0).edit().putString(f5450k, str).commit();
    }

    public static String getIgnoreMd5(Context context) {
        String string = context.getApplicationContext().getSharedPreferences(f5449j, 0).getString(f5450k, "");
        if ("".equals(string)) {
            return null;
        }
        return string;
    }

    public static boolean isUpdateOnlyWifi() {
        return f5454o;
    }

    public static void setUpdateOnlyWifi(boolean z) {
        f5454o = z;
    }

    public static boolean isUpdateAutoPopup() {
        return f5455p;
    }

    public static void setUpdateAutoPopup(boolean z) {
        f5455p = z;
    }

    public static boolean isUpdateForce() {
        return f5456q;
    }

    public static void setUpdateForce(boolean z) {
        f5456q = z;
    }

    public static boolean isDeltaUpdate() {
        return f5457r;
    }

    public static void setDeltaUpdate(boolean z) {
        f5457r = z;
    }

    public static boolean isSilentDownload() {
        return f5458s;
    }

    public static void setSilentDownload(boolean z) {
        f5458s = z;
    }

    public static int getStyle() {
        return f5461v;
    }

    public static void setStyle(int i) {
        f5461v = i;
    }

    public static boolean isUpdateCheck() {
        return f5459t;
    }

    public static void setUpdateCheck(boolean z) {
        f5459t = z;
    }

    public static boolean isRichNotification() {
        return f5460u;
    }

    public static void setRichNotification(boolean z) {
        f5460u = z;
    }

    public static String getSlotId() {
        return f5453n;
    }

    public static void setSlotId(String str) {
        f5453n = str;
    }
}
