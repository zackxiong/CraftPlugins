package com.tencent.p099b.p100a.p102b;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.baidu.location.LocationClientOption;
import com.tencent.p099b.p100a.C0708t;
import com.tencent.p099b.p100a.C0711w;
import com.umeng.update.UpdateConfig;
import com.umeng.update.util.ProGuard;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileReader;
import java.io.InputStream;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpHost;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.b.l */
public final class C0683l {
    private static String f5201a;
    private static String f5202b;
    private static String f5203c;
    private static String f5204d;
    private static Random f5205e;
    private static DisplayMetrics f5206f;
    private static String f5207g;
    private static String f5208h;
    private static String f5209i;
    private static int f5210j;
    private static C0673b f5211k;
    private static String f5212l;
    private static String f5213m;
    private static volatile int f5214n;
    private static String f5215o;
    private static String f5216p;
    private static long f5217q;
    private static String f5218r;
    private static C0686o f5219s;
    private static String f5220t;
    private static int f5221u;
    private static long f5222v;
    private static int f5223w;
    private static String f5224x;

    static {
        f5201a = null;
        f5202b = null;
        f5203c = null;
        f5204d = null;
        f5205e = null;
        f5206f = null;
        f5207g = null;
        f5208h = "";
        f5209i = "";
        f5210j = -1;
        f5211k = null;
        f5212l = null;
        f5213m = null;
        f5214n = -1;
        f5215o = null;
        f5216p = null;
        f5217q = -1;
        f5218r = "";
        f5219s = null;
        f5220t = "__MTA_FIRST_ACTIVATE__";
        f5221u = -1;
        f5222v = -1;
        f5223w = 0;
        f5224x = "";
    }

    public static int m6960a() {
        return C0683l.m6987i().nextInt(Integer.MAX_VALUE);
    }

    public static int m6961a(Context context, boolean z) {
        if (z) {
            f5223w = C0688q.m7008a(context, "mta.qq.com.difftime", 0);
        }
        return f5223w;
    }

    private static Long m6962a(String str, String str2, Long l) {
        if (str == null || str2 == null) {
            return l;
        }
        if (str2.equalsIgnoreCase(".") || str2.equalsIgnoreCase("|")) {
            str2 = "\\" + str2;
        }
        String[] split = str.split(str2);
        if (split.length != 3) {
            return l;
        }
        try {
            Long valueOf = Long.valueOf(0);
            int i = 0;
            while (i < split.length) {
                Long valueOf2 = Long.valueOf(100 * (valueOf.longValue() + Long.valueOf(split[i]).longValue()));
                i++;
                valueOf = valueOf2;
            }
            return valueOf;
        } catch (NumberFormatException e) {
            return l;
        }
    }

    public static String m6963a(long j) {
        return new SimpleDateFormat("yyyyMMdd").format(new Date(j));
    }

    public static String m6964a(Context context, String str) {
        if (!C0708t.m7086u()) {
            return str;
        }
        if (f5213m == null) {
            f5213m = C0683l.m6993n(context);
        }
        return f5213m != null ? str + "_" + f5213m : str;
    }

