package com.baidu.location.p083a.p084a;

import android.content.Context;
import android.os.Environment;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.location.p083a.p085b.C0496a;
import com.baidu.location.p083a.p085b.C0497b;
import com.umeng.update.UpdateConfig;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.UUID;

/* renamed from: com.baidu.location.a.a.b */
public final class C0494b {

    /* renamed from: com.baidu.location.a.a.b.a */
    static final class C0493a {
        public final String f3978a;
        public final boolean f3979b;

        private C0493a(String str, boolean z) {
            this.f3978a = str;
            this.f3979b = z;
        }

        static C0493a m5811a(Context context) {
            String a;
            boolean z;
            Throwable e;
            boolean z2 = true;
            String str = "";
            try {
                CharSequence string = System.getString(context.getContentResolver(), "bd_setting_i");
                if (TextUtils.isEmpty(string)) {
                    a = C0493a.m5812a(context, "");
                } else {
                    CharSequence charSequence = string;
                }
                try {
                    System.putString(context.getContentResolver(), "bd_setting_i", a);
                    z = false;
                } catch (Exception e2) {
                    e = e2;
                    Log.e("DeviceId", "Settings.System.getString or putString failed", e);
                    if (TextUtils.isEmpty(a)) {
                        a = C0493a.m5812a(context, "");
                        z = true;
                    } else {
                        z = true;
                    }
                    if (z) {
                        z2 = false;
                    }
                    return new C0493a(a, z2);
                }
            } catch (Throwable e3) {
                Throwable th = e3;
                a = str;
                e = th;
                Log.e("DeviceId", "Settings.System.getString or putString failed", e);
                if (TextUtils.isEmpty(a)) {
                    a = C0493a.m5812a(context, "");
                    z = true;
                } else {
                    z = true;
                }
                if (z) {
                    z2 = false;
                }
                return new C0493a(a, z2);
            }
            if (z) {
                z2 = false;
            }
            return new C0493a(a, z2);
        }

        private static String m5812a(Context context, String str) {
            CharSequence deviceId;
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    deviceId = telephonyManager.getDeviceId();
                    return TextUtils.isEmpty(deviceId) ? str : deviceId;
                }
            } catch (Throwable e) {
                Log.e("DeviceId", "Read IMEI failed", e);
            }
            deviceId = null;
            if (TextUtils.isEmpty(deviceId)) {
            }
        }
    }

    public static String m5813a(Context context) {
        C0494b.m5815a(context, "android.permission.WRITE_SETTINGS");
        C0494b.m5815a(context, "android.permission.READ_PHONE_STATE");
        C0494b.m5815a(context, UpdateConfig.f5445f);
        C0493a a = C0493a.m5811a(context);
        String str = a.f3978a;
        boolean z = !a.f3979b;
        String c = C0494b.m5818c(context);
        String str2 = "";
        if (z) {
            return C0495c.m5820a(("com.baidu" + c).getBytes(), true);
        }
        String str3 = null;
        Object string = System.getString(context.getContentResolver(), "com.baidu.deviceid");
        if (TextUtils.isEmpty(string)) {
            str3 = C0495c.m5820a(("com.baidu" + str + c).getBytes(), true);
            string = System.getString(context.getContentResolver(), str3);
            if (!TextUtils.isEmpty(string)) {
                System.putString(context.getContentResolver(), "com.baidu.deviceid", string);
                C0494b.m5816a(str, (String) string);
            }
        }
        if (TextUtils.isEmpty(string)) {
            string = C0494b.m5814a(str);
            if (!TextUtils.isEmpty(string)) {
                System.putString(context.getContentResolver(), str3, string);
                System.putString(context.getContentResolver(), "com.baidu.deviceid", string);
            }
        }
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        str2 = C0495c.m5820a((str + c + UUID.randomUUID().toString()).getBytes(), true);
        System.putString(context.getContentResolver(), str3, str2);
        System.putString(context.getContentResolver(), "com.baidu.deviceid", str2);
        C0494b.m5816a(str, str2);
        return str2;
    }

    private static String m5814a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String str2 = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(Environment.getExternalStorageDirectory(), "baidu/.cuid")));
            StringBuilder stringBuilder = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                stringBuilder.append(readLine);
                stringBuilder.append("\r\n");
            }
            bufferedReader.close();
            String[] split = new String(C0496a.m5822b("30212102dicudiab", "30212102dicudiab", C0497b.m5824a(stringBuilder.toString().getBytes()))).split("=");
            return (split != null && split.length == 2 && str.equals(split[0])) ? split[1] : str2;
        } catch (FileNotFoundException e) {
            return str2;
        } catch (IOException e2) {
            return str2;
        } catch (Exception e3) {
            return str2;
        }
    }

    private static void m5815a(Context context, String str) {
        if ((context.checkCallingOrSelfPermission(str) == 0 ? 1 : null) == null) {
            throw new SecurityException("Permission Denial: requires permission " + str);
        }
    }

    private static void m5816a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append("=");
            stringBuilder.append(str2);
            File file = new File(Environment.getExternalStorageDirectory(), "baidu/.cuid");
            try {
                new File(file.getParent()).mkdirs();
                FileWriter fileWriter = new FileWriter(file, false);
                fileWriter.write(C0497b.m5823a(C0496a.m5821a("30212102dicudiab", "30212102dicudiab", stringBuilder.toString().getBytes()), "utf-8"));
                fileWriter.flush();
                fileWriter.close();
            } catch (IOException e) {
            } catch (Exception e2) {
            }
        }
    }

    public static String m5817b(Context context) {
        return C0493a.m5811a(context).f3978a;
    }

    public static String m5818c(Context context) {
        String str = "";
        Object string = Secure.getString(context.getContentResolver(), "android_id");
        return TextUtils.isEmpty(string) ? "" : string;
    }
}
