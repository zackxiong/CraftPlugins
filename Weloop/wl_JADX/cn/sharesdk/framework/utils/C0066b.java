package cn.sharesdk.framework.utils;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import com.baidu.frontia.module.deeplink.GetApn;
import com.umeng.update.util.ProGuard;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;

/* renamed from: cn.sharesdk.framework.utils.b */
public class C0066b {
    private static C0066b f2096b;
    private Context f2097a;

    private C0066b(Context context) {
        this.f2097a = context.getApplicationContext();
    }

    private String m3213A() {
        if (!m3245x()) {
            return null;
        }
        File file = new File(m3246y(), "ShareSDK");
        if (!file.exists()) {
            return null;
        }
        File file2 = new File(file, ".dk");
        if (!file2.exists()) {
            return null;
        }
        ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(file2));
        Object readObject = objectInputStream.readObject();
        String valueOf = (readObject == null || !(readObject instanceof char[])) ? null : String.valueOf((char[]) readObject);
        objectInputStream.close();
        return valueOf;
    }

    public static C0066b m3214a(Context context) {
        if (f2096b == null) {
            f2096b = new C0066b(context);
        }
        return f2096b;
    }

    private boolean m3215a(PackageInfo packageInfo) {
        return ((packageInfo.applicationInfo.flags & 1) == 1) || ((packageInfo.applicationInfo.flags & ProGuard.f5670c) == 1);
    }

    private Object m3216b(String str) {
        try {
            return this.f2097a.getSystemService(str);
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return null;
        }
    }

    private void m3217c(String str) {
        if (m3245x()) {
            File file = new File(m3246y(), "ShareSDK");
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, ".dk");
            if (file2.exists()) {
                file2.delete();
            }
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(file2));
            objectOutputStream.writeObject(str.toCharArray());
            objectOutputStream.flush();
            objectOutputStream.close();
        }
    }

    private boolean m3218z() {
        TelephonyManager telephonyManager = (TelephonyManager) m3216b("phone");
        if (telephonyManager == null) {
            return false;
        }
        switch (telephonyManager.getNetworkType()) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                return false;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                return false;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                return false;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                return true;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                return false;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                return true;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                return true;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                return false;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                return true;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                return true;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                return true;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                return false;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                return true;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                return true;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                return true;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginBottom /*15*/:
                return true;
            default:
                return false;
        }
    }

    public String m3219a() {
        WifiManager wifiManager = (WifiManager) m3216b(GetApn.APN_TYPE_WIFI);
        if (wifiManager == null) {
            return null;
        }
        WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        if (connectionInfo == null) {
            return null;
        }
        String macAddress = connectionInfo.getMacAddress();
        if (macAddress == null) {
            macAddress = null;
        }
        return macAddress;
    }

    public String m3220a(String str, String str2) {
        String encodeToString;
        Throwable th;
        try {
            encodeToString = Base64.encodeToString(C0065a.m3205a(str2, str), 0);
            try {
                if (encodeToString.contains("\n")) {
                    encodeToString = encodeToString.replace("\n", "");
                }
            } catch (Throwable th2) {
                th = th2;
                C0071e.m3269c(th);
                return encodeToString;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            encodeToString = null;
            th = th4;
            C0071e.m3269c(th);
            return encodeToString;
        }
        return encodeToString;
    }

    public ArrayList<HashMap<String, String>> m3221a(boolean z) {
        try {
            PackageManager packageManager = this.f2097a.getPackageManager();
            List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
            ArrayList<HashMap<String, String>> arrayList = new ArrayList();
            for (PackageInfo packageInfo : installedPackages) {
                if (z || !m3215a(packageInfo)) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("pkg", packageInfo.packageName);
                    hashMap.put("name", packageInfo.applicationInfo.loadLabel(packageManager).toString());
                    hashMap.put("version", packageInfo.versionName);
                    arrayList.add(hashMap);
                }
            }
            return arrayList;
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return new ArrayList();
        }
    }

    public boolean m3222a(String str) {
        return this.f2097a.getPackageManager().checkPermission(str, m3239r()) == 0;
    }

    public String m3223b() {
        return Build.MODEL;
    }

    public String m3224c() {
        return Build.MANUFACTURER;
    }

    public String m3225d() {
        String e = m3226e();
        return e == null ? m3227f() : e;
    }

    public String m3226e() {
        TelephonyManager telephonyManager = (TelephonyManager) m3216b("phone");
        if (telephonyManager == null) {
            return null;
        }
        String deviceId = telephonyManager.getDeviceId();
        String str = "";
        if (deviceId != null) {
            str = new String(deviceId).replace("0", "");
        }
        return (deviceId == null || str.length() <= 0) ? null : deviceId;
    }

    public String m3227f() {
        if (VERSION.SDK_INT < 9) {
            return null;
        }
        try {
            Class cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", new Class[]{String.class, String.class}).invoke(cls, new Object[]{"ro.serialno", "unknown"});
        } catch (Throwable th) {
            C0071e.m3261a(th);
            return null;
        }
    }

    public String m3228g() {
        return m3220a(m3223b() + "|" + m3230i() + "|" + m3224c() + "|" + m3233l() + "|" + m3232k(), m3238q().substring(0, 16));
    }

    public String m3229h() {
        return m3223b() + "|" + m3230i() + "|" + m3224c() + "|" + m3233l() + "|" + m3232k();
    }

    public String m3230i() {
        return String.valueOf(VERSION.SDK_INT);
    }

    public String m3231j() {
        return VERSION.RELEASE;
    }

    public String m3232k() {
        DisplayMetrics displayMetrics = this.f2097a.getResources().getDisplayMetrics();
        return this.f2097a.getResources().getConfiguration().orientation == 1 ? displayMetrics.widthPixels + "x" + displayMetrics.heightPixels : displayMetrics.heightPixels + "x" + displayMetrics.widthPixels;
    }

    public String m3233l() {
        TelephonyManager telephonyManager = (TelephonyManager) m3216b("phone");
        if (telephonyManager == null) {
            return "-1";
        }
        Object simOperator = telephonyManager.getSimOperator();
        return TextUtils.isEmpty(simOperator) ? "-1" : simOperator;
    }

    public String m3234m() {
        ConnectivityManager connectivityManager = (ConnectivityManager) m3216b("connectivity");
        if (connectivityManager == null) {
            return "none";
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
            return "none";
        }
        switch (activeNetworkInfo.getType()) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                String defaultHost = Proxy.getDefaultHost();
                String str = "";
                if (defaultHost != null && defaultHost.length() > 0) {
                    str = " wap";
                }
                return (m3218z() ? "3G" : "2G") + str;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                return GetApn.APN_TYPE_WIFI;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                return "wimax";
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                return "bluetooth";
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                return "dummy";
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                return "ethernet";
            default:
                return "none";
        }
    }

    public String m3235n() {
        String m = m3234m();
        return (TextUtils.isEmpty(m) || "none".equals(m)) ? "none" : (m.startsWith("3G") || m.startsWith("2G")) ? "cell" : m.startsWith(GetApn.APN_TYPE_WIFI) ? GetApn.APN_TYPE_WIFI : "other";
    }

    public int m3236o() {
        return 1;
    }

    public JSONArray m3237p() {
        JSONArray jSONArray = new JSONArray();
        ActivityManager activityManager = (ActivityManager) m3216b("activity");
        if (activityManager == null) {
            return jSONArray;
        }
        List<RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return jSONArray;
        }
        for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            jSONArray.put(runningAppProcessInfo.processName);
        }
        return jSONArray;
    }

    public String m3238q() {
        String A;
        try {
            A = m3213A();
        } catch (Throwable th) {
            C0071e.m3269c(th);
            A = null;
        }
        if (A == null) {
            try {
                A = m3219a();
                String d = m3225d();
                A = C0065a.m3202a(C0065a.m3204a(A + ":" + d + ":" + m3223b()));
            } catch (Throwable th2) {
                C0071e.m3261a(th2);
                A = null;
            }
            if (A != null) {
                try {
                    m3217c(A);
                } catch (Throwable th3) {
                    C0071e.m3269c(th3);
                }
            }
        }
        return A;
    }

    public String m3239r() {
        return this.f2097a.getPackageName();
    }

    public String m3240s() {
        String str = this.f2097a.getApplicationInfo().name;
        if (str != null) {
            return str;
        }
        int i = this.f2097a.getApplicationInfo().labelRes;
        return i > 0 ? this.f2097a.getString(i) : str;
    }

    public int m3241t() {
        int i = 0;
        try {
            return this.f2097a.getPackageManager().getPackageInfo(this.f2097a.getPackageName(), 0).versionCode;
        } catch (Throwable th) {
            C0071e.m3261a(th);
            return i;
        }
    }

    public String m3242u() {
        try {
            return this.f2097a.getPackageManager().getPackageInfo(this.f2097a.getPackageName(), 0).versionName;
        } catch (Throwable th) {
            C0071e.m3261a(th);
            return "1.0";
        }
    }

    public String m3243v() {
        TelephonyManager telephonyManager = (TelephonyManager) m3216b("phone");
        return telephonyManager == null ? null : telephonyManager.getNetworkOperator();
    }

    public String m3244w() {
        boolean a;
        try {
            a = m3222a("android.permission.GET_TASKS");
        } catch (Throwable th) {
            C0071e.m3269c(th);
            a = false;
        }
        if (a) {
            try {
                ActivityManager activityManager = (ActivityManager) m3216b("activity");
                return activityManager == null ? null : ((RunningTaskInfo) activityManager.getRunningTasks(1).get(0)).topActivity.getPackageName();
            } catch (Throwable th2) {
                C0071e.m3269c(th2);
            }
        }
        return null;
    }

    public boolean m3245x() {
        try {
            return "mounted".equals(Environment.getExternalStorageState());
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return false;
        }
    }

    public String m3246y() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }
}
