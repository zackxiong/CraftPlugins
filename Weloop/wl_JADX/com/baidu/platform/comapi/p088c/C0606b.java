package com.baidu.platform.comapi.p088c;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.telephony.TelephonyManager;
import com.baidu.frontia.module.deeplink.GetApn;
import com.baidu.platform.comjni.engine.AppEngine;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.platform.comapi.c.b */
public class C0606b {
    public static boolean f4704a;
    public static String f4705b;
    public static int f4706c;

    static {
        f4704a = false;
        f4705b = "";
        f4706c = 0;
    }

    public static void m6465a(Context context) {
        NetworkInfo b = C0606b.m6467b(context);
        if (b != null && b.isAvailable()) {
            String toLowerCase = b.getTypeName().toLowerCase();
            if (toLowerCase.equals(GetApn.APN_TYPE_WIFI) && b.isConnected()) {
                AppEngine.SetProxyInfo(null, 0);
                f4704a = false;
            } else if (toLowerCase.equals("mobile") || (toLowerCase.equals(GetApn.APN_TYPE_WIFI) && !C0606b.m6466a(b))) {
                String extraInfo = b.getExtraInfo();
                f4704a = false;
                if (extraInfo != null) {
                    extraInfo = extraInfo.toLowerCase();
                    if (extraInfo.startsWith("cmwap") || extraInfo.startsWith("uniwap") || extraInfo.startsWith("3gwap")) {
                        f4705b = "10.0.0.172";
                        f4706c = 80;
                        f4704a = true;
                    } else if (extraInfo.startsWith("ctwap")) {
                        f4705b = "10.0.0.200";
                        f4706c = 80;
                        f4704a = true;
                    } else if (extraInfo.startsWith("cmnet") || extraInfo.startsWith("uninet") || extraInfo.startsWith("ctnet") || extraInfo.startsWith("3gnet")) {
                        f4704a = false;
                    }
                } else {
                    extraInfo = Proxy.getDefaultHost();
                    int defaultPort = Proxy.getDefaultPort();
                    if (extraInfo != null && extraInfo.length() > 0) {
                        if ("10.0.0.172".equals(extraInfo.trim())) {
                            f4705b = "10.0.0.172";
                            f4706c = defaultPort;
                            f4704a = true;
                        } else if ("10.0.0.200".equals(extraInfo.trim())) {
                            f4705b = "10.0.0.200";
                            f4706c = 80;
                            f4704a = true;
                        }
                    }
                }
                if (f4704a) {
                    AppEngine.SetProxyInfo(f4705b, f4706c);
                } else {
                    AppEngine.SetProxyInfo(null, 0);
                }
            }
        }
    }

    private static boolean m6466a(NetworkInfo networkInfo) {
        boolean z = true;
        if (networkInfo != null) {
            try {
                if (!(1 == networkInfo.getType() && networkInfo.isConnected())) {
                    z = false;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        z = false;
        return z;
    }

    public static NetworkInfo m6467b(Context context) {
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
            return null;
        }
    }

    public static String m6468c(Context context) {
        int i = 1;
        NetworkInfo b = C0606b.m6467b(context);
        if (b != null) {
            if (b.getType() != 1) {
                switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                    case ProGuard.styleable.View_android_focusable /*1*/:
                    case ProGuard.styleable.View_paddingStart /*2*/:
                        i = 6;
                        break;
                    case ProGuard.styleable.View_paddingEnd /*3*/:
                    case ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    case ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    case ProGuard.styleable.Toolbar_titleMarginBottom /*15*/:
                        i = 9;
                        break;
                    case ProGuard.styleable.View_theme /*4*/:
                        i = 5;
                        break;
                    case ProGuard.styleable.View_backgroundTint /*5*/:
                    case ProGuard.styleable.View_backgroundTintMode /*6*/:
                    case ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    case ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                        i = 7;
                        break;
                    case ProGuard.styleable.Toolbar_popupTheme /*8*/:
                        i = 8;
                        break;
                    case ProGuard.styleable.Toolbar_titleMargins /*11*/:
                        i = 2;
                        break;
                    case ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                        i = 4;
                        break;
                    case ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                        i = 10;
                        break;
                }
            }
            return Integer.toString(i);
        }
        i = 0;
        return Integer.toString(i);
    }
}
