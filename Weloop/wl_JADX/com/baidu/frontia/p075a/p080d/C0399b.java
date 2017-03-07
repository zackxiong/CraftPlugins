package com.baidu.frontia.p075a.p080d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.baidu.frontia.module.deeplink.GetApn;
import com.baidu.frontia.p075a.p076a.C0384a;
import com.baidu.frontia.p075a.p081e.C0402c;
import com.umeng.update.util.ProGuard;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.frontia.a.d.b */
public class C0399b {
    public static double f3658a;
    public static double f3659b;
    public static double f3660c;
    public static double f3661d;

    /* renamed from: com.baidu.frontia.a.d.b.a */
    public static class C0397a {
        public int f3650a;
        public int f3651b;
        public int f3652c;
        public double f3653d;
        public long f3654e;
    }

    /* renamed from: com.baidu.frontia.a.d.b.b */
    private static class C0398b {
        private static C0398b f3655c;
        private Context f3656a;
        private final JSONObject f3657b;

        static {
            f3655c = null;
        }

        private C0398b(Context context) {
            this.f3656a = null;
            this.f3656a = context;
            if (this.f3656a == null) {
                this.f3657b = new JSONObject();
            } else {
                this.f3657b = new JSONObject();
            }
            try {
                String macAddress;
                this.f3657b.put("os_name", "Android");
                this.f3657b.put("manufacture", Build.MANUFACTURER);
                this.f3657b.put("os_version", VERSION.RELEASE);
                this.f3657b.put("model", Build.MODEL);
                this.f3657b.put("firmware", Build.FINGERPRINT);
                this.f3657b.put("mem_size", String.valueOf(C0399b.m5331b()));
                this.f3657b.put("screen_width", String.valueOf(C0399b.m5330a(this.f3656a)[0]));
                this.f3657b.put("screen_height", String.valueOf(C0399b.m5330a(this.f3656a)[1]));
                this.f3657b.put("cpu_model", C0399b.m5333c());
                this.f3657b.put("cpu_feature", C0399b.m5335d());
                this.f3657b.put("screen_density", String.valueOf(C0399b.m5330a(this.f3656a)[2]));
                if (((TelephonyManager) this.f3656a.getSystemService("phone")) != null) {
                    this.f3657b.put("wise_cuid", C0402c.m5346a(this.f3656a));
                }
                String string = context.getSharedPreferences("pst", 0).getString("push_mac_id", null);
                if (string == null || string.length() == 0) {
                    try {
                        macAddress = ((WifiManager) context.getSystemService(GetApn.APN_TYPE_WIFI)).getConnectionInfo().getMacAddress();
                        if (macAddress != null) {
                            try {
                                if (macAddress.length() > 0) {
                                    context.getSharedPreferences("pst", 0).edit().putString("push_mac_id", macAddress).commit();
                                }
                            } catch (Exception e) {
                            }
                        }
                    } catch (Exception e2) {
                        macAddress = string;
                    }
                } else {
                    macAddress = string;
                }
                if (macAddress == null) {
                    return;
                }
                if (macAddress.length() > 0) {
                    this.f3657b.put("mac_id", macAddress);
                }
            } catch (JSONException e3) {
                Log.e("StatUtils", "error " + e3.getMessage());
            }
        }

        public static synchronized C0398b m5325a(Context context) {
            C0398b c0398b;
            synchronized (C0398b.class) {
                if (f3655c == null) {
                    f3655c = new C0398b(context);
                }
                c0398b = f3655c;
            }
            return c0398b;
        }

        public JSONObject m5326a() {
            return this.f3657b;
        }
    }

    static {
        f3658a = 0.5d;
        f3659b = 0.2d;
        f3660c = 0.2d;
        f3661d = 0.1d;
    }

    public static C0397a m5327a() {
        String str;
        try {
            byte[] bArr = new byte[1024];
            new RandomAccessFile("/proc/cpuinfo", "r").read(bArr);
            str = new String(bArr);
            int indexOf = str.indexOf(0);
            if (indexOf != -1) {
                str = str.substring(0, indexOf);
            }
        } catch (IOException e) {
            IOException iOException = e;
            str = "";
            iOException.printStackTrace();
        }
        C0397a a = C0399b.m5328a(str);
        a.f3654e = (long) C0399b.m5337e();
        return a;
    }

