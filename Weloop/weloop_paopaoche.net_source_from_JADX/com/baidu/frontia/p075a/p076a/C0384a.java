package com.baidu.frontia.p075a.p076a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.baidu.frontia.module.deeplink.GetApn;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.frontia.a.a.a */
public class C0384a {
    private static ConnectivityManager f3632a;

    public static boolean m5304a(Context context) {
        ConnectivityManager c = C0384a.m5306c(context);
        if (c == null) {
            return false;
        }
        NetworkInfo activeNetworkInfo = c.getActiveNetworkInfo();
        return activeNetworkInfo != null ? activeNetworkInfo.isConnectedOrConnecting() : false;
    }

    public static String m5305b(Context context) {
        String str = "connectionless";
        if (!C0384a.m5304a(context)) {
            return str;
        }
        NetworkInfo activeNetworkInfo = C0384a.m5306c(context).getActiveNetworkInfo();
        int i = -1;
        if (activeNetworkInfo != null) {
            i = activeNetworkInfo.getType();
        }
        switch (i) {
            case ProGuard.styleable.View_android_theme /*0*/:
                return "mobile";
            case ProGuard.styleable.View_android_focusable /*1*/:
                return GetApn.APN_TYPE_WIFI;
            case ProGuard.styleable.View_paddingStart /*2*/:
                return "mobile_mms";
            case ProGuard.styleable.View_paddingEnd /*3*/:
                return "mobile_supl";
            case ProGuard.styleable.View_theme /*4*/:
                return "mobile_dun";
            case ProGuard.styleable.View_backgroundTint /*5*/:
                return "mobile_hipri";
            case ProGuard.styleable.View_backgroundTintMode /*6*/:
                return "wimax";
            default:
                return str;
        }
    }

    private static ConnectivityManager m5306c(Context context) {
        if (context == null) {
            return f3632a;
        }
        if (f3632a == null) {
            f3632a = (ConnectivityManager) context.getSystemService("connectivity");
        }
        return f3632a;
    }
}
