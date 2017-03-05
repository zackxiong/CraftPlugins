package p028c.p029a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiManager;
import android.os.Environment;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.baidu.frontia.module.deeplink.GetApn;
import com.umeng.update.UpdateConfig;

/* renamed from: c.a.a */
public class ProGuard {
    protected static final String f1872a;

    static {
        f1872a = ProGuard.class.getName();
    }

    public static String m2795a(Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (NameNotFoundException e) {
            return "";
        }
    }

    public static boolean m2797a(Context context, String str) {
        if (context.getPackageManager().checkPermission(str, context.getPackageName()) != 0) {
            return false;
        }
        return true;
    }

    public static String m2798b(Context context) {
        String deviceId;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            ProGuard.m2813d(f1872a, "No IMEI.");
        }
        String str = "";
        try {
            if (ProGuard.m2797a(context, "android.permission.READ_PHONE_STATE")) {
                deviceId = telephonyManager.getDeviceId();
                if (TextUtils.isEmpty(deviceId)) {
                    return deviceId;
                }
                ProGuard.m2813d(f1872a, "No IMEI.");
                deviceId = ProGuard.m2803g(context);
                if (TextUtils.isEmpty(deviceId)) {
                    return deviceId;
                }
                ProGuard.m2813d(f1872a, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead.");
                deviceId = Secure.getString(context.getContentResolver(), "android_id");
                ProGuard.m2807a(f1872a, "getDeviceId: Secure.ANDROID_ID: " + deviceId);
                return deviceId;
            }
        } catch (Exception e) {
            ProGuard.m2814d(f1872a, "No IMEI.", e);
        }
        deviceId = str;
        if (TextUtils.isEmpty(deviceId)) {
            return deviceId;
        }
        ProGuard.m2813d(f1872a, "No IMEI.");
        deviceId = ProGuard.m2803g(context);
        if (TextUtils.isEmpty(deviceId)) {
            return deviceId;
        }
        ProGuard.m2813d(f1872a, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead.");
        deviceId = Secure.getString(context.getContentResolver(), "android_id");
        ProGuard.m2807a(f1872a, "getDeviceId: Secure.ANDROID_ID: " + deviceId);
        return deviceId;
    }

    public static String[] m2799c(Context context) {
        String[] strArr = new String[]{"", ""};
        try {
            if (context.getPackageManager().checkPermission(UpdateConfig.f5446g, context.getPackageName()) != 0) {
                strArr[0] = "";
                return strArr;
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                strArr[0] = "";
                return strArr;
            } else if (connectivityManager.getNetworkInfo(1).getState() == State.CONNECTED) {
                strArr[0] = "Wi-Fi";
                return strArr;
            } else {
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
                if (networkInfo.getState() == State.CONNECTED) {
                    strArr[0] = "2G/3G";
                    strArr[1] = networkInfo.getSubtypeName();
                    return strArr;
                }
                return strArr;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean m2800d(Context context) {
        return "Wi-Fi".equals(ProGuard.m2799c(context)[0]);
    }

    public static boolean m2801e(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnectedOrConnecting();
            }
            return false;
        } catch (Exception e) {
            return true;
        }
    }

    public static boolean m2796a() {
        if (Environment.getExternalStorageState().equals("mounted")) {
            return true;
        }
        return false;
    }

    public static String m2802f(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), com.umeng.update.util.ProGuard.f5670c);
            if (applicationInfo != null) {
                String string = applicationInfo.metaData.getString("UMENG_APPKEY");
                if (string != null) {
                    return string.trim();
                }
                ProGuard.m2809b(f1872a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
            }
        } catch (Exception e) {
            ProGuard.m2810b(f1872a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", e);
        }
        return null;
    }

    public static String m2803g(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService(GetApn.APN_TYPE_WIFI);
            if (ProGuard.m2797a(context, "android.permission.ACCESS_WIFI_STATE")) {
                return wifiManager.getConnectionInfo().getMacAddress();
            }
            ProGuard.m2813d(f1872a, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
            return "";
        } catch (Exception e) {
            ProGuard.m2813d(f1872a, "Could not get mac address." + e.toString());
        }
    }

    public static String m2804h(Context context) {
        String str = "Unknown";
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), com.umeng.update.util.ProGuard.f5670c);
            if (!(applicationInfo == null || applicationInfo.metaData == null)) {
                Object obj = applicationInfo.metaData.get("UMENG_CHANNEL");
                if (obj != null) {
                    String obj2 = obj.toString();
                    if (obj2 != null) {
                        return obj2;
                    }
                    ProGuard.m2807a(f1872a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
                    return str;
                }
            }
        } catch (Exception e) {
            ProGuard.m2807a(f1872a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
            e.printStackTrace();
        }
        return str;
    }

    public static String m2805i(Context context) {
        return context.getPackageName();
    }

    public static String m2806j(Context context) {
        return context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
    }
}
