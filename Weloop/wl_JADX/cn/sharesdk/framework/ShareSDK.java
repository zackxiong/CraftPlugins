package cn.sharesdk.framework;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.HashMap;

public class ShareSDK {
    private static C0044p f1922a;
    private static boolean f1923b;

    static {
        f1923b = true;
    }

    static String m2898a(int i, String str) {
        m2909c();
        return f1922a.m3038a(i, str);
    }

    static String m2899a(Bitmap bitmap) {
        m2909c();
        return f1922a.m3039a(bitmap);
    }

    static String m2900a(String str) {
        m2909c();
        return f1922a.m3066d(str);
    }

    static String m2901a(String str, boolean z, int i, String str2) {
        m2909c();
        return f1922a.m3040a(str, z, i, str2);
    }

    static void m2902a(int i, int i2) {
        m2909c();
        f1922a.m3043a(i, i2);
    }

    static void m2903a(String str, String str2) {
        m2909c();
        f1922a.m3049a(str, str2);
    }

    static boolean m2904a() {
        m2909c();
        return f1922a.m3071g();
    }

    static boolean m2905a(HashMap<String, Object> hashMap) {
        m2909c();
        return f1922a.m3052a((HashMap) hashMap);
    }

    static String m2906b(String str, String str2) {
        m2909c();
        return f1922a.m3054b(str, str2);
    }

    static boolean m2907b() {
        m2909c();
        return f1922a.m3072h();
    }

    static boolean m2908b(HashMap<String, Object> hashMap) {
        m2909c();
        return f1922a.m3059b((HashMap) hashMap);
    }

    private static void m2909c() {
        if (f1922a == null) {
            throw new NullPointerException("Please call ShareSDK.initSDK(Context) before any action.");
        }
    }

    public static void closeDebug() {
        f1923b = false;
    }

    public static Platform getPlatform(Context context, String str) {
        m2909c();
        return f1922a.m3053b(str);
    }

    public static Platform getPlatform(String str) {
        m2909c();
        return f1922a.m3053b(str);
    }

    public static synchronized Platform[] getPlatformList() {
        Platform[] c;
        synchronized (ShareSDK.class) {
            m2909c();
            c = f1922a.m3064c();
        }
        return c;
    }

    public static synchronized Platform[] getPlatformList(Context context) {
        Platform[] platformList;
        synchronized (ShareSDK.class) {
            platformList = getPlatformList();
        }
        return platformList;
    }

    public static int getSDKVersionCode() {
        m2909c();
        return f1922a.m3068e();
    }

    public static String getSDKVersionName() {
        m2909c();
        return f1922a.m3065d();
    }

    public static <T extends Service> T getService(Class<T> cls) {
        m2909c();
        return f1922a.m3061c((Class) cls);
    }

    public static void initSDK(Context context) {
        initSDK(context, null, true);
    }

    public static void initSDK(Context context, String str) {
        initSDK(context, str, true);
    }

    public static void initSDK(Context context, String str, boolean z) {
        if (f1922a == null) {
            C0044p c0044p = new C0044p(context);
            c0044p.m3047a(str);
            c0044p.m3051a(z);
            c0044p.m3041a();
            f1922a = c0044p;
        }
    }

    public static void initSDK(Context context, boolean z) {
        initSDK(context, null, z);
    }

    public static boolean isDebug() {
        return f1923b;
    }

    public static boolean isRemoveCookieOnAuthorize() {
        m2909c();
        return f1922a.m3070f();
    }

    public static void logApiEvent(String str, int i) {
        m2909c();
        f1922a.m3048a(str, i);
    }

    public static void logDemoEvent(int i, Platform platform) {
        m2909c();
        f1922a.m3044a(i, platform);
    }

    public static String platformIdToName(int i) {
        m2909c();
        return f1922a.m3062c(i);
    }

    public static int platformNameToId(String str) {
        m2909c();
        return f1922a.m3060c(str);
    }

    public static void registerPlatform(Class<? extends CustomPlatform> cls) {
        m2909c();
        f1922a.m3067d((Class) cls);
    }

    public static void registerService(Class<? extends Service> cls) {
        m2909c();
        f1922a.m3046a((Class) cls);
    }

    public static void removeCookieOnAuthorize(boolean z) {
        m2909c();
        f1922a.m3058b(z);
    }

    public static void setConnTimeout(int i) {
        m2909c();
        f1922a.m3042a(i);
    }

    public static void setPlatformDevInfo(String str, HashMap<String, Object> hashMap) {
        m2909c();
        f1922a.m3050a(str, (HashMap) hashMap);
    }

    public static void setReadTimeout(int i) {
        m2909c();
        f1922a.m3055b(i);
    }

    public static void stopSDK() {
        if (f1922a != null) {
            f1922a.m2972b();
        }
        f1922a = null;
    }

    public static void stopSDK(Context context) {
        stopSDK();
    }

    public static void unregisterPlatform(Class<? extends CustomPlatform> cls) {
        m2909c();
        f1922a.m3069e(cls);
    }

    public static void unregisterService(Class<? extends Service> cls) {
        m2909c();
        f1922a.m3057b((Class) cls);
    }
}
