package com.baidu.android.pushservice.util;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.ConnectivityManager;
import android.net.LocalServerSocket;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.SystemClock;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.PushLightapp;
import com.baidu.android.pushservice.jni.Base64Encoder;
import com.baidu.android.pushservice.jni.PushSocket;
import com.baidu.android.pushservice.p072f.C0277k;
import com.baidu.frontia.module.deeplink.GetApn;
import com.baidu.frontia.p075a.p081e.C0402c;
import com.baidu.frontia.p075a.p081e.C0404d;
import com.baidu.frontia.p075a.p081e.C0405e;
import com.baidu.location.LocationClientOption;
import com.baidu.mapapi.map.WeightedLatLng;
import com.umeng.update.UpdateConfig;
import com.umeng.update.util.ProGuard;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

@SuppressLint({"WorldReadableFiles"})
/* renamed from: com.baidu.android.pushservice.util.f */
public final class C0374f {
    private static final String[] f3606a;
    private static ArrayList<String> f3607b;
    private static boolean f3608c;

    static {
        f3606a = new String[]{UpdateConfig.f5447h, "android.permission.READ_PHONE_STATE", UpdateConfig.f5446g, "android.permission.WRITE_SETTINGS", "android.permission.VIBRATE", UpdateConfig.f5445f, "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_WIFI_STATE"};
        f3607b = new ArrayList();
        f3608c = false;
    }

    public static String m5169A(Context context) {
        String string = System.getString(context.getContentResolver(), PushLightapp.SETTINGS_KEY_CURRENT_PACKAGE_NAME);
        if (C0374f.m5240q(context, string)) {
            if (C0374f.m5228k(context, string)) {
                return string;
            }
            if (C0192a.m4341b()) {
                Log.d("Utility", "The Highest priority Service: " + string + " is disabled,Maybe use setComponentEnabledSetting method");
            }
        }
        return C0374f.m5170B(context);
    }