    public static String m6965a(String str) {
        if (str == null) {
            return "0";
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : digest) {
                int i = b & 255;
                if (i < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i));
            }
            return stringBuffer.toString();
        } catch (Throwable th) {
            return "0";
        }
    }

    public static HttpHost m6966a(Context context) {
        if (context == null) {
            return null;
        }
        try {
            if (context.getPackageManager().checkPermission(UpdateConfig.f5446g, context.getPackageName()) != 0) {
                return null;
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return null;
            }
            if (activeNetworkInfo.getTypeName() != null && activeNetworkInfo.getTypeName().equalsIgnoreCase("WIFI")) {
                return null;
            }
            String extraInfo = activeNetworkInfo.getExtraInfo();
            if (extraInfo == null) {
                return null;
            }
            if (extraInfo.equals("cmwap") || extraInfo.equals("3gwap") || extraInfo.equals("uniwap")) {
                return new HttpHost("10.0.0.172", 80);
            }
            if (extraInfo.equals("ctwap")) {
                return new HttpHost("10.0.0.200", 80);
            }
            String defaultHost = Proxy.getDefaultHost();
            if (defaultHost != null && defaultHost.trim().length() > 0) {
                return new HttpHost(defaultHost, Proxy.getDefaultPort());
            }
            return null;
        } catch (Throwable th) {
            f5211k.m6938b(th);
        }
    }

    public static void m6967a(Context context, int i) {
        f5223w = i;
        C0688q.m7013b(context, "mta.qq.com.difftime", i);
    }

    public static boolean m6968a(C0711w c0711w) {
        return c0711w == null ? false : C0683l.m6975c(c0711w.m7116c());
    }

    public static byte[] m6969a(byte[] bArr) {
        InputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
        byte[] bArr2 = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length * 2);
        while (true) {
            int read = gZIPInputStream.read(bArr2);
            if (read != -1) {
                byteArrayOutputStream.write(bArr2, 0, read);
            } else {
                bArr2 = byteArrayOutputStream.toByteArray();
                byteArrayInputStream.close();
                gZIPInputStream.close();
                byteArrayOutputStream.close();
                return bArr2;
            }
        }
    }

    public static int m6970b() {
        if (f5210j != -1) {
            return f5210j;
        }
        try {
            if (C0687p.m7007a()) {
                f5210j = 1;
            }
        } catch (Throwable th) {
            f5211k.m6938b(th);
        }
        f5210j = 0;
        return 0;
    }

    public static long m6971b(String str) {
        return C0683l.m6962a(str, ".", Long.valueOf(0)).longValue();
    }

    public static synchronized String m6972b(Context context) {
        String a;
        synchronized (C0683l.class) {
            if (f5201a == null || f5201a.trim().length() == 0) {
                a = C0689r.m7015a(context);
                f5201a = a;
                if (a == null || f5201a.trim().length() == 0) {
                    f5201a = Integer.toString(C0683l.m6987i().nextInt(Integer.MAX_VALUE));
                }
                a = f5201a;
            } else {
                a = f5201a;
            }
        }
        return a;
    }

    public static synchronized C0673b m6973c() {
        C0673b c0673b;
        synchronized (C0683l.class) {
            if (f5211k == null) {
                c0673b = new C0673b("MtaSDK");
                f5211k = c0673b;
                c0673b.m6934a();
            }
            c0673b = f5211k;
        }
        return c0673b;
    }

    public static synchronized String m6974c(Context context) {
        String str;
        synchronized (C0683l.class) {
            if (f5203c == null || f5203c.trim().length() == 0) {
                f5203c = C0689r.m7019b(context);
            }
            str = f5203c;
        }
        return str;
    }

    public static boolean m6975c(String str) {
        return (str == null || str.trim().length() == 0) ? false : true;
    }

    public static long m6976d() {
        try {
            Calendar instance = Calendar.getInstance();
            instance.set(11, 0);
            instance.set(12, 0);
            instance.set(13, 0);
            instance.set(14, 0);
            return instance.getTimeInMillis() + 86400000;
        } catch (Throwable th) {
            f5211k.m6938b(th);
            return System.currentTimeMillis() + 86400000;
        }
    }

    public static DisplayMetrics m6977d(Context context) {
        if (f5206f == null) {
            f5206f = new DisplayMetrics();
            ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(f5206f);
        }
        return f5206f;
    }

    public static String m6978e() {
        Calendar instance = Calendar.getInstance();
        instance.roll(6, 0);
        return new SimpleDateFormat("yyyyMMdd").format(instance.getTime());
    }

    public static boolean m6979e(Context context) {
        try {
            if (C0689r.m7018a(context, "android.permission.ACCESS_WIFI_STATE")) {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
                if (connectivityManager != null) {
                    NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
                    if (allNetworkInfo != null) {
                        int i = 0;
                        while (i < allNetworkInfo.length) {
                            if (allNetworkInfo[i].getTypeName().equalsIgnoreCase("WIFI") && allNetworkInfo[i].isConnected()) {
                                return true;
                            }
                            i++;
                        }
                    }
                }
                return false;
            }
            f5211k.m6937b((Object) "can not get the permission of android.permission.ACCESS_WIFI_STATE");
            return false;
        } catch (Throwable th) {
            f5211k.m6938b(th);
        }
    }

    public static String m6980f() {
        if (C0683l.m6975c(f5216p)) {
            return f5216p;
        }
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        long blockCount = (((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize())) / 1000000;
        StatFs statFs2 = new StatFs(Environment.getDataDirectory().getPath());
        String str = String.valueOf((((long) statFs2.getAvailableBlocks()) * ((long) statFs2.getBlockSize())) / 1000000) + "/" + String.valueOf(blockCount);
        f5216p = str;
        return str;
    }

    public static String m6981f(Context context) {
        if (f5202b != null) {
            return f5202b;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), ProGuard.f5670c);
            if (applicationInfo != null) {
                String string = applicationInfo.metaData.getString("TA_APPKEY");
                if (string != null) {
                    f5202b = string;
                    return string;
                }
                f5211k.m6935a((Object) "Could not read APPKEY meta-data from AndroidManifest.xml");
            }
        } catch (Throwable th) {
            f5211k.m6935a((Object) "Could not read APPKEY meta-data from AndroidManifest.xml");
        }
        return null;
    }

    public static String m6982g(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), ProGuard.f5670c);
            if (applicationInfo != null) {
                Object obj = applicationInfo.metaData.get("InstallChannel");
                if (obj != null) {
                    return obj.toString();
                }
                f5211k.m6939c("Could not read InstallChannel meta-data from AndroidManifest.xml");
            }
        } catch (Throwable th) {
            f5211k.m6941e("Could not read InstallChannel meta-data from AndroidManifest.xml");
        }
        return null;
    }

    public static JSONObject m6983g() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("n", C0684m.m7003a());
            String d = C0684m.m7006d();
            if (d != null && d.length() > 0) {
                jSONObject.put("na", d);
            }
            int b = C0684m.m7004b();
            if (b > 0) {
                jSONObject.put("fx", b / 1000000);
            }
            b = C0684m.m7005c();
            if (b > 0) {
                jSONObject.put("fn", b / 1000000);
            }
        } catch (Throwable th) {
            Log.w("MtaSDK", "get cpu error", th);
        }
        return jSONObject;
    }

    public static String m6985h(Context context) {
        if (f5207g != null) {
            return f5207g;
        }
        try {
            if (C0689r.m7018a(context, "android.permission.READ_PHONE_STATE")) {
                if ((context.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", context.getPackageName()) != 0 ? null : 1) != null) {
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                    if (telephonyManager != null) {
                        f5207g = telephonyManager.getSimOperator();
                    }
                }
            } else {
                f5211k.m6941e("Could not get permission of android.permission.READ_PHONE_STATE");
            }
        } catch (Throwable th) {
            f5211k.m6938b(th);
        }
        return f5207g;
    }

    public static String m6986i(Context context) {
        if (C0683l.m6975c(f5208h)) {
            return f5208h;
        }
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            f5208h = str;
            if (str == null) {
                return "";
            }
        } catch (Throwable th) {
            f5211k.m6938b(th);
        }
        return f5208h;
    }

    private static synchronized Random m6987i() {
        Random random;
        synchronized (C0683l.class) {
            if (f5205e == null) {
                f5205e = new Random();
            }
            random = f5205e;
        }
        return random;
    }

    private static long m6988j() {
        if (f5217q > 0) {
            return f5217q;
        }
        long j = 1;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
            j = (long) (Integer.valueOf(bufferedReader.readLine().split("\\s+")[1]).intValue() * 1024);
            bufferedReader.close();
        } catch (Exception e) {
        }
        f5217q = j;
        return j;
    }

    public static String m6989j(Context context) {
        String str = "";
        try {
            if (C0689r.m7018a(context, UpdateConfig.f5447h) && C0689r.m7018a(context, UpdateConfig.f5446g)) {
                String typeName;
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    typeName = activeNetworkInfo.getTypeName();
                    String extraInfo = activeNetworkInfo.getExtraInfo();
                    if (typeName != null) {
                        if (typeName.equalsIgnoreCase("WIFI")) {
                            return "WIFI";
                        }
                        if (typeName.equalsIgnoreCase("MOBILE")) {
                            return extraInfo != null ? extraInfo : "MOBILE";
                        } else {
                            if (extraInfo != null) {
                                return extraInfo;
                            }
                            return typeName;
                        }
                    }
                }
                typeName = str;
                return typeName;
            }
            f5211k.m6941e("can not get the permission of android.permission.ACCESS_WIFI_STATE");
            return str;
        } catch (Throwable th) {
            f5211k.m6938b(th);
            return str;
        }
    }

    public static Integer m6990k(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return Integer.valueOf(telephonyManager.getNetworkType());
            }
        } catch (Throwable th) {
        }
        return null;
    }

    public static String m6991l(Context context) {
        if (C0683l.m6975c(f5209i)) {
            return f5209i;
        }
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            f5209i = str;
            if (str == null || f5209i.length() == 0) {
                return "unknown";
            }
        } catch (Throwable th) {
            f5211k.m6938b(th);
        }
        return f5209i;
    }

    public static String m6992m(Context context) {
        if (C0683l.m6975c(f5212l)) {
            return f5212l;
        }
        try {
            if (C0689r.m7018a(context, UpdateConfig.f5445f)) {
                String externalStorageState = Environment.getExternalStorageState();
                if (externalStorageState != null && externalStorageState.equals("mounted")) {
                    externalStorageState = Environment.getExternalStorageDirectory().getPath();
                    if (externalStorageState != null) {
                        StatFs statFs = new StatFs(externalStorageState);
                        long blockCount = (((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize())) / 1000000;
                        externalStorageState = String.valueOf((((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks())) / 1000000) + "/" + String.valueOf(blockCount);
                        f5212l = externalStorageState;
                        return externalStorageState;
                    }
                }
                return null;
            }
            f5211k.m6937b((Object) "can not get the permission of android.permission.WRITE_EXTERNAL_STORAGE");
            return null;
        } catch (Throwable th) {
            f5211k.m6938b(th);
        }
    }

    static String m6993n(Context context) {
        try {
            if (f5213m != null) {
                return f5213m;
            }
            int myPid = Process.myPid();
            for (RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == myPid) {
                    f5213m = runningAppProcessInfo.processName;
                    break;
                }
            }
            return f5213m;
        } catch (Throwable th) {
        }
    }

    public static String m6994o(Context context) {
        return C0683l.m6964a(context, C0672a.f5147b);
    }

    public static synchronized Integer m6995p(Context context) {
        Integer valueOf;
        int i = 0;
        synchronized (C0683l.class) {
            if (f5214n <= 0) {
                f5214n = C0688q.m7008a(context, "MTA_EVENT_INDEX", 0);
                C0688q.m7013b(context, "MTA_EVENT_INDEX", f5214n + LocationClientOption.MIN_SCAN_SPAN);
            } else if (f5214n % LocationClientOption.MIN_SCAN_SPAN == 0) {
                try {
                    int i2 = f5214n + LocationClientOption.MIN_SCAN_SPAN;
                    if (f5214n < 2147383647) {
                        i = i2;
                    }
                    C0688q.m7013b(context, "MTA_EVENT_INDEX", i);
                } catch (Throwable th) {
                    f5211k.m6939c(th);
                }
            }
            i = f5214n + 1;
            f5214n = i;
            valueOf = Integer.valueOf(i);
        }
        return valueOf;
    }

    public static String m6996q(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            MemoryInfo memoryInfo = new MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return String.valueOf(memoryInfo.availMem / 1000000) + "/" + String.valueOf(C0683l.m6988j() / 1000000);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String m6997r(Context context) {
        if (C0683l.m6975c(f5218r)) {
            return f5218r;
        }
        try {
            SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
            if (sensorManager != null) {
                List sensorList = sensorManager.getSensorList(-1);
                if (sensorList != null) {
                    StringBuilder stringBuilder = new StringBuilder(sensorList.size() * 10);
                    for (int i = 0; i < sensorList.size(); i++) {
                        stringBuilder.append(((Sensor) sensorList.get(i)).getType());
                        if (i != sensorList.size() - 1) {
                            stringBuilder.append(",");
                        }
                    }
                    f5218r = stringBuilder.toString();
                }
            }
        } catch (Throwable th) {
            f5211k.m6938b(th);
        }
        return f5218r;
    }

    public static synchronized int m6998s(Context context) {
        int i;
        synchronized (C0683l.class) {
            if (f5221u != -1) {
                i = f5221u;
            } else {
                C0683l.m6999t(context);
                i = f5221u;
            }
        }
        return i;
    }

    public static void m6999t(Context context) {
        int a = C0688q.m7008a(context, f5220t, 1);
        f5221u = a;
        if (a == 1) {
            C0688q.m7013b(context, f5220t, 0);
        }
    }

    public static boolean m7000u(Context context) {
        if (f5222v < 0) {
            f5222v = C0688q.m7009a(context, "mta.qq.com.checktime");
        }
        return Math.abs(System.currentTimeMillis() - f5222v) > 86400000;
    }

    public static void m7001v(Context context) {
        f5222v = System.currentTimeMillis();
        C0688q.m7012a(context, "mta.qq.com.checktime", f5222v);
    }

    public static String m7002w(Context context) {
        if (context == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        return (resolveActivity.activityInfo == null || resolveActivity.activityInfo.packageName.equals("android")) ? null : resolveActivity.activityInfo.packageName;
    }
}
