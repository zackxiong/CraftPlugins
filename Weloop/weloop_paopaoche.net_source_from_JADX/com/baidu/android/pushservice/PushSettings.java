package com.baidu.android.pushservice;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import android.text.TextUtils;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p081e.C0400a;
import com.baidu.frontia.p075a.p081e.C0401b;
import com.baidu.location.LocationClientOption;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class PushSettings {
    private static Context f2886a;

    public static String m4204a() {
        return C0374f.m5241r(f2886a, "com.baidu.pushservice.channel_id");
    }

    public static void m4205a(int i) {
        C0374f.m5185a(f2886a, "com.baidu.pushservice.cur_period", i);
    }

    public static void m4206a(long j) {
        if (f2886a == null) {
            C0385a.m5312c("PushSettings", "setLastSendStatisticTime mContext == null");
        } else {
            C0374f.m5186a(f2886a, "com.baidu.pushservice.cst", Long.valueOf(j));
        }
    }

    public static void m4207a(Context context) {
        f2886a = context;
    }

    public static void m4208a(Context context, String str) {
        if (context == null) {
            C0385a.m5312c("PushSettings", "removeUninstalledAppLbsSwitch mContext == null");
        } else if (!TextUtils.isEmpty(str)) {
            Object string = System.getString(context.getContentResolver(), "com.baidu.pushservice.le");
            if (!TextUtils.isEmpty(string)) {
                StringBuilder stringBuilder = new StringBuilder();
                for (String str2 : string.trim().split(",")) {
                    if (!str2.equals(str)) {
                        stringBuilder.append(str2 + ",");
                    }
                }
                C0374f.m5206c(context, "com.baidu.pushservice.le", stringBuilder.toString());
            }
        }
    }

    public static void m4209a(Context context, boolean z) {
        Object obj = null;
        if (context == null) {
            C0385a.m5312c("PushSettings", "setLbsEnabled mContext == null");
        } else if (TextUtils.isEmpty(context.getPackageName())) {
            C0385a.m5312c("PushSettings", "mContext.getPackageName() == null");
        } else {
            Object r = C0374f.m5241r(context, "com.baidu.pushservice.le");
            if (!TextUtils.isEmpty(r)) {
                StringBuilder stringBuilder = new StringBuilder();
                for (String str : r.trim().split(",")) {
                    if (str.equals(context.getPackageName())) {
                        obj = 1;
                        if (!z) {
                        }
                    }
                    stringBuilder.append(str + ",");
                }
                if (obj == null) {
                    stringBuilder.append(context.getPackageName() + ",");
                }
                C0374f.m5206c(context, "com.baidu.pushservice.le", stringBuilder.toString());
            } else if (z) {
                C0374f.m5206c(context, "com.baidu.pushservice.le", context.getPackageName() + ",");
            }
        }
    }

    public static void m4210a(String str) {
        C0374f.m5206c(f2886a, "com.baidu.pushservice.channel_id", str);
    }

    public static void m4211a(String str, int i, String str2) {
        if (f2886a == null) {
            C0385a.m5313d("PushSettings", "setApiInfo mContext == null");
        } else if (i == 9) {
            try {
                HashMap j = m4233j();
                if (j != null && j.containsKey("com.baidu.pushservice" + str)) {
                    j.remove("com.baidu.pushservice" + str);
                    m4213a(j);
                    C0374f.m5206c(f2886a, "com.baidu.pushservice" + str, "");
                }
            } catch (Exception e) {
                C0385a.m5311b("PushSettings", "set appInfo exception");
            }
        } else {
            Object a;
            try {
                a = C0401b.m5343a(C0400a.m5341a("2011121211143000", "9876543210123456", (i + str2).getBytes()), "utf-8");
            } catch (Exception e2) {
                a = "";
                C0385a.m5308a("PushSettings", "setAppInfo exception");
            }
            if (!TextUtils.isEmpty(a)) {
                HashMap hashMap = null;
                try {
                    hashMap = m4233j();
                } catch (Exception e3) {
                    C0385a.m5308a("PushSettings", "set AppInfo exception" + e3.toString());
                }
                if (hashMap == null) {
                    hashMap = new HashMap();
                }
                if (!hashMap.containsKey("com.baidu.pushservice" + str)) {
                    hashMap.put("com.baidu.pushservice" + str, a);
                    m4213a(hashMap);
                }
                C0374f.m5206c(f2886a, "com.baidu.pushservice" + str, a);
            }
        }
    }

    public static void m4212a(String str, String str2, String str3) {
        if (f2886a == null) {
            C0385a.m5312c("PushSettings", "setFrontiaUser mContext == null");
            return;
        }
        Object string = System.getString(f2886a.getContentResolver(), "com.baidu.pushservice.fu");
        try {
            JSONObject jSONObject = TextUtils.isEmpty(string) ? new JSONObject() : new JSONObject(string);
            jSONObject.put(str2, str + "," + str3);
            System.putString(f2886a.getContentResolver(), "com.baidu.pushservice.fu", jSONObject.toString());
        } catch (JSONException e) {
            if (C0192a.m4341b()) {
                C0385a.m5313d("PushSettings", "error " + e.getMessage());
            }
        }
    }

    private static void m4213a(HashMap<String, String> hashMap) {
        try {
            String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
            File file = new File(absolutePath, "baidu/pushservice/files");
            if (!file.exists()) {
                file.mkdirs();
            }
            OutputStream fileOutputStream = new FileOutputStream(new File(absolutePath, "baidu/pushservice/files/apps"));
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);
            objectOutputStream.writeObject(hashMap);
            objectOutputStream.close();
            fileOutputStream.close();
        } catch (Exception e) {
            C0385a.m5308a("PushSettings", "setAppInfo read file exception");
        }
    }

    public static String m4214b() {
        return C0374f.m5241r(f2886a, "com.baidu.pushservice.channel_token_rsa");
    }

    public static String m4215b(String str) {
        if (f2886a == null) {
            C0385a.m5313d("PushSettings", "setApiInfo mContext == null");
            return "";
        }
        Object r = C0374f.m5241r(f2886a, "com.baidu.pushservice" + str);
        if (TextUtils.isEmpty(r)) {
            try {
                HashMap j = m4233j();
                if (j == null) {
                    return "";
                }
                r = (String) j.get("com.baidu.pushservice" + str);
            } catch (Exception e) {
                return "";
            }
        }
        if (TextUtils.isEmpty(r)) {
            return "";
        }
        try {
            return new String(C0400a.m5342b("2011121211143000", "9876543210123456", C0401b.m5344a(r.getBytes())));
        } catch (Exception e2) {
            return "";
        }
    }

    public static void m4216b(int i) {
        if (f2886a == null) {
            C0385a.m5312c("PushSettings", "setStatisticSendDisabled mContext == null");
        } else {
            System.putInt(f2886a.getContentResolver(), "com.baidu.pushservice.sd", i);
        }
    }

    public static void m4217b(long j) {
        if (f2886a == null) {
            C0385a.m5312c("PushSettings", "setLastSendStatisticTime mContext == null");
        } else {
            System.putLong(f2886a.getContentResolver(), "com.baidu.pushservice.st", j);
        }
    }

    public static boolean m4218b(Context context) {
        try {
            return C0374f.m5244s(context, "com.baidu.pushservice.PushSettings.connect_state").intValue() == 1;
        } catch (SettingNotFoundException e) {
            C0385a.m5312c("PushSettings", "com.baidu.pushservice.PushSettings.connect_state setting is not set.");
            return false;
        }
    }

    public static long m4219c(Context context) {
        long j = 0;
        if (context == null) {
            C0385a.m5313d("PushSettings", "getLastSendStatisticTime mContext == null");
        } else {
            try {
                j = System.getLong(context.getContentResolver(), "com.baidu.pushservice.cst");
            } catch (SettingNotFoundException e) {
                C0385a.m5312c("PushSettings", "Setting not found: com.baidu.pushservice.cst");
            }
        }
        return j;
    }

    public static void m4220c(int i) {
        if (f2886a == null) {
            C0385a.m5312c("PushSettings", "setCurPeriod mContext == null");
        } else {
            C0374f.m5185a(f2886a, "com.baidu.pushservice.lsi", i * LocationClientOption.MIN_SCAN_SPAN);
        }
    }

    public static void m4221c(String str) {
        if (f2886a == null) {
            C0385a.m5313d("PushSettings", "setChannelToken mContext == null");
        } else {
            C0374f.m5206c(f2886a, "com.baidu.pushservice.channel_token_rsa", str);
        }
    }

    public static boolean m4222c() {
        if (f2886a == null) {
            return false;
        }
        try {
            return C0374f.m5244s(f2886a, "com.baidu.android.pushservice.PushSettings.debug_mode").intValue() == 1;
        } catch (SettingNotFoundException e) {
            return false;
        }
    }

    public static int m4223d() {
        int i = 0;
        if (f2886a == null) {
            C0385a.m5313d("PushSettings", "getCurPeriod mContext == null");
        } else {
            try {
                i = C0374f.m5244s(f2886a, "com.baidu.pushservice.cur_period").intValue();
            } catch (SettingNotFoundException e) {
            }
        }
        return i;
    }

    public static String m4224d(String str) {
        if (f2886a == null) {
            C0385a.m5313d("PushSettings", "getLbsSendInterval mContext == null");
            return "";
        }
        Object string = System.getString(f2886a.getContentResolver(), "com.baidu.pushservice.fu");
        if (TextUtils.isEmpty(string)) {
            return "";
        }
        String str2 = "";
        try {
            return new JSONObject(string).getString(str);
        } catch (JSONException e) {
            C0385a.m5313d("PushSettings", "error " + e.getMessage());
            return str2;
        }
    }

    public static void m4225d(Context context) {
        if (context == null) {
            C0385a.m5312c("PushSettings", "tofms mContext == null");
        }
        C0374f.m5206c(context, "com.baidu.pushservice.lms", "off");
    }

    public static long m4226e() {
        return System.getLong(f2886a.getContentResolver(), "com.baidu.pushservice.st", 43200000);
    }

    public static void m4227e(Context context) {
        if (context == null) {
            C0385a.m5312c("PushSettings", "toms mContext == null");
        }
        C0374f.m5206c(context, "com.baidu.pushservice.lms", "");
    }

    public static void enableDebugMode(Context context, boolean z) {
        if (z) {
            C0374f.m5185a(context, "com.baidu.android.pushservice.PushSettings.debug_mode", 1);
        } else {
            C0374f.m5185a(context, "com.baidu.android.pushservice.PushSettings.debug_mode", 0);
        }
    }

    public static int m4228f() {
        return System.getInt(f2886a.getContentResolver(), "com.baidu.pushservice.sd", 0);
    }

    public static void m4229f(Context context) {
        if (context == null) {
            C0385a.m5312c("PushSettings", "refreshLbsSwitchInfo mContext == null");
            return;
        }
        Object r = C0374f.m5241r(context, "com.baidu.pushservice.le");
        if (!TextUtils.isEmpty(r)) {
            StringBuilder stringBuilder = new StringBuilder();
            String[] split = r.trim().split(",");
            PackageManager packageManager = context.getPackageManager();
            for (String str : split) {
                PackageInfo packageInfo = null;
                try {
                    packageInfo = packageManager.getPackageInfo(str, 0);
                } catch (Throwable e) {
                    C0385a.m5312c("PushSettings", C0385a.m5307a(e));
                }
                if (packageInfo != null) {
                    stringBuilder.append(str + ",");
                }
            }
            C0374f.m5206c(context, "com.baidu.pushservice.le", stringBuilder.toString());
        }
    }

    public static int m4230g() {
        if (f2886a != null) {
            return System.getInt(f2886a.getContentResolver(), "com.baidu.pushservice.lsi", 1800000);
        }
        C0385a.m5313d("PushSettings", "getLbsSendInterval mContext == null");
        return 0;
    }

    public static boolean m4231h() {
        return !TextUtils.isEmpty(C0374f.m5241r(f2886a, "com.baidu.pushservice.le"));
    }

    public static boolean m4232i() {
        return TextUtils.equals(C0374f.m5241r(f2886a, "com.baidu.pushservice.lms"), "off");
    }

    private static HashMap<String, String> m4233j() {
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath(), "baidu/pushservice/files");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, "apps");
        if (!file2.exists()) {
            return null;
        }
        InputStream fileInputStream = new FileInputStream(file2);
        ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
        HashMap hashMap = new HashMap();
        HashMap<String, String> hashMap2 = (HashMap) objectInputStream.readObject();
        if (objectInputStream != null) {
            objectInputStream.close();
        }
        if (fileInputStream == null) {
            return hashMap2;
        }
        fileInputStream.close();
        return hashMap2;
    }
}