    public static String m5170B(Context context) {
        String packageName = context.getPackageName();
        List<ResolveInfo> t = C0374f.m5245t(context.getApplicationContext());
        if (t.size() <= 1) {
            return packageName;
        }
        long j = context.getSharedPreferences(context.getPackageName() + PushLightapp.SHARED_NAME_SETTINGS, 5).getLong(PushLightapp.KEY_PRIORITY2, 0);
        String string = System.getString(context.getContentResolver(), PushLightapp.SETTINGS_KEY_CURRENT_PACKAGE_NAME);
        String str = packageName;
        long j2 = j;
        for (ResolveInfo resolveInfo : t) {
            SharedPreferences sharedPreferences;
            Context context2;
            String str2 = resolveInfo.activityInfo.packageName;
            Context context3 = null;
            try {
                context3 = context.createPackageContext(str2, 2);
                sharedPreferences = context3.getSharedPreferences(str2 + PushLightapp.SHARED_NAME_SETTINGS, 5);
                context2 = context3;
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    Log.w("Utility", "create packagecontext exception: " + e.getMessage());
                }
                sharedPreferences = null;
                context2 = context3;
            }
            if (sharedPreferences != null) {
                long j3 = sharedPreferences.getLong(PushLightapp.KEY_PRIORITY2, 0);
                long j4;
                if (j3 > j2) {
                    if (C0192a.m4341b()) {
                        Log.d("Utility", "Find more higher priority pkg : " + str2 + " priority = " + j3 + ",Current highest priority pkg : " + str + " priority = " + j2);
                    }
                    if (C0374f.m5228k(context2, str2)) {
                        packageName = str2;
                        j = j3;
                    } else {
                        if (C0192a.m4341b()) {
                            Log.d("Utility", str2 + "push service is disabled");
                            j4 = j2;
                            packageName = str;
                            j = j4;
                        }
                        j4 = j2;
                        packageName = str;
                        j = j4;
                    }
                } else {
                    if (j3 == j2 && str2.equals(string) && C0374f.m5228k(context2, str2)) {
                        packageName = str2;
                        j = j3;
                    }
                    j4 = j2;
                    packageName = str;
                    j = j4;
                }
                str = packageName;
                j2 = j;
            } else if (C0192a.m4341b()) {
                Log.w("Utility", "App:" + str2 + " doesn't init Version!");
            }
        }
        if (C0192a.m4341b()) {
            Log.d("Utility", "Current highest priority Push PackageName: " + str);
        }
        return str;
    }

    public static long m5171C(Context context) {
        String packageName = context.getPackageName();
        List<ResolveInfo> t = C0374f.m5245t(context.getApplicationContext());
        if (t.size() <= 1) {
            return 0;
        }
        long j = context.getSharedPreferences(context.getPackageName() + PushLightapp.SHARED_NAME_SETTINGS, 5).getLong(PushLightapp.KEY_PRIORITY2, 0);
        String string = System.getString(context.getContentResolver(), PushLightapp.SETTINGS_KEY_CURRENT_PACKAGE_NAME);
        String str = packageName;
        long j2 = j;
        for (ResolveInfo resolveInfo : t) {
            SharedPreferences sharedPreferences;
            Context context2;
            String str2 = resolveInfo.activityInfo.packageName;
            Context context3 = null;
            try {
                context3 = context.createPackageContext(str2, 2);
                sharedPreferences = context3.getSharedPreferences(str2 + PushLightapp.SHARED_NAME_SETTINGS, 5);
                context2 = context3;
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    Log.w("Utility", "create packagecontext exception: " + e.getMessage());
                }
                sharedPreferences = null;
                context2 = context3;
            }
            if (sharedPreferences != null) {
                long j3 = sharedPreferences.getLong(PushLightapp.KEY_PRIORITY2, 0);
                long j4;
                if (j3 > j2) {
                    if (C0192a.m4341b()) {
                        Log.d("Utility", "Find more higher priority pkg : " + str2 + " priority = " + j3 + ",Current highest priority pkg : " + str + " priority = " + j2);
                    }
                    if (C0374f.m5228k(context2, str2)) {
                        packageName = str2;
                        j = j3;
                    } else {
                        if (C0192a.m4341b()) {
                            Log.d("Utility", str2 + "push service is disabled");
                            j4 = j2;
                            packageName = str;
                            j = j4;
                        }
                        j4 = j2;
                        packageName = str;
                        j = j4;
                    }
                } else {
                    if (j3 == j2 && str2.equals(string) && C0374f.m5228k(context2, str2)) {
                        packageName = str2;
                        j = j3;
                    }
                    j4 = j2;
                    packageName = str;
                    j = j4;
                }
                str = packageName;
                j2 = j;
            } else if (C0192a.m4341b()) {
                Log.w("Utility", "App:" + str2 + " doesn't init Version!");
            }
        }
        if (!C0192a.m4341b()) {
            return j2;
        }
        Log.d("Utility", "Current highest priority Push PackageName: " + str + "Highest Priority is " + j2);
        return j2;
    }

    private static boolean m5172D(Context context) {
        if (!C0374f.m5195a(context, "com.baidu.android.pushservice.action.notification.SHOW", "com.baidu.android.pushservice.PushServiceReceiver", true)) {
            Log.e("Utility", "com.baidu.android.pushservice.PushServiceReceiver did not declaredcom.baidu.android.pushservice.action.notification.SHOW");
            return false;
        } else if (!C0374f.m5195a(context, "android.net.conn.CONNECTIVITY_CHANGE", "com.baidu.android.pushservice.PushServiceReceiver", true)) {
            Log.e("Utility", "com.baidu.android.pushservice.PushServiceReceiver did not declaredandroid.net.conn.CONNECTIVITY_CHANGE");
            return false;
        } else if (!C0374f.m5195a(context, PushLightapp.ACTION_REGISTER_SYNC, "com.baidu.android.pushservice.RegistrationReceiver", true)) {
            Log.e("Utility", "com.baidu.android.pushservice.RegistrationReceiver did not declaredcom.baidu.android.pushservice.action.BIND_SYNC");
            return false;
        } else if (C0374f.m5195a(context, PushConstants.ACTION_METHOD, "com.baidu.android.pushservice.RegistrationReceiver", true)) {
            return true;
        } else {
            Log.e("Utility", "com.baidu.android.pushservice.PushServiceReceiver did not declaredcom.baidu.android.pushservice.action.notification.SHOW");
            return false;
        }
    }

    private static boolean m5173E(Context context) {
        return C0374f.m5195a(context, "com.baidu.android.pushservice.action.PUSH_SERVICE", "com.baidu.android.pushservice.PushService", false);
    }

    private static ArrayList<String> m5174F(Context context) {
        List<ResolveInfo> t = C0374f.m5245t(context.getApplicationContext());
        ArrayList<String> arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : t) {
            if (arrayList.contains(resolveInfo.activityInfo.packageName)) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
        }
        return arrayList;
    }

    public static int m5175a(Map map, String str, int i) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            try {
                i = Integer.valueOf(str2).intValue();
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    Log.d("Utility", "getMapInt E: " + e);
                }
            }
        }
        return i;
    }

    public static PackageInfo m5176a(Context context, String str) {
        PackageInfo packageInfo = null;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                packageInfo = packageManager.getPackageInfo(str, 64);
            }
        } catch (Exception e) {
        }
        return packageInfo;
    }

    public static C0277k m5177a(C0277k c0277k, Context context, String str) {
        PackageInfo a = C0374f.m5176a(context, str);
        if (a != null) {
            c0277k.m4849e(a.applicationInfo.loadLabel(context.getPackageManager()).toString());
            c0277k.m4853g(a.versionName);
            c0277k.m4839a(a.versionCode);
            c0277k.m4851f(C0374f.m5237p(context, str));
            c0277k.m4842b(C0374f.m5235o(context, str));
        }
        return c0277k;
    }

    public static String m5178a(long j) {
        StringBuffer stringBuffer = new StringBuffer();
        long currentTimeMillis = System.currentTimeMillis() - j;
        long ceil = (long) Math.ceil((((double) currentTimeMillis) * WeightedLatLng.DEFAULT_INTENSITY) / 1000.0d);
        long ceil2 = (long) Math.ceil((double) (((float) (currentTimeMillis / 60)) / 1000.0f));
        long ceil3 = (long) Math.ceil((double) (((float) ((currentTimeMillis / 60) / 60)) / 1000.0f));
        currentTimeMillis = (long) Math.ceil((double) (((float) (((currentTimeMillis / 24) / 60) / 60)) / 1000.0f));
        if (currentTimeMillis - 1 > 3) {
            stringBuffer.append(new SimpleDateFormat("MM\u6708dd\u65e5").format(new Date(j)));
        } else if (currentTimeMillis - 1 > 0) {
            stringBuffer.append(currentTimeMillis + "\u5929\u524d");
        } else if (ceil3 - 1 > 0) {
            if (ceil3 >= 24) {
                stringBuffer.append("1\u5929\u524d");
            } else {
                stringBuffer.append(ceil3 + "\u5c0f\u65f6\u524d");
            }
        } else if (ceil2 - 1 > 0) {
            if (ceil2 == 60) {
                stringBuffer.append("1\u5c0f\u65f6\u524d");
            } else {
                stringBuffer.append(ceil2 + "\u5206\u949f\u524d");
            }
        } else if (ceil - 1 <= 0) {
            stringBuffer.append("\u521a\u521a");
        } else if (ceil == 60) {
            stringBuffer.append("1\u5206\u949f\u524d");
        } else {
            stringBuffer.append(ceil + "\u79d2\u524d");
        }
        return stringBuffer.toString();
    }

    public static String m5179a(Context context, String str, String str2) {
        if (context == null) {
            Log.i("Utility", "getMetaData context == null");
            return null;
        }
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            applicationInfo = packageManager.getApplicationInfo(str, ProGuard.f5670c);
            return (applicationInfo == null || applicationInfo.metaData == null) ? null : applicationInfo.metaData.getString(str2);
        } catch (Throwable e) {
            Log.e("getMetaDataString", "--- " + str + " GetMetaData Exception:\r\n", e);
            applicationInfo = null;
        }
    }

    public static String m5180a(Throwable th) {
        Writer stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter, true);
        th.printStackTrace(printWriter);
        printWriter.flush();
        stringWriter.flush();
        return stringWriter.toString();
    }

    public static String m5181a(Map map, String str, String str2) {
        String str3 = (String) map.get(str);
        return str3 == null ? str2 : str3;
    }

    public static void m5182a(Context context, long j) {
        if (C0192a.m4341b()) {
            Log.d("Utility", ">>> setAlarmForRestart");
        }
        Context applicationContext = context.getApplicationContext();
        Intent createMethodIntent = PushConstants.createMethodIntent(applicationContext);
        createMethodIntent.setClassName(applicationContext.getPackageName(), C0374f.m5215e(applicationContext, applicationContext.getPackageName(), createMethodIntent.getAction()));
        C0374f.m5183a(applicationContext, createMethodIntent, j);
    }

    public static void m5183a(Context context, Intent intent, long j) {
        if (C0192a.m4341b()) {
            Log.d("Utility", ">>> setAlarmForSendInent : \r\n" + intent);
        }
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 268435456);
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        alarmManager.cancel(broadcast);
        alarmManager.set(3, SystemClock.elapsedRealtime() + j, broadcast);
    }

    public static void m5184a(Context context, Intent intent, String str, String str2) {
        intent.setFlags(32);
        if ((Build.MANUFACTURER.toLowerCase().startsWith("meizu") || Build.DISPLAY.toLowerCase().startsWith("flyme") || Build.MANUFACTURER.toLowerCase().startsWith("vivo") || Build.MANUFACTURER.toLowerCase().startsWith("bbk") || Build.DISPLAY.toLowerCase().startsWith("lenovoa788t") || (Build.MANUFACTURER.toLowerCase().startsWith("zte") && Build.DISPLAY.toLowerCase().startsWith("g720t"))) && C0374f.m5235o(context, str2) >= 32) {
            if (!TextUtils.isEmpty(str)) {
                intent.setAction(str);
            }
            if (!TextUtils.isEmpty(str2)) {
                intent.setPackage(str2);
                intent.setClassName(str2, "com.baidu.android.pushservice.CommandService");
            }
            intent.putExtra("command_type", "reflect_receiver");
            try {
                context.startService(intent);
                return;
            } catch (Exception e) {
                Log.e("Utility", "error " + e.getMessage());
                return;
            }
        }
        if (!TextUtils.isEmpty(str)) {
            intent.setAction(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            intent.setPackage(str2);
        }
        Object e2 = C0374f.m5215e(context, str2, str);
        if (!TextUtils.isEmpty(e2)) {
            intent.setClassName(str2, e2);
        }
        context.sendBroadcast(intent);
    }

    public static void m5185a(Context context, String str, int i) {
        if (context == null) {
            Log.w("Utility", "putSPInt context == null");
        } else {
            System.putInt(context.getContentResolver(), str, i);
        }
    }

    public static void m5186a(Context context, String str, Long l) {
        if (context == null) {
            Log.w("Utility", "putSPLong context == null");
        } else {
            System.putLong(context.getContentResolver(), str, l.longValue());
        }
    }

    public static void m5187a(Context context, boolean z) {
        if (C0374f.m5220g(context, context.getPackageName())) {
            C0192a.m4340b(context, z);
            C0374f.m5188a(context, true, true);
            C0374f.m5222h(context, context.getPackageName());
        }
    }

    public static void m5188a(Context context, boolean z, boolean z2) {
        if (C0192a.m4341b()) {
            Log.d("Utility", context.getPackageName() + ":updateServiceInfo2  isForce =" + z + "isSend = " + z2);
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("pst", 0);
        int e = C0374f.m5213e(context, context.getPackageName());
        if (sharedPreferences.getInt("pr_app_v", 0) < e || z) {
            Editor edit = context.getSharedPreferences(context.getPackageName() + PushLightapp.SHARED_NAME_SETTINGS, 5).edit();
            if (C0374f.m5207c(context)) {
                edit.putLong(PushLightapp.KEY_PRIORITY2, 0);
            } else {
                edit.putLong(PushLightapp.KEY_PRIORITY2, C0374f.m5231m(context));
            }
            edit.putInt("version2", C0192a.m4336a());
            edit.commit();
            Editor edit2 = sharedPreferences.edit();
            edit2.putInt("pr_app_v", e);
            edit2.commit();
        }
        if (z2) {
            C0374f.m5233n(context);
        }
    }

    public static synchronized void m5189a(String str, Context context) {
        synchronized (C0374f.class) {
            if (C0192a.f2943d > 0) {
                C0374f.m5202b(str, context);
            } else {
                f3607b.add("\n\r" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()) + " " + str + "\n\r");
                if (f3607b.size() >= 10) {
                    String str2 = new String();
                    String arrayList = f3607b.toString();
                    try {
                        str2 = Environment.getExternalStorageDirectory().getAbsolutePath();
                        File file = new File(str2, "baidu/pushservice/files");
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
                        Date date = new Date();
                        File file2 = new File(str2, "baidu/pushservice/files/msg" + simpleDateFormat.format(date) + ".log");
                        if (!file2.exists()) {
                            for (File file3 : file.listFiles()) {
                                String name = file3.getName();
                                if (name.startsWith("msg") && name.length() > 0 && ((int) Math.abs((simpleDateFormat.parse(name.substring(3, 11)).getTime() - date.getTime()) / 86400000)) >= 7) {
                                    file3.delete();
                                }
                            }
                        }
                        FileWriter fileWriter = new FileWriter(file2, true);
                        fileWriter.write(arrayList);
                        fileWriter.close();
                    } catch (Exception e) {
                        Log.e("Utility", e.getMessage());
                    }
                    f3607b.clear();
                }
            }
        }
    }

    private static synchronized void m5190a(String str, String str2) {
        synchronized (C0374f.class) {
            String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date());
            String str3 = new String();
            if (format.length() > 0) {
                str3 = format.substring(0, 4).concat(format.substring(5, 7)).concat(format.substring(8, 10));
            }
            format = format + " " + str2 + "\n\r";
            try {
                String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
                File file = new File(absolutePath, "baidu/pushservice/files");
                if (file.exists()) {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.getDefault());
                    for (File file2 : file.listFiles()) {
                        if (file2.getName().startsWith(str) && Integer.parseInt(str3) - Integer.parseInt(simpleDateFormat.format(Long.valueOf(file2.lastModified()))) >= 7) {
                            file2.delete();
                        }
                    }
                } else {
                    file.mkdirs();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(new File(absolutePath, "baidu/pushservice/files/" + str + str3 + ".log"), true);
                fileOutputStream.write(format.getBytes());
                fileOutputStream.close();
            } catch (Exception e) {
                Log.e("Utility", "error " + e.getMessage());
            }
        }
    }

    public static void m5191a(HashMap<String, Integer> hashMap) {
        try {
            File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath(), "baidu/hybrid");
            if (!file.exists()) {
                file.mkdirs();
            }
            OutputStream fileOutputStream = new FileOutputStream(new File(file, "notimap"));
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);
            objectOutputStream.writeObject(hashMap);
            objectOutputStream.close();
            fileOutputStream.close();
        } catch (Exception e) {
        }
    }

    public static boolean m5192a() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    private static boolean m5193a(int i, int i2, int i3, int i4) {
        int i5 = Calendar.getInstance(Locale.CHINA).get(11);
        int i6 = Calendar.getInstance(Locale.CHINA).get(12);
        if (i < i3) {
            if (i < i5 && i5 < i3) {
                return true;
            }
            if (i5 == i && i6 >= i2) {
                return true;
            }
            if (i5 == i3 && i6 <= i4) {
                return true;
            }
        } else if (i > i3) {
            if ((i5 > i && i5 < 24) || i5 < i3) {
                return true;
            }
            if (i5 == i && i6 >= i2) {
                return true;
            }
            if (i5 == i3 && i6 <= i4) {
                return true;
            }
        } else if (i == i5 && i6 >= i2 && i4 >= i6) {
            return true;
        }
        return false;
    }

    @SuppressLint({"SdCardPath"})
    public static boolean m5194a(Context context) {
        File file = new File("/data/data/root");
        try {
            file.createNewFile();
            if (!file.exists()) {
                return true;
            }
            file.delete();
            return true;
        } catch (IOException e) {
            return (C0374f.m5176a(context, "com.noshufou.android.su") == null && C0374f.m5176a(context, "com.miui.uac") == null) ? false : true;
        }
    }

    private static boolean m5195a(Context context, String str, String str2, boolean z) {
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            List<ResolveInfo> queryBroadcastReceivers;
            if (z) {
                queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, 544);
                if (queryBroadcastReceivers.size() < 1) {
                    return false;
                }
                for (ResolveInfo resolveInfo : queryBroadcastReceivers) {
                    if (str2.equals(resolveInfo.activityInfo.name)) {
                        return true;
                    }
                }
            }
            queryBroadcastReceivers = packageManager.queryIntentServices(intent, 544);
            if (queryBroadcastReceivers.size() < 1) {
                return false;
            }
            for (ResolveInfo resolveInfo2 : queryBroadcastReceivers) {
                if (str2.equals(resolveInfo2.serviceInfo.name)) {
                    int y = C0374f.m5255y(context, str2);
                    if (!resolveInfo2.serviceInfo.exported) {
                        return false;
                    }
                    if (y == 1 || (y == 0 && resolveInfo2.serviceInfo.enabled)) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e) {
            Log.e("Utility", "error  " + e.getMessage());
        }
    }

    public static boolean m5196a(String str) {
        if (!TextUtils.isEmpty(str) && !str.contains(" ")) {
            return true;
        }
        Log.w("Utility", "api_key incorrect ");
        return false;
    }

    static boolean m5197a(String str, String[] strArr) {
        for (Object equals : strArr) {
            if (str.equals(equals)) {
                return true;
            }
        }
        return false;
    }

    public static Intent m5198b(Context context, String str) {
        BroadcastReceiver c0375g = new C0375g();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(str);
        Intent registerReceiver = context.registerReceiver(c0375g, intentFilter);
        context.unregisterReceiver(c0375g);
        return registerReceiver;
    }

    public static HashMap<String, Integer> m5199b() {
        try {
            File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath(), "baidu/hybrid");
            if (!file.exists()) {
                return null;
            }
            File file2 = new File(file, "notimap");
            if (!file2.exists()) {
                return null;
            }
            InputStream fileInputStream = new FileInputStream(file2);
            ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
            HashMap<String, Integer> hashMap = (HashMap) objectInputStream.readObject();
            try {
                objectInputStream.close();
                fileInputStream.close();
                return hashMap;
            } catch (Exception e) {
                return hashMap;
            }
        } catch (Exception e2) {
            return null;
        }
    }

    public static void m5200b(Context context, boolean z) {
        if (C0374f.m5220g(context, context.getPackageName())) {
            C0192a.m4344c(context, z);
        }
    }

    public static synchronized void m5201b(String str) {
        synchronized (C0374f.class) {
            C0374f.m5189a(str, null);
        }
    }

    private static synchronized void m5202b(String str, Context context) {
        synchronized (C0374f.class) {
            String str2 = "samonitor";
            if (context != null) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                String deviceId = telephonyManager.getDeviceId();
                if (TextUtils.isEmpty(deviceId)) {
                    deviceId = "NULL";
                }
                str2 = str2 + telephonyManager.getDeviceId();
                String y = C0374f.m5256y(context);
                int z = C0374f.m5257z(context);
                if (!f3608c) {
                    ArrayList F = C0374f.m5174F(context);
                    StringBuffer stringBuffer = new StringBuffer();
                    Iterator it = F.iterator();
                    while (it.hasNext()) {
                        stringBuffer.append(((String) it.next()) + ";");
                    }
                    C0374f.m5190a(str2, "#AllPackagesUsingPush:" + stringBuffer.toString());
                    f3608c = true;
                }
                C0374f.m5190a(str2, "#IMEI:" + deviceId + "#networkType:" + y + "#mobileType:" + z + "#" + str);
            }
        }
    }

    public static boolean m5203b(Context context, String str, String str2) {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            applicationInfo = packageManager.getApplicationInfo(str, ProGuard.f5670c);
            return (applicationInfo == null || applicationInfo.metaData == null) ? false : applicationInfo.metaData.getBoolean(str2);
        } catch (Throwable e) {
            Log.e("getMetaDataBoolean", "--- " + str + " GetMetaData Exception:\r\n", e);
            applicationInfo = null;
        }
    }

    public static int[] m5204b(Context context) {
        int[] iArr = new int[2];
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        iArr[0] = displayMetrics.heightPixels;
        iArr[1] = displayMetrics.widthPixels;
        return iArr;
    }

    public static String m5205c(String str) {
        if (!TextUtils.isDigitsOnly(str)) {
            return "0";
        }
        BigInteger bigInteger = new BigInteger(str);
        if (bigInteger.and(new BigInteger("0800000000000000", 16)).equals(BigInteger.ZERO)) {
            bigInteger = bigInteger.xor(new BigInteger("282335"));
            bigInteger = bigInteger.and(new BigInteger("00ff0000", 16)).shiftLeft(8).add(bigInteger.and(new BigInteger("000000ff", 16)).shiftLeft(16)).add(bigInteger.and(new BigInteger("ff000000", 16)).shiftRight(16).and(new BigInteger("0000ff00", 16))).add(bigInteger.and(new BigInteger("0000ff00", 16)).shiftRight(8));
        } else {
            System.out.println("encode =  1");
            bigInteger = bigInteger.xor(new BigInteger("22727017042830095"));
            bigInteger = bigInteger.and(new BigInteger("000000ff00000000", 16)).shiftLeft(16).add(bigInteger.and(new BigInteger("000000000000ffff", 16)).shiftLeft(32)).add(bigInteger.and(new BigInteger("00ffff0000000000", 16)).shiftRight(24).and(new BigInteger("00000000ffff0000", 16))).add(bigInteger.and(new BigInteger("00000000ffff0000", 16)).shiftRight(16)).add(bigInteger.and(new BigInteger("ff00000000000000", 16)));
        }
        return bigInteger.toString();
    }

    public static void m5206c(Context context, String str, String str2) {
        if (context == null) {
            Log.w("Utility", "putSPString context == null");
        } else {
            System.putString(context.getContentResolver(), str, str2);
        }
    }

    public static boolean m5207c(Context context) {
        String c = C0192a.m4343c(context);
        boolean b = "enabled".equals(c) ? false : "disabled".equals(c) ? true : C0374f.m5203b(context, context.getPackageName(), "DisableService");
        if (C0192a.m4341b()) {
            Log.i("Utility", "--- isDisableService : " + b);
        }
        return b;
    }

    public static boolean m5208c(Context context, String str) {
        try {
            PackageManager packageManager = context.getPackageManager();
            return (packageManager == null || (packageManager.getApplicationInfo(str, 0).flags & 1) == 0) ? false : true;
        } catch (Exception e) {
            Log.e("Utility", "error " + e.getMessage());
            return false;
        }
    }

    public static int m5209d(String str) {
        int i = 0;
        try {
            return (int) Long.parseLong(str);
        } catch (Exception e) {
            try {
                if (str.length() > 0) {
                    str = str.substring(1);
                }
                return (int) Long.parseLong(str);
            } catch (Exception e2) {
                Log.w("Utility", "exception " + e2.getMessage());
                return i;
            }
        }
    }

    public static Intent m5210d(Context context) {
        Intent intent = new Intent(PushConstants.ACTION_METHOD);
        intent.addFlags(32);
        intent.putExtra(PushConstants.EXTRA_APP, PendingIntent.getBroadcast(context, 0, new Intent(), 0));
        intent.putExtra(PushConstants.PACKAGE_NAME, context.getPackageName());
        intent.putExtra("method_version", "V2");
        return intent;
    }

    public static String m5211d(Context context, String str, String str2) {
        Object a = C0402c.m5346a(context);
        if (TextUtils.isEmpty(a) || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(a).append("#");
        stringBuilder.append(str2).append("#");
        stringBuilder.append(str);
        String stringBuilder2 = stringBuilder.toString();
        try {
            String encode = URLEncoder.encode(!TextUtils.isEmpty(stringBuilder2) ? new String(Base64Encoder.m5011a(stringBuilder2.getBytes())) : stringBuilder2, "utf-8");
            if (!C0192a.m4341b()) {
                return encode;
            }
            Log.d("Utility", "+++++++++++++++++++++ push token is " + encode);
            return encode;
        } catch (UnsupportedEncodingException e) {
            Log.e("Utility", "error " + e.getMessage());
            return "";
        }
    }

    public static boolean m5212d(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            context.getPackageManager().getApplicationInfo(str, 8192);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static int m5213e(Context context, String str) {
        PackageInfo a = C0374f.m5176a(context, str);
        return a != null ? a.versionCode : 0;
    }

    public static Intent m5214e(Context context) {
        Intent intent = new Intent(PushConstants.ACTION_METHOD);
        intent.addFlags(32);
        intent.putExtra("method_version", "V2");
        return intent;
    }

    public static String m5215e(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        Intent intent = new Intent(str2);
        intent.setPackage(str);
        List queryBroadcastReceivers;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, 544);
            return (queryBroadcastReceivers == null || queryBroadcastReceivers.size() <= 0) ? null : ((ResolveInfo) queryBroadcastReceivers.get(0)).activityInfo.name;
        } catch (Exception e) {
            Log.e("Utility", "error  " + e.getMessage());
            queryBroadcastReceivers = null;
        }
    }

    public static Intent m5216f(Context context) {
        Intent intent = new Intent(PushConstants.ACTION_METHOD);
        intent.addFlags(32);
        intent.putExtra(PushConstants.EXTRA_APP, PendingIntent.getBroadcast(context, 0, new Intent(), 0));
        intent.putExtra("method_version", "V2");
        return intent;
    }

    public static void m5217f(Context context, String str, String str2) {
        if (context != null && !TextUtils.isEmpty(str2)) {
            try {
                if (TextUtils.isEmpty(str)) {
                    PackageManager packageManager = context.getPackageManager();
                    if (packageManager != null) {
                        for (PackageInfo packageInfo : packageManager.getInstalledPackages(0)) {
                            String str3 = packageInfo.applicationInfo.name;
                            if (!TextUtils.isEmpty(str3) && (str3.startsWith(GetApn.PKGNAME_PREFIX) || str3.equals("com.baidu.browser.apps"))) {
                                str = str3;
                                break;
                            }
                        }
                        if (TextUtils.isEmpty(str)) {
                            ResolveInfo resolveActivity = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://www.baidu.com")), 0);
                            if (resolveActivity.resolvePackageName != null) {
                                str = resolveActivity.resolvePackageName;
                            }
                        }
                    } else {
                        return;
                    }
                }
            } catch (Exception e) {
                Log.e("Utility", "error " + e.getMessage());
            }
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(str2));
            intent.setPackage(str);
            intent.setFlags(268435456);
            context.startActivity(intent);
        }
    }

    public static boolean m5218f(Context context, String str) {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            applicationInfo = packageManager.getApplicationInfo(str, ProGuard.f5670c);
            return (applicationInfo == null || applicationInfo.metaData == null) ? false : applicationInfo.metaData.getBoolean("IsBaiduApp");
        } catch (Throwable e) {
            Log.e("isBaiduApp", "--- " + str + " GetMetaData Exception:\r\n", e);
            applicationInfo = null;
        }
    }

    public static Intent m5219g(Context context) {
        return C0374f.m5210d(context);
    }

    public static boolean m5220g(Context context, String str) {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            applicationInfo = packageManager.getApplicationInfo(str, ProGuard.f5670c);
            return (applicationInfo == null || applicationInfo.metaData == null) ? false : applicationInfo.metaData.getBoolean("EnablePrivate");
        } catch (Throwable e) {
            Log.e("isEnableInternal", "--- " + str + " GetMetaData Exception:\r\n", e);
            applicationInfo = null;
        }
    }

    public static void m5221h(Context context) {
        C0374f.m5188a(context, false, false);
    }

    public static void m5222h(Context context, String str) {
        Intent createMethodIntent = PushConstants.createMethodIntent(context);
        createMethodIntent.putExtra(PushConstants.EXTRA_METHOD, "pushservice_restart");
        createMethodIntent.setPackage(str);
        context.sendBroadcast(createMethodIntent);
        createMethodIntent = PushConstants.createMethodIntent(context);
        createMethodIntent.putExtra(PushConstants.EXTRA_METHOD, "pushservice_restart_v2");
        if (TextUtils.isEmpty(str) || !str.equals(C0374f.m5169A(context))) {
            createMethodIntent.putExtra(PushLightapp.KEY_PRIORITY2, C0374f.m5236o(context));
        } else {
            createMethodIntent.putExtra(PushLightapp.KEY_PRIORITY2, Long.MAX_VALUE);
        }
        if (str != null) {
            createMethodIntent.setPackage(str);
        }
        context.sendBroadcast(createMethodIntent);
        C0192a.m4338a(context, false);
    }

    public static void m5223i(Context context, String str) {
        try {
            Intent intent = new Intent("com.baidu.android.pushservice.action.PUSH_SERVICE");
            intent.putExtra(PushLightapp.KEY_PRIORITY2, C0374f.m5236o(context));
            if (!TextUtils.isEmpty(str)) {
                intent.setClassName(str, "com.baidu.android.pushservice.PushService");
            }
            intent.putExtra(PushConstants.EXTRA_METHOD, "pushservice_restart_v2");
            intent.putExtra(PushConstants.PACKAGE_NAME, context.getPackageName());
            context.startService(intent);
        } catch (SecurityException e) {
            Log.e("Utility", "error " + e.getMessage());
            if (C0192a.m4341b()) {
                Log.i("Utility", "startService by action fail");
            }
        }
    }

    static boolean m5224i(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            String[] strArr = packageManager.getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr == null) {
                Log.e("Utility", "Permissions Push-SDK need are not exist !");
                return false;
            }
            int i = 0;
            while (i < f3606a.length) {
                if (C0374f.m5197a(f3606a[i], strArr)) {
                    i++;
                } else {
                    Log.e("Utility", f3606a[i] + " permission Push-SDK need is not exist !");
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            Log.e("Utility", "error " + e.getMessage());
            return false;
        }
    }

    public static long m5225j(Context context, String str) {
        long j = 0;
        try {
            SharedPreferences sharedPreferences = context.createPackageContext(str, 2).getSharedPreferences(str + PushLightapp.SHARED_NAME_SETTINGS, 5);
            if (sharedPreferences != null) {
                j = sharedPreferences.getLong(PushLightapp.KEY_PRIORITY2, 0);
            }
        } catch (Exception e) {
            if (C0192a.m4341b()) {
                Log.w("Utility", "create packagecontext exception: " + e.getMessage());
            }
        }
        return j;
    }

    public static void m5226j(Context context) {
        if (C0192a.m4341b()) {
            Log.d("Utility", ">>> setAlarmForPeriodRestart");
        }
        C0374f.m5182a(context, 300000);
    }

    public static void m5227k(Context context) {
        if (C0192a.m4341b()) {
            Log.i("Utility", "--- Start Service from " + context.getPackageName());
        }
        String string;
        if (C0192a.m4342b(context)) {
            if (C0192a.m4341b()) {
                Log.i("Utility", "--- Restart Highest Push Service!!");
            }
            string = System.getString(context.getContentResolver(), PushLightapp.SETTINGS_KEY_CURRENT_PACKAGE_NAME);
            if (!TextUtils.isEmpty(string)) {
                C0374f.m5254x(context, string);
            }
            String packageName = context.getApplicationContext().getPackageName();
            if (!TextUtils.isEmpty(packageName)) {
                if (packageName.equalsIgnoreCase(string)) {
                    for (String string2 : C0374f.m5253x(context)) {
                        C0374f.m5222h(context, string2);
                    }
                } else {
                    C0374f.m5254x(context, packageName);
                }
            }
            C0192a.m4338a(context, false);
            return;
        }
        string2 = context.getPackageName();
        Intent d = C0374f.m5210d(context);
        d.setPackage(string2);
        context.sendBroadcast(d);
        C0374f.m5229l(context);
    }

    public static boolean m5228k(Context context, String str) {
        Exception e;
        Object obj;
        boolean z;
        int componentEnabledSetting;
        PackageManager packageManager = null;
        Intent intent = new Intent("com.baidu.android.pushservice.action.PUSH_SERVICE");
        intent.setPackage(str);
        PackageManager packageManager2;
        List queryIntentServices;
        int i;
        try {
            packageManager2 = context.getPackageManager();
            if (packageManager2 == null) {
                return false;
            }
            try {
                queryIntentServices = packageManager2.queryIntentServices(intent, 544);
                packageManager = packageManager2;
            } catch (Exception e2) {
                e = e2;
                Log.e("Utility", "error " + e.getMessage());
                obj = packageManager;
                packageManager = packageManager2;
                i = 0;
                while (i < queryIntentServices.size()) {
                    if (!"com.baidu.android.pushservice.PushService".equals(((ResolveInfo) queryIntentServices.get(i)).serviceInfo.name)) {
                    }
                    i++;
                }
                z = false;
                componentEnabledSetting = packageManager.getComponentEnabledSetting(new ComponentName(str, "com.baidu.android.pushservice.PushService"));
                if (componentEnabledSetting != 1) {
                }
            }
            i = 0;
            while (i < queryIntentServices.size()) {
                if (!"com.baidu.android.pushservice.PushService".equals(((ResolveInfo) queryIntentServices.get(i)).serviceInfo.name) && ((ResolveInfo) queryIntentServices.get(i)).serviceInfo.exported) {
                    z = ((ResolveInfo) queryIntentServices.get(i)).serviceInfo.enabled;
                    break;
                }
                i++;
            }
            z = false;
            componentEnabledSetting = packageManager.getComponentEnabledSetting(new ComponentName(str, "com.baidu.android.pushservice.PushService"));
            return componentEnabledSetting != 1 || (componentEnabledSetting == 0 && z);
        } catch (Exception e3) {
            e = e3;
            packageManager2 = packageManager;
            Log.e("Utility", "error " + e.getMessage());
            obj = packageManager;
            packageManager = packageManager2;
            i = 0;
            while (i < queryIntentServices.size()) {
                if (!"com.baidu.android.pushservice.PushService".equals(((ResolveInfo) queryIntentServices.get(i)).serviceInfo.name)) {
                }
                i++;
            }
            z = false;
            componentEnabledSetting = packageManager.getComponentEnabledSetting(new ComponentName(str, "com.baidu.android.pushservice.PushService"));
            if (componentEnabledSetting != 1) {
            }
        }
    }

    public static void m5229l(Context context) {
        String A = C0374f.m5169A(context);
        if (C0192a.m4341b()) {
            Log.i("Utility", "--- Start the Highest priority Service: " + A);
        }
        C0374f.m5223i(context, A);
    }

    public static boolean m5230l(Context context, String str) {
        List queryBroadcastReceivers;
        Exception exception;
        Object obj;
        String str2;
        Iterator it;
        ResolveInfo resolveInfo;
        String str3 = null;
        Intent intent = new Intent(PushConstants.ACTION_RECEIVER_NOTIFICATION_CLICK);
        intent.setPackage(context.getPackageName());
        boolean z;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, 544);
            } catch (Exception e) {
                Exception exception2 = e;
                Object obj2 = packageManager;
                exception = exception2;
                Log.e("Utility", "error  " + exception.getMessage());
                obj = str2;
                queryBroadcastReceivers = null;
                if (queryBroadcastReceivers.size() >= 1) {
                    return false;
                }
                it = queryBroadcastReceivers.iterator();
                if (it.hasNext()) {
                    z = false;
                } else {
                    resolveInfo = (ResolveInfo) it.next();
                    str3 = resolveInfo.activityInfo.name;
                    z = resolveInfo.activityInfo.enabled;
                }
                return C0374f.m5195a(context, PushConstants.ACTION_MESSAGE, str3, true) ? false : false;
            }
            if (queryBroadcastReceivers.size() >= 1) {
                return false;
            }
            it = queryBroadcastReceivers.iterator();
            if (it.hasNext()) {
                resolveInfo = (ResolveInfo) it.next();
                str3 = resolveInfo.activityInfo.name;
                z = resolveInfo.activityInfo.enabled;
            } else {
                z = false;
            }
            if (C0374f.m5195a(context, PushConstants.ACTION_MESSAGE, str3, true) && C0374f.m5195a(context, PushConstants.ACTION_RECEIVE, str3, true)) {
                int componentEnabledSetting = packageManager.getComponentEnabledSetting(new ComponentName(context.getPackageName(), str3));
                return componentEnabledSetting == 1 || (componentEnabledSetting == 0 && z);
            }
        } catch (Exception e2) {
            exception = e2;
            str2 = null;
            Log.e("Utility", "error  " + exception.getMessage());
            obj = str2;
            queryBroadcastReceivers = null;
            if (queryBroadcastReceivers.size() >= 1) {
                return false;
            }
            it = queryBroadcastReceivers.iterator();
            if (it.hasNext()) {
                resolveInfo = (ResolveInfo) it.next();
                str3 = resolveInfo.activityInfo.name;
                z = resolveInfo.activityInfo.enabled;
            } else {
                z = false;
            }
            if (C0374f.m5195a(context, PushConstants.ACTION_MESSAGE, str3, true)) {
            }
        }
    }

    public static long m5231m(Context context) {
        long a = (long) C0192a.m4336a();
        if (C0192a.f2943d > 0) {
            if (C0192a.f2943d > 5) {
                C0192a.f2943d = 5;
            }
            return ((a << 4) + 10) + ((long) C0192a.f2943d);
        }
        a <<= 2;
        if (C0374f.m5218f(context, context.getPackageName())) {
            if (C0192a.m4341b()) {
                Log.d("Utility", "--- get " + context + " PriorityVersion, baidu app");
            }
            a++;
        }
        a <<= 1;
        if (C0374f.m5208c(context, context.getPackageName())) {
            if (C0192a.m4341b()) {
                Log.d("Utility", "--- get " + context + " PriorityVersion, system app");
            }
            a++;
        }
        return (a << 1) + ((long) C0374f.m5243s(context));
    }

    public static boolean m5232m(Context context, String str) {
        ServiceInfo serviceInfo;
        NameNotFoundException e;
        if (context.getSharedPreferences(context.getPackageName() + PushLightapp.SHARED_NAME_SETTINGS, 5).getInt("version2", 0) < 29) {
            return true;
        }
        ComponentName componentName = new ComponentName(context, "com.baidu.android.pushservice.CommandService");
        PackageManager packageManager = context.getPackageManager();
        ServiceInfo serviceInfo2 = new ServiceInfo();
        CharSequence charSequence = "";
        try {
            serviceInfo = packageManager.getServiceInfo(componentName, ProGuard.f5670c);
            try {
                charSequence = serviceInfo.name;
            } catch (NameNotFoundException e2) {
                e = e2;
                Log.d("Utility", "error " + e.getMessage());
                if (TextUtils.isEmpty(charSequence)) {
                    Log.e("Utility", "com.baidu.android.pushservice.CommandService did not declared ");
                    return false;
                }
                if (!serviceInfo.enabled) {
                }
                return true;
            }
        } catch (NameNotFoundException e3) {
            NameNotFoundException nameNotFoundException = e3;
            serviceInfo = serviceInfo2;
            e = nameNotFoundException;
            Log.d("Utility", "error " + e.getMessage());
            if (TextUtils.isEmpty(charSequence)) {
                if (serviceInfo.enabled) {
                }
                return true;
            }
            Log.e("Utility", "com.baidu.android.pushservice.CommandService did not declared ");
            return false;
        }
        if (TextUtils.isEmpty(charSequence)) {
            Log.e("Utility", "com.baidu.android.pushservice.CommandService did not declared ");
            return false;
        } else if (serviceInfo.enabled || serviceInfo.exported) {
            return true;
        } else {
            Log.w("Utility", "com.baidu.android.pushservice.CommandService did not declared ");
            return false;
        }
    }

    public static void m5233n(Context context) {
        Intent d;
        String B = C0374f.m5170B(context);
        String A = C0374f.m5169A(context);
        if (!A.equals(B)) {
            d = C0374f.m5210d(context);
            d.putExtra(PushConstants.EXTRA_METHOD, "pushservice_restart_v2");
            d.putExtra(PushConstants.PACKAGE_NAME, context.getPackageName());
            d.putExtra(PushLightapp.KEY_PRIORITY2, C0374f.m5225j(context, B));
            if (C0192a.m4341b()) {
                Log.d("Utility", " restart  " + A + "pushservice_restart_v2");
            }
            d.setClassName(A, "com.baidu.android.pushservice.PushService");
            try {
                context.startService(d);
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    Log.d("Utility", "startService e: " + e);
                }
            }
        }
        Object obj = null;
        for (RunningServiceInfo runningServiceInfo : ((ActivityManager) context.getSystemService("activity")).getRunningServices(LocationClientOption.MIN_SCAN_SPAN)) {
            Object obj2;
            String packageName = runningServiceInfo.service.getPackageName();
            if (runningServiceInfo.service.getClassName().equals("com.baidu.android.pushservice.PushService")) {
                if (B.equals(packageName)) {
                    obj2 = 1;
                } else {
                    d = C0374f.m5210d(context);
                    d.putExtra(PushConstants.EXTRA_METHOD, "pushservice_restart_v2");
                    d.putExtra(PushConstants.PACKAGE_NAME, context.getPackageName());
                    d.putExtra(PushLightapp.KEY_PRIORITY2, C0374f.m5225j(context, B));
                    if (C0192a.m4341b()) {
                        Log.d("Utility", " restart  " + packageName + "pushservice_restart_v2");
                    }
                    d.setClassName(packageName, "com.baidu.android.pushservice.PushService");
                    try {
                        context.startService(d);
                        obj2 = obj;
                    } catch (Exception e2) {
                        if (C0192a.m4341b()) {
                            Log.d("Utility", "startService e: " + e2);
                        }
                    }
                }
                obj = obj2;
            }
            obj2 = obj;
            obj = obj2;
        }
        if (obj == null) {
            d = C0374f.m5210d(context);
            d.putExtra(PushConstants.EXTRA_METHOD, "pushservice_restart_v2");
            d.putExtra(PushConstants.PACKAGE_NAME, context.getPackageName());
            d.putExtra(PushLightapp.KEY_PRIORITY2, C0374f.m5236o(context));
            if (C0192a.m4341b()) {
                Log.d("Utility", " restart  " + A + "pushservice_restart_v2");
            }
            d.setClassName(B, "com.baidu.android.pushservice.PushService");
            try {
                context.startService(d);
            } catch (Exception e22) {
                if (C0192a.m4341b()) {
                    Log.d("Utility", "startService e: " + e22);
                }
            }
        }
    }

    public static boolean m5234n(Context context, String str) {
        if (PushSocket.m5014a()) {
            if (C0374f.m5242r(context)) {
                if (C0374f.m5196a(str)) {
                    if (C0374f.m5238p(context)) {
                        if (C0374f.m5239q(context)) {
                            return true;
                        }
                        if (!C0192a.m4341b()) {
                            return false;
                        }
                        Log.w("Utility", "checkCommandServiceEnable checkfailed");
                        return false;
                    } else if (!C0192a.m4341b()) {
                        return false;
                    } else {
                        Log.w("Utility", "checkSelfConfigedReciver checkfailed");
                        return false;
                    }
                } else if (!C0192a.m4341b()) {
                    return false;
                } else {
                    Log.w("Utility", "checkApikey checkfailed");
                    return false;
                }
            } else if (!C0192a.m4341b()) {
                return false;
            } else {
                Log.w("Utility", "checkSDKAndroidManifest checkfailed");
                return false;
            }
        } else if (!C0192a.m4341b()) {
            return false;
        } else {
            Log.w("Utility", "socket library checkfailed");
            return false;
        }
    }

    public static int m5235o(Context context, String str) {
        SharedPreferences sharedPreferences = null;
        try {
            sharedPreferences = context.createPackageContext(str, 2).getSharedPreferences(str + PushLightapp.SHARED_NAME_SETTINGS, 5);
        } catch (Exception e) {
            Log.e("Utility", e.getMessage());
        }
        if (sharedPreferences == null) {
            Log.w("Utility", "App:" + str + " doesn't init Version!");
            return 0;
        }
        int i = sharedPreferences.getInt("version2", 0);
        return i > 0 ? i : sharedPreferences.getInt("version", 0);
    }

    public static long m5236o(Context context) {
        return context.getSharedPreferences(context.getPackageName() + PushLightapp.SHARED_NAME_SETTINGS, 5).getLong(PushLightapp.KEY_PRIORITY2, 0);
    }

    public static String m5237p(Context context, String str) {
        return TextUtils.isEmpty(str) ? "" : C0374f.m5179a(context, str, "BaiduPush_CHANNEL");
    }

    static boolean m5238p(Context context) {
        return C0374f.m5230l(context, context.getPackageName());
    }

    static boolean m5239q(Context context) {
        return C0374f.m5232m(context, context.getPackageName());
    }

    public static boolean m5240q(Context context, String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    return false;
                }
                List installedPackages = packageManager.getInstalledPackages(0);
                List arrayList = new ArrayList();
                if (installedPackages != null) {
                    for (int i = 0; i < installedPackages.size(); i++) {
                        arrayList.add(((PackageInfo) installedPackages.get(i)).packageName);
                    }
                }
                return arrayList.contains(str);
            }
        } catch (Exception e) {
            Log.e("Utility", "error " + e.getMessage());
        }
        return false;
    }

    public static String m5241r(Context context, String str) {
        if (context != null) {
            return System.getString(context.getContentResolver(), str);
        }
        Log.w("Utility", "getSPString context == null");
        return "";
    }

    public static boolean m5242r(Context context) {
        if (C0192a.m4341b()) {
            Log.d("Utility", "check PushService AndroidManifest declearation !");
        }
        return C0374f.m5224i(context) && C0374f.m5172D(context) && C0374f.m5173E(context);
    }

    static int m5243s(Context context) {
        int i = 0;
        if (C0374f.m5195a(context, "android.intent.action.USER_PRESENT", "com.baidu.android.pushservice.PushServiceReceiver", true)) {
            i = 1;
        }
        if (C0374f.m5195a(context, "android.intent.action.MEDIA_MOUNTED", "com.baidu.android.pushservice.PushServiceReceiver", true)) {
            i++;
        }
        if (C0374f.m5195a(context, "android.intent.action.ACTION_POWER_CONNECTED", "com.baidu.android.pushservice.PushServiceReceiver", true)) {
            i++;
        }
        return C0374f.m5195a(context, "android.intent.action.ACTION_POWER_DISCONNECTED", "com.baidu.android.pushservice.PushServiceReceiver", true) ? i + 1 : i;
    }

    public static Integer m5244s(Context context, String str) {
        if (context != null) {
            return Integer.valueOf(System.getInt(context.getContentResolver(), str));
        }
        Log.w("Utility", "getSPInt context == null");
        return Integer.valueOf(Integer.MIN_VALUE);
    }

    public static List<ResolveInfo> m5245t(Context context) {
        List arrayList = new ArrayList();
        Intent intent = new Intent(PushLightapp.ACTION_REGISTER_SYNC);
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager == null ? null : packageManager.queryBroadcastReceivers(intent, 544);
        } catch (Exception e) {
            Log.e("Utility", "error  " + e.getMessage());
            return arrayList;
        }
    }

    public static boolean m5246t(Context context, String str) {
        boolean z = false;
        if (context != null && !TextUtils.isEmpty(str)) {
            int[] noDisturb = PushDatabase.getNoDisturb(context, str);
            if (noDisturb != null && 4 == noDisturb.length) {
                z = C0374f.m5193a(noDisturb[0], noDisturb[1], noDisturb[2], noDisturb[3]);
            }
            if (C0192a.m4341b()) {
                Log.d("Utility", "isNoDisturb :" + z);
            }
        } else if (C0192a.m4341b()) {
            Log.d("Utility", "isNoDisturb parameters illegal : " + false);
        }
        return z;
    }

    public static String m5247u(Context context, String str) {
        String str2 = null;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                str2 = C0405e.m5358a(packageManager.getPackageInfo(str, 64).signatures[0].toByteArray(), false);
            }
        } catch (NameNotFoundException e) {
            if (C0192a.m4341b()) {
                Log.w("Utility", " packageName not found: " + str);
            }
        } catch (Exception e2) {
            Log.e("Utility", "error " + e2.getMessage());
        }
        return str2;
    }

    public static boolean m5248u(Context context) {
        LocalServerSocket localServerSocket;
        boolean z = true;
        try {
            localServerSocket = new LocalServerSocket(C0374f.m5249v(context));
        } catch (Exception e) {
            if (C0192a.m4341b()) {
                Log.d("Utility", "--- Socket Adress (" + C0374f.m5249v(context) + ") in use --- @ " + context.getPackageName());
            }
            localServerSocket = null;
        }
        if (localServerSocket != null) {
            z = false;
            try {
                localServerSocket.close();
            } catch (IOException e2) {
                Log.e("Utility", "error " + e2.getMessage());
            }
        }
        return z;
    }

    public static String m5249v(Context context) {
        return C0405e.m5358a(("com.baidu.pushservice.singelinstancev2" + C0404d.m5351a(context)).getBytes(), false);
    }

    private static void m5250v(Context context, String str) {
        Intent d = C0374f.m5210d(context);
        d.putExtra(com.umeng.update.ProGuard.f5475c, "service_restart");
        d.setPackage(str);
        context.sendBroadcast(d);
    }

    public static ArrayList<String> m5251w(Context context) {
        ArrayList F = C0374f.m5174F(context);
        List<RunningServiceInfo> runningServices = ((ActivityManager) context.getSystemService("activity")).getRunningServices(LocationClientOption.MIN_SCAN_SPAN);
        ArrayList<String> arrayList = new ArrayList();
        for (RunningServiceInfo runningServiceInfo : runningServices) {
            String packageName = runningServiceInfo.service.getPackageName();
            if (!arrayList.contains(packageName) && F.contains(packageName)) {
                if ((runningServiceInfo.service.getClassName().contains("PushService") || runningServiceInfo.service.getClassName().contains("MoPlusService")) && C0374f.m5252w(context, packageName)) {
                    arrayList.add(runningServiceInfo.service.getPackageName());
                }
            }
        }
        return arrayList;
    }

    private static boolean m5252w(Context context, String str) {
        SharedPreferences sharedPreferences;
        try {
            sharedPreferences = context.createPackageContext(str, 2).getSharedPreferences(str + PushLightapp.SHARED_NAME_SETTINGS, 5);
        } catch (Exception e) {
            Log.e("Utility", e.getMessage());
            sharedPreferences = null;
        }
        return sharedPreferences != null && sharedPreferences.getInt("version", 0) > 0;
    }

    public static List<String> m5253x(Context context) {
        List<RunningServiceInfo> runningServices = ((ActivityManager) context.getSystemService("activity")).getRunningServices(500);
        List<String> arrayList = new ArrayList();
        for (RunningServiceInfo runningServiceInfo : runningServices) {
            if (runningServiceInfo.service.getClassName().contains("com.baidu.android.pushservice.PushService")) {
                arrayList.add(runningServiceInfo.service.getPackageName());
            }
        }
        return arrayList;
    }

    private static void m5254x(Context context, String str) {
        if (C0374f.m5252w(context, str)) {
            Intent d = C0374f.m5210d(context);
            d.putExtra(PushConstants.EXTRA_METHOD, "pushservice_restart");
            d.putExtra(PushConstants.PACKAGE_NAME, context.getPackageName());
            d.setPackage(str);
            context.sendBroadcast(d);
            C0374f.m5250v(context, str);
            return;
        }
        d = C0374f.m5210d(context);
        d.putExtra(PushConstants.EXTRA_METHOD, "pushservice_restart_v2");
        d.putExtra(PushConstants.PACKAGE_NAME, context.getPackageName());
        d.putExtra(PushLightapp.KEY_PRIORITY2, C0374f.m5236o(context));
        d.setPackage(str);
        context.sendBroadcast(d);
        C0374f.m5223i(context, str);
        C0374f.m5250v(context, str);
    }

    private static int m5255y(Context context, String str) {
        return context.getPackageManager().getComponentEnabledSetting(new ComponentName(context.getPackageName(), str));
    }

    public static String m5256y(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getState() == State.CONNECTED) {
                if (activeNetworkInfo.getTypeName().equals("WIFI")) {
                    return activeNetworkInfo.getTypeName();
                }
                Object obj = null;
                if (activeNetworkInfo.getExtraInfo() != null) {
                    obj = activeNetworkInfo.getExtraInfo().toLowerCase();
                }
                return TextUtils.isEmpty(obj) ? "unknown" : obj;
            }
        }
        return "unknown";
    }

    public static int m5257z(Context context) {
        String str;
        String str2 = "";
        if (context != null) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
                if (!activeNetworkInfo.getTypeName().toLowerCase().equals(GetApn.APN_TYPE_WIFI)) {
                    str = "2G";
                    switch (activeNetworkInfo.getSubtype()) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                            str = "3G";
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                            str = "3G";
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                            str = "3G";
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                            str = "3G";
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                            str = "3G";
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                            str = "3G";
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                            str = "3G";
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                            str = "3G";
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                            str = "4G";
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                            str = "3G";
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginBottom /*15*/:
                            str = "3G";
                            break;
                        default:
                            break;
                    }
                }
                str = "WF";
                return str.equals("WF") ? 1 : str.equals("2G") ? 2 : str.equals("3G") ? 3 : str.equals("4G") ? 4 : 0;
            }
        }
        str = str2;
        if (str.equals("WF")) {
        }
    }
}
