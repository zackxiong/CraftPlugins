package com.baidu.platform.comapi.p088c;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.location.LocationManager;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.baidu.android.bbalbs.common.util.CommonParam;
import com.baidu.frontia.module.deeplink.GetApn;
import com.baidu.mapapi.VersionInfo;
import com.baidu.platform.comjni.map.commonmemcache.C0644a;
import com.baidu.platform.comjni.p089a.p090a.C0640a;
import com.umeng.update.ProGuard;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Arrays;

/* renamed from: com.baidu.platform.comapi.c.c */
public class C0607c {
    static String f4707A;
    static String f4708B;
    public static Context f4709C;
    public static final int f4710D;
    public static float f4711E;
    public static String f4712F;
    private static final String f4713G;
    private static boolean f4714H;
    private static int f4715I;
    private static int f4716J;
    static C0644a f4717a;
    static C0640a f4718b;
    static String f4719c;
    static String f4720d;
    static String f4721e;
    static String f4722f;
    static String f4723g;
    static int f4724h;
    static int f4725i;
    static int f4726j;
    static int f4727k;
    static int f4728l;
    static int f4729m;
    static String f4730n;
    static String f4731o;
    static String f4732p;
    static String f4733q;
    static String f4734r;
    static String f4735s;
    static String f4736t;
    static String f4737u;
    static String f4738v;
    static String f4739w;
    static String f4740x;
    static String f4741y;
    static String f4742z;

    static {
        f4713G = C0607c.class.getSimpleName();
        f4717a = new C0644a();
        f4718b = new C0640a();
        f4719c = "02";
        f4736t = "baidu";
        f4737u = "baidu";
        f4738v = "";
        f4739w = "";
        f4740x = "";
        f4707A = "-1";
        f4708B = "-1";
        f4710D = Integer.parseInt(VERSION.SDK);
        f4711E = 1.0f;
        f4714H = true;
        f4715I = 0;
        f4716J = 0;
    }

    public static Bundle m6469a() {
        Bundle bundle = new Bundle();
        bundle.putString("cpu", f4738v);
        bundle.putString("resid", f4719c);
        bundle.putString(ProGuard.f5477e, f4736t);
        bundle.putString("glr", f4739w);
        bundle.putString("glv", f4740x);
        bundle.putString("mb", C0607c.m6479e());
        bundle.putString("sv", C0607c.m6483g());
        bundle.putString("os", C0607c.m6487i());
        bundle.putInt("dpi_x", C0607c.m6489j());
        bundle.putInt("dpi_y", C0607c.m6489j());
        bundle.putString("net", f4733q);
        bundle.putString("cuid", C0607c.m6491l());
        bundle.putByteArray("signature", C0607c.m6472a(f4709C));
        bundle.putString("pcn", f4709C.getPackageName());
        bundle.putInt("screen_x", C0607c.m6481f());
        bundle.putInt("screen_y", C0607c.m6485h());
        return bundle;
    }

    public static void m6470a(String str) {
        f4733q = str;
        C0607c.m6477d();
    }

    public static void m6471a(String str, String str2) {
        f4707A = str2;
        f4708B = str;
        C0607c.m6477d();
    }

