package com.tencent.p095a.p096a.p097a.p098a;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.util.Log;
import com.baidu.frontia.module.deeplink.GetApn;
import com.tencent.p099b.p100a.p102b.C0678g;
import org.json.JSONObject;

/* renamed from: com.tencent.a.a.a.a.h */
public final class C0661h {
    static String m6854a(Context context) {
        try {
            if (C0661h.m6857a(context, "android.permission.READ_PHONE_STATE")) {
                String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
                if (deviceId != null) {
                    return deviceId;
                }
            }
            Log.i("MID", "Could not get permission of android.permission.READ_PHONE_STATE");
        } catch (Throwable th) {
            Log.w("MID", th);
        }
        return "";
    }

    private static void m6855a(String str, Throwable th) {
        Log.e("MID", str, th);
    }

    static void m6856a(JSONObject jSONObject, String str, String str2) {
        if (C0661h.m6858a(str2)) {
            jSONObject.put(str, str2);
        }
    }

    static boolean m6857a(Context context, String str) {
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Throwable th) {
            C0661h.m6855a("checkPermission error", th);
            return false;
        }
    }

    static boolean m6858a(String str) {
        return (str == null || str.trim().length() == 0) ? false : true;
    }

    static String m6859b(Context context) {
        if (C0661h.m6857a(context, "android.permission.ACCESS_WIFI_STATE")) {
            try {
                WifiManager wifiManager = (WifiManager) context.getSystemService(GetApn.APN_TYPE_WIFI);
                return wifiManager == null ? "" : wifiManager.getConnectionInfo().getMacAddress();
            } catch (Exception e) {
                Log.i("MID", "get wifi address error" + e);
                return "";
            }
        }
        Log.i("MID", "Could not get permission of android.permission.ACCESS_WIFI_STATE");
        return "";
    }

    public static boolean m6860b(String str) {
        return str != null && str.trim().length() >= 40;
    }

    static String m6861c(String str) {
        if (str == null) {
            return null;
        }
        if (VERSION.SDK_INT < 8) {
            return str;
        }
        try {
            return new String(C0678g.m6955b(Base64.decode(str.getBytes("UTF-8"), 0)), "UTF-8").trim().replace("\t", "").replace("\n", "").replace("\r", "");
        } catch (Throwable th) {
            C0661h.m6855a("decode error", th);
            return str;
        }
    }

    static String m6862d(String str) {
        if (str == null) {
            return null;
        }
        if (VERSION.SDK_INT < 8) {
            return str;
        }
        try {
            return new String(Base64.encode(C0678g.m6953a(str.getBytes("UTF-8")), 0), "UTF-8").trim().replace("\t", "").replace("\n", "").replace("\r", "");
        } catch (Throwable th) {
            C0661h.m6855a("decode error", th);
            return str;
        }
    }
}