    private static C0397a m5328a(String str) {
        if (str == null || "".equals(str)) {
            return null;
        }
        C0397a c0397a = new C0397a();
        c0397a.f3650a = 0;
        c0397a.f3652c = 0;
        c0397a.f3651b = 1;
        c0397a.f3653d = 0.0d;
        if (str.contains("ARMv5")) {
            c0397a.f3650a = 1;
        } else if (str.contains("ARMv6")) {
            c0397a.f3650a = 16;
        } else if (str.contains("ARMv7")) {
            c0397a.f3650a = ProGuard.f5669b;
        }
        if (str.contains("neon")) {
            c0397a.f3652c |= ProGuard.f5669b;
        }
        if (str.contains("vfpv3")) {
            c0397a.f3652c |= 16;
        }
        if (str.contains(" vfp")) {
            c0397a.f3652c |= 1;
        }
        for (String str2 : str.split("\n")) {
            int indexOf;
            if (str2.contains("CPU variant")) {
                indexOf = str2.indexOf(": ");
                if (indexOf >= 0) {
                    try {
                        c0397a.f3651b = Integer.decode(str2.substring(indexOf + 2)).intValue();
                        c0397a.f3651b = c0397a.f3651b == 0 ? 1 : c0397a.f3651b;
                    } catch (NumberFormatException e) {
                        c0397a.f3651b = 1;
                    }
                }
            } else if (str2.contains("BogoMIPS")) {
                indexOf = str2.indexOf(": ");
                if (indexOf >= 0) {
                    str2.substring(indexOf + 2);
                }
            }
        }
        return c0397a;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String m5329a(java.io.InputStream r5) {
        /*
        if (r5 != 0) goto L_0x0004;
    L_0x0002:
        r0 = 0;
    L_0x0003:
        return r0;
    L_0x0004:
        r0 = new java.io.BufferedReader;
        r1 = new java.io.InputStreamReader;
        r1.<init>(r5);
        r0.<init>(r1);
        r1 = new java.lang.StringBuilder;
        r1.<init>();
    L_0x0013:
        r2 = r0.readLine();	 Catch:{ IOException -> 0x001d }
        if (r2 == 0) goto L_0x0042;
    L_0x0019:
        r1.append(r2);	 Catch:{ IOException -> 0x001d }
        goto L_0x0013;
    L_0x001d:
        r0 = move-exception;
        r2 = "StatUtils";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0082 }
        r3.<init>();	 Catch:{ all -> 0x0082 }
        r4 = "error ";
        r3 = r3.append(r4);	 Catch:{ all -> 0x0082 }
        r0 = r0.getMessage();	 Catch:{ all -> 0x0082 }
        r0 = r3.append(r0);	 Catch:{ all -> 0x0082 }
        r0 = r0.toString();	 Catch:{ all -> 0x0082 }
        android.util.Log.e(r2, r0);	 Catch:{ all -> 0x0082 }
        r5.close();	 Catch:{ IOException -> 0x0064 }
    L_0x003d:
        r0 = r1.toString();
        goto L_0x0003;
    L_0x0042:
        r5.close();	 Catch:{ IOException -> 0x0046 }
        goto L_0x003d;
    L_0x0046:
        r0 = move-exception;
        r2 = "StatUtils";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "error ";
        r3 = r3.append(r4);
        r0 = r0.getMessage();
        r0 = r3.append(r0);
        r0 = r0.toString();
        android.util.Log.e(r2, r0);
        goto L_0x003d;
    L_0x0064:
        r0 = move-exception;
        r2 = "StatUtils";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "error ";
        r3 = r3.append(r4);
        r0 = r0.getMessage();
        r0 = r3.append(r0);
        r0 = r0.toString();
        android.util.Log.e(r2, r0);
        goto L_0x003d;
    L_0x0082:
        r0 = move-exception;
        r5.close();	 Catch:{ IOException -> 0x0087 }
    L_0x0086:
        throw r0;
    L_0x0087:
        r1 = move-exception;
        r2 = "StatUtils";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "error ";
        r3 = r3.append(r4);
        r1 = r1.getMessage();
        r1 = r3.append(r1);
        r1 = r1.toString();
        android.util.Log.e(r2, r1);
        goto L_0x0086;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.frontia.a.d.b.a(java.io.InputStream):java.lang.String");
    }

    public static int[] m5330a(Context context) {
        int[] iArr = new int[3];
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null) {
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            return iArr;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        if (i >= i2) {
            int i3 = i2;
            i2 = i;
            i = i3;
        }
        iArr[0] = i2;
        iArr[1] = i;
        iArr[2] = displayMetrics.densityDpi;
        return iArr;
    }

    public static long m5331b() {
        FileReader fileReader;
        long intValue;
        Throwable th;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                BufferedReader bufferedReader = new BufferedReader(fileReader, 8192);
                String readLine = bufferedReader.readLine();
                intValue = readLine != null ? (long) (Integer.valueOf(readLine.split("\\s+")[1]).intValue() / 1024) : 0;
                bufferedReader.close();
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (IOException e) {
                        Log.e("StatUtils", " IO Exception " + e.getMessage());
                    }
                }
            } catch (IOException e2) {
                intValue = -1;
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (IOException e3) {
                        Log.e("StatUtils", " IO Exception " + e3.getMessage());
                    }
                }
                return intValue;
            } catch (Throwable th2) {
                th = th2;
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (IOException e4) {
                        Log.e("StatUtils", " IO Exception " + e4.getMessage());
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            fileReader = null;
            intValue = -1;
            if (fileReader != null) {
                fileReader.close();
            }
            return intValue;
        } catch (Throwable th3) {
            fileReader = null;
            th = th3;
            if (fileReader != null) {
                fileReader.close();
            }
            throw th;
        }
        return intValue;
    }

    public static String m5332b(Context context) {
        try {
            Enumeration networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces == null) {
                return null;
            }
            String str = null;
            while (networkInterfaces.hasMoreElements()) {
                Enumeration inetAddresses = ((NetworkInterface) networkInterfaces.nextElement()).getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddress = (InetAddress) inetAddresses.nextElement();
                    str = !inetAddress.isLoopbackAddress() ? inetAddress.getHostAddress().toString() : str;
                }
            }
            return str;
        } catch (Exception e) {
            Log.e("StatUtils", "error " + e.getMessage());
            return null;
        }
    }

    public static String m5333c() {
        String str = "";
        C0397a a = C0399b.m5327a();
        return (a.f3650a & 1) == 1 ? "armv5" : (a.f3650a & 16) == 16 ? "armv6" : (a.f3650a & ProGuard.f5669b) == ProGuard.f5669b ? "armv7" : "unknown";
    }

    public static boolean m5334c(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
            return false;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        return networkInfo != null && networkInfo.isConnectedOrConnecting();
    }

    public static String m5335d() {
        String str = "";
        C0397a a = C0399b.m5327a();
        return (a.f3652c & ProGuard.f5669b) == ProGuard.f5669b ? "neon" : (a.f3652c & 1) == 1 ? "vfp" : (a.f3652c & 16) == 16 ? "vfpv3" : "unknown";
    }

    public static String m5336d(Context context) {
        return C0384a.m5305b(context);
    }

    private static int m5337e() {
        FileReader fileReader;
        BufferedReader bufferedReader;
        IOException e;
        FileNotFoundException e2;
        FileReader fileReader2;
        Throwable th;
        BufferedReader bufferedReader2 = null;
        int i = 0;
        try {
            fileReader = new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq");
            try {
                bufferedReader = new BufferedReader(fileReader);
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        i = Integer.parseInt(readLine.trim());
                    }
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (IOException e3) {
                            Log.e("StatUtils", "error " + e3.getMessage());
                        }
                    }
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e32) {
                            Log.e("StatUtils", "error " + e32.getMessage());
                        }
                    }
                } catch (FileNotFoundException e4) {
                    e2 = e4;
                    fileReader2 = fileReader;
                    try {
                        Log.e("StatUtils", "error " + e2.getMessage());
                        if (fileReader2 != null) {
                            try {
                                fileReader2.close();
                            } catch (IOException e322) {
                                Log.e("StatUtils", "error " + e322.getMessage());
                            }
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e3222) {
                                Log.e("StatUtils", "error " + e3222.getMessage());
                            }
                        }
                        return i;
                    } catch (Throwable th2) {
                        th = th2;
                        fileReader = fileReader2;
                        bufferedReader2 = bufferedReader;
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException e32222) {
                                Log.e("StatUtils", "error " + e32222.getMessage());
                            }
                        }
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                            } catch (IOException e322222) {
                                Log.e("StatUtils", "error " + e322222.getMessage());
                            }
                        }
                        throw th;
                    }
                } catch (IOException e5) {
                    e322222 = e5;
                    bufferedReader2 = bufferedReader;
                    try {
                        Log.e("StatUtils", "error " + e322222.getMessage());
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException e3222222) {
                                Log.e("StatUtils", "error " + e3222222.getMessage());
                            }
                        }
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                            } catch (IOException e32222222) {
                                Log.e("StatUtils", "error " + e32222222.getMessage());
                            }
                        }
                        return i;
                    } catch (Throwable th3) {
                        th = th3;
                        if (fileReader != null) {
                            fileReader.close();
                        }
                        if (bufferedReader2 != null) {
                            bufferedReader2.close();
                        }
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    bufferedReader2 = bufferedReader;
                    if (fileReader != null) {
                        fileReader.close();
                    }
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                    }
                    throw th;
                }
            } catch (FileNotFoundException e6) {
                e2 = e6;
                bufferedReader = null;
                fileReader2 = fileReader;
                Log.e("StatUtils", "error " + e2.getMessage());
                if (fileReader2 != null) {
                    fileReader2.close();
                }
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                return i;
            } catch (IOException e7) {
                e32222222 = e7;
                Log.e("StatUtils", "error " + e32222222.getMessage());
                if (fileReader != null) {
                    fileReader.close();
                }
                if (bufferedReader2 != null) {
                    bufferedReader2.close();
                }
                return i;
            }
        } catch (FileNotFoundException e8) {
            e2 = e8;
            bufferedReader = null;
            Log.e("StatUtils", "error " + e2.getMessage());
            if (fileReader2 != null) {
                fileReader2.close();
            }
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            return i;
        } catch (IOException e9) {
            e32222222 = e9;
            fileReader = null;
            Log.e("StatUtils", "error " + e32222222.getMessage());
            if (fileReader != null) {
                fileReader.close();
            }
            if (bufferedReader2 != null) {
                bufferedReader2.close();
            }
            return i;
        } catch (Throwable th5) {
            th = th5;
            fileReader = null;
            if (fileReader != null) {
                fileReader.close();
            }
            if (bufferedReader2 != null) {
                bufferedReader2.close();
            }
            throw th;
        }
        return i;
    }

    public static boolean m5338e(Context context) {
        return C0384a.m5304a(context);
    }

    public static JSONObject m5339f(Context context) {
        return C0398b.m5325a(context).m5326a();
    }

    public static JSONObject m5340g(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                jSONObject.put(com.umeng.update.ProGuard.f5475c, telephonyManager.getNetworkType());
                jSONObject.put("operator", telephonyManager.getNetworkOperatorName());
            }
            jSONObject.put("access_type", C0399b.m5336d(context));
            if (telephonyManager != null) {
                String networkOperator = telephonyManager.getNetworkOperator();
                if (TextUtils.isEmpty(networkOperator) || networkOperator.length() < 4) {
                    jSONObject.put("mcc", -1);
                    jSONObject.put("mnc", -1);
                } else {
                    try {
                        jSONObject.put("mcc", Integer.parseInt(networkOperator.substring(0, 3)));
                        jSONObject.put("mnc", Integer.parseInt(networkOperator.substring(3)));
                    } catch (NumberFormatException e) {
                        jSONObject.put("mcc", -1);
                        jSONObject.put("mnc", -1);
                    }
                }
            }
            jSONObject.put("user_ip", C0399b.m5332b(context));
        } catch (JSONException e2) {
        }
        return jSONObject;
    }
}