    public static byte[] m6472a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0].toByteArray();
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void m6473b() {
        if (f4717a != null) {
            f4717a.m6664a();
        }
    }

    public static void m6474b(Context context) {
        f4709C = context;
        f4741y = context.getFilesDir().getAbsolutePath();
        f4742z = context.getCacheDir().getAbsolutePath();
        f4721e = Build.MODEL;
        f4722f = "Android" + VERSION.SDK;
        f4720d = context.getPackageName();
        C0607c.m6478d(context);
        C0607c.m6480e(context);
        C0607c.m6482f(context);
        C0607c.m6484g(context);
        C0607c.m6486h(context);
        C0607c.m6488i(context);
        try {
            LocationManager locationManager = (LocationManager) context.getSystemService("location");
            f4715I = locationManager.isProviderEnabled("gps") ? 1 : 0;
            f4716J = locationManager.isProviderEnabled("network") ? 1 : 0;
        } catch (Exception e) {
        }
    }

    public static String m6475c() {
        return f4733q;
    }

    public static void m6476c(Context context) {
        int i = 1;
        int i2 = 0;
        try {
            File file = new File(f4741y);
            if (!file.exists()) {
                file.mkdirs();
            }
            AssetManager assets = context.getAssets();
            String[] strArr = new String[]{"CMRequire.dat", "VerDatset.dat", "cfg/a/ResPack.cfg", "cfg/h/DVHotcity.cfg", "cfg/l/DVHotcity.cfg", "cfg/h/DVHotMap.cfg", "cfg/l/DVHotMap.cfg", "cfg/l/DVDirectory.cfg", "cfg/l/DVVersion.cfg", "cfg/h/DVDirectory.cfg", "cfg/h/DVVersion.cfg", "cfg/a/mapstyle.sty", "cfg/a/satellitestyle.sty", "cfg/a/trafficstyle.sty"};
            String[] strArr2 = new String[]{"CMRequire.dat", "VerDatset.dat", "cfg/a/ResPack.rs", "cfg/h/DVHotcity.cfg", "cfg/l/DVHotcity.cfg", "cfg/h/DVHotMap.cfg", "cfg/l/DVHotMap.cfg", "cfg/l/DVDirectory.cfg", "cfg/l/DVVersion.cfg", "cfg/h/DVDirectory.cfg", "cfg/h/DVVersion.cfg", "cfg/a/mapstyle.sty", "cfg/a/satellitestyle.sty", "cfg/a/trafficstyle.sty"};
            try {
                file = new File(f4741y + "/ver.dat");
                byte[] bArr = new byte[]{(byte) 3, (byte) 4, (byte) 0, (byte) 0, (byte) 0, (byte) 0};
                if (file.exists()) {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    byte[] bArr2 = new byte[fileInputStream.available()];
                    fileInputStream.read(bArr2);
                    fileInputStream.close();
                    if (Arrays.equals(bArr2, bArr)) {
                        i = 0;
                    }
                }
                if (i != 0) {
                    if (file.exists()) {
                        file.delete();
                    }
                    file.createNewFile();
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    fileOutputStream.write(bArr);
                    fileOutputStream.close();
                    file = new File(f4741y + "/cfg/a");
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    file = new File(f4741y + "/cfg/h");
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    file = new File(f4741y + "/cfg/l");
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (i != 0) {
                while (i2 < strArr2.length) {
                    try {
                        InputStream open = assets.open(strArr[i2]);
                        byte[] bArr3 = new byte[open.available()];
                        open.read(bArr3);
                        open.close();
                        file = new File(f4741y + "/" + strArr2[i2]);
                        if (file.exists()) {
                            file.delete();
                        }
                        file.createNewFile();
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                        fileOutputStream2.write(bArr3);
                        fileOutputStream2.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    i2++;
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public static void m6477d() {
        Bundle bundle = new Bundle();
        bundle.putString("cpu", f4738v);
        bundle.putString("resid", f4719c);
        bundle.putString(ProGuard.f5477e, f4736t);
        bundle.putString("glr", f4739w);
        bundle.putString("glv", f4740x);
        bundle.putString("mb", C0607c.m6479e());
        bundle.putString("sv", C0607c.m6483g());
        bundle.putString("os", C0607c.m6487i());
        bundle.putInt("dpi_x", C0607c.m6489j());
        bundle.putInt("dpi_y", C0607c.m6489j());
        bundle.putString("net", f4733q);
        bundle.putString("cuid", C0607c.m6491l());
        bundle.putString("pcn", f4709C.getPackageName());
        bundle.putInt("screen_x", C0607c.m6481f());
        bundle.putInt("screen_y", C0607c.m6485h());
        bundle.putString("appid", f4707A);
        bundle.putString("uid", f4708B);
        bundle.putString("token", f4712F);
        if (f4717a != null) {
            f4717a.m6665a(bundle);
        }
    }

    private static void m6478d(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            f4723g = VersionInfo.getApiVersion();
            f4724h = packageInfo.versionCode;
        } catch (NameNotFoundException e) {
            f4723g = "1.0.0";
            f4724h = 1;
        }
    }

    public static String m6479e() {
        return f4721e;
    }

    private static void m6480e(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Display defaultDisplay = windowManager != null ? windowManager.getDefaultDisplay() : null;
        if (defaultDisplay != null) {
            f4725i = defaultDisplay.getWidth();
            f4726j = defaultDisplay.getHeight();
            defaultDisplay.getMetrics(displayMetrics);
        }
        f4711E = displayMetrics.density;
        f4727k = (int) displayMetrics.xdpi;
        f4728l = (int) displayMetrics.ydpi;
        if (f4710D > 3) {
            f4729m = displayMetrics.densityDpi;
        } else {
            f4729m = 160;
        }
        if (f4729m == 0) {
            f4729m = 160;
        }
    }

    public static int m6481f() {
        return f4725i;
    }

    private static void m6482f(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                f4731o = telephonyManager.getSubscriberId();
            }
        } catch (Exception e) {
            f4730n = "";
            f4731o = "";
            f4732p = "";
            e.printStackTrace();
        }
    }

    public static String m6483g() {
        return f4723g;
    }

    private static void m6484g(Context context) {
        f4734r = Secure.getString(context.getContentResolver(), "android_id");
    }

    public static int m6485h() {
        return f4726j;
    }

    private static void m6486h(Context context) {
        try {
            if (((TelephonyManager) context.getSystemService("phone")) != null) {
                f4735s = ((WifiManager) context.getSystemService(GetApn.APN_TYPE_WIFI)).getConnectionInfo().getMacAddress();
            }
        } catch (Exception e) {
            f4735s = "";
            e.printStackTrace();
        }
    }

    public static String m6487i() {
        return f4722f;
    }

    private static void m6488i(Context context) {
        f4733q = "0";
    }

    public static int m6489j() {
        return f4729m;
    }

    public static String m6490k() {
        return f4741y;
    }

    public static String m6491l() {
        String a;
        try {
            a = CommonParam.m4181a(f4709C);
        } catch (Exception e) {
            a = "";
        }
        return a == null ? "" : a;
    }
}
