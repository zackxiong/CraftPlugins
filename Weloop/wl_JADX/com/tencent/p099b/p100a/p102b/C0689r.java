package com.tencent.p099b.p100a.p102b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.baidu.frontia.module.deeplink.GetApn;
import com.umeng.update.UpdateConfig;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.b.r */
public final class C0689r {
    private static String f5227a;

    static {
        f5227a = "";
    }

    public static String m7015a(Context context) {
        try {
            if (C0689r.m7018a(context, "android.permission.READ_PHONE_STATE")) {
                String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
                if (deviceId != null) {
                    return deviceId;
                }
            }
            Log.e("MtaSDK", "Could not get permission of android.permission.READ_PHONE_STATE");
        } catch (Throwable th) {
            Log.e("MtaSDK", "get device id error", th);
        }
        return null;
    }

    public static String m7016a(String str) {
        if (str == null) {
            return null;
        }
        if (VERSION.SDK_INT < 8) {
            return str;
        }
        try {
            return new String(C0678g.m6955b(C0679h.m6956a(str.getBytes("UTF-8"))), "UTF-8");
        } catch (Throwable th) {
            Log.e("MtaSDK", "decode error", th);
            return str;
        }
    }

    public static void m7017a(JSONObject jSONObject, String str, String str2) {
        if (str2 != null) {
            try {
                if (str2.length() > 0) {
                    jSONObject.put(str, str2);
                }
            } catch (Throwable th) {
                Log.e("MtaSDK", "jsonPut error", th);
            }
        }
    }

    public static boolean m7018a(Context context, String str) {
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Throwable th) {
            Log.e("MtaSDK", "checkPermission error", th);
            return false;
        }
    }

    public static String m7019b(Context context) {
        if (C0689r.m7018a(context, "android.permission.ACCESS_WIFI_STATE")) {
            try {
                WifiManager wifiManager = (WifiManager) context.getSystemService(GetApn.APN_TYPE_WIFI);
                return wifiManager == null ? "" : wifiManager.getConnectionInfo().getMacAddress();
            } catch (Throwable e) {
                Log.e("MtaSDK", "get wifi address error", e);
                return "";
            }
        }
        Log.e("MtaSDK", "Could not get permission of android.permission.ACCESS_WIFI_STATE");
        return "";
    }

    public static String m7020b(String str) {
        if (str == null) {
            return null;
        }
        if (VERSION.SDK_INT < 8) {
            return str;
        }
        try {
            return new String(C0679h.m6957b(C0678g.m6953a(str.getBytes("UTF-8"))), "UTF-8");
        } catch (Throwable th) {
            Log.e("MtaSDK", "encode error", th);
            return str;
        }
    }

    public static String m7021c(Context context) {
        try {
            WifiInfo g = C0689r.m7025g(context);
            if (g != null) {
                return g.getBSSID();
            }
        } catch (Throwable th) {
            Log.e("MtaSDK", "encode error", th);
        }
        return null;
    }

    public static String m7022d(Context context) {
        try {
            WifiInfo g = C0689r.m7025g(context);
            if (g != null) {
                return g.getSSID();
            }
        } catch (Throwable th) {
            Log.e("MtaSDK", "encode error", th);
        }
        return null;
    }

    public static boolean m7023e(Context context) {
        try {
            if (C0689r.m7018a(context, UpdateConfig.f5447h) && C0689r.m7018a(context, UpdateConfig.f5446g)) {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null) {
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                        return true;
                    }
                    Log.w("MtaSDK", "Network error");
                    return false;
                }
                return false;
            }
            Log.e("MtaSDK", "can not get the permisson of android.permission.INTERNET");
            return false;
        } catch (Throwable th) {
            Log.e("MtaSDK", "isNetworkAvailable error", th);
        }
    }

    public static JSONArray m7024f(Context context) {
        try {
            if (C0689r.m7018a(context, UpdateConfig.f5447h) && C0689r.m7018a(context, UpdateConfig.f5446g)) {
                WifiManager wifiManager = (WifiManager) context.getSystemService(GetApn.APN_TYPE_WIFI);
                if (wifiManager != null) {
                    List scanResults = wifiManager.getScanResults();
                    if (scanResults != null && scanResults.size() > 0) {
                        Collections.sort(scanResults, new C0690s());
                        JSONArray jSONArray = new JSONArray();
                        int i = 0;
                        while (i < scanResults.size() && i < 10) {
                            ScanResult scanResult = (ScanResult) scanResults.get(i);
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("bs", scanResult.BSSID);
                            jSONObject.put("ss", scanResult.SSID);
                            jSONArray.put(jSONObject);
                            i++;
                        }
                        return jSONArray;
                    }
                }
                return null;
            }
            Log.e("MtaSDK", "can not get the permisson of android.permission.INTERNET");
            return null;
        } catch (Throwable th) {
            Log.e("MtaSDK", "isWifiNet error", th);
        }
    }

    private static WifiInfo m7025g(Context context) {
        if (C0689r.m7018a(context, "android.permission.ACCESS_WIFI_STATE")) {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(GetApn.APN_TYPE_WIFI);
            if (wifiManager != null) {
                return wifiManager.getConnectionInfo();
            }
        }
        return null;
    }
}
