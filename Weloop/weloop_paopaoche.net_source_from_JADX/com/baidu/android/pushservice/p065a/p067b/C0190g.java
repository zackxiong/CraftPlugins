package com.baidu.android.pushservice.p065a.p067b;

import android.content.Context;
import com.baidu.android.pushservice.PushConstants;

/* renamed from: com.baidu.android.pushservice.a.b.g */
public class C0190g {
    static int m4320a(Context context, String str) {
        return context.getApplicationContext().getResources().getIdentifier(str, "id", context.getApplicationContext().getPackageName());
    }

    static boolean m4321a(Context context) {
        return (C0190g.m4322b(context, "advertise_advance_bigstyle_layout") == 0 || !C0190g.m4324c(context) || C0190g.m4320a(context, "notification_big_icon") == 0 || C0190g.m4320a(context, "notification_download_btn") == 0 || C0190g.m4320a(context, "notification_detail_btn") == 0) ? false : true;
    }

    public static int m4322b(Context context, String str) {
        return context.getApplicationContext().getResources().getIdentifier(str, "layout", context.getApplicationContext().getPackageName());
    }

    static boolean m4323b(Context context) {
        return (C0190g.m4322b(context, "advertise_advance_picture_layout") == 0 || !C0190g.m4324c(context) || C0190g.m4320a(context, "notification_big_icon") == 0) ? false : true;
    }

    static boolean m4324c(Context context) {
        return (C0190g.m4322b(context, "advertise_normal_layout") == 0 || C0190g.m4320a(context, "notification_icon") == 0 || C0190g.m4320a(context, PushConstants.EXTRA_NOTIFICATION_TITLE) == 0 || C0190g.m4320a(context, PushConstants.EXTRA_NOTIFICATION_CONTENT) == 0 || C0190g.m4320a(context, "notification_img") == 0 || C0190g.m4320a(context, "notification_when") == 0) ? false : true;
    }
}
