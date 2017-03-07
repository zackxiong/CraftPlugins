package com.baidu.android.pushservice.util;

import android.content.Context;
import android.content.Intent;

public final class Internal implements NoProGuard {
    private Internal() {
    }

    public static Intent createBdussInent(Context context) {
        return C0374f.m5219g(context);
    }

    public static void disablePushConnection(Context context) {
        C0374f.m5200b(context, false);
    }

    public static void disablePushService(Context context) {
        C0374f.m5187a(context, false);
    }

    public static void enablePushConnection(Context context) {
        C0374f.m5200b(context, true);
    }

    public static void enablePushService(Context context) {
        C0374f.m5187a(context, true);
    }
}
