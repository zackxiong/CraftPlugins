package com.baidu.android.bbalbs.common.util;

import android.content.Context;
import android.os.Environment;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.update.UpdateConfig;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.UUID;

/* renamed from: com.baidu.android.bbalbs.common.util.a */
public final class ProGuard {

    /* renamed from: com.baidu.android.bbalbs.common.util.a.a */
    static final class ProGuard {
        public final String f2877a;
        public final boolean f2878b;

        private ProGuard(String str, boolean z) {
            this.f2877a = str;
            this.f2878b = z;
        }

        private static String m4184a(Context context, String str) {
            String deviceId;
            CharSequence a;
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    deviceId = telephonyManager.getDeviceId();
                    a = ProGuard.m4185a(deviceId);
                    if (TextUtils.isEmpty(a)) {
                        return a;
                    }
                    return str;
                }
            } catch (Throwable e) {
                Log.e("DeviceId", "Read IMEI failed", e);
            }
            deviceId = null;
            a = ProGuard.m4185a(deviceId);
            if (TextUtils.isEmpty(a)) {
                return a;
            }
            return str;
        }

        static ProGuard m4183a(Context context) {
            String a;
            boolean z;
            Throwable e;
            boolean z2 = false;
            String str = "";
            try {
                CharSequence string = System.getString(context.getContentResolver(), "bd_setting_i");
                if (TextUtils.isEmpty(string)) {
                    a = ProGuard.m4184a(context, "");
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
                        a = ProGuard.m4184a(context, "");
                        z = true;
                    } else {
                        z = true;
                    }
                    if (!z) {
                        z2 = true;
                    }
                    return new ProGuard(a, z2);
                }
            } catch (Throwable e3) {
                Throwable th = e3;
                a = str;
                e = th;
                Log.e("DeviceId", "Settings.System.getString or putString failed", e);
                if (TextUtils.isEmpty(a)) {
                    a = ProGuard.m4184a(context, "");
                    z = true;
                } else {
                    z = true;
                }
                if (z) {
                    z2 = true;
                }
                return new ProGuard(a, z2);
            }
            if (z) {
                z2 = true;
            }
            return new ProGuard(a, z2);
        }

        private static String m4185a(String str) {
            if (str == null || !str.contains(":")) {
                return str;
            }
            return "";
        }
    }

    public static String m4186a(Context context) {
        ProGuard.m4188a(context, "android.permission.WRITE_SETTINGS");
        ProGuard.m4188a(context, "android.permission.READ_PHONE_STATE");
        ProGuard.m4188a(context, UpdateConfig.f5445f);
        ProGuard a = ProGuard.m4183a(context);
        String str = a.f2877a;
        boolean z = !a.f2878b;
        String c = ProGuard.m4191c(context);
        String str2 = "";
        if (z) {
            return com.baidu.android.bbalbs.common.p064a.ProGuard.m4180a(("com.baidu" + c).getBytes(), true);
        }
        String str3 = null;
        str2 = System.getString(context.getContentResolver(), "com.baidu.deviceid");
        if (TextUtils.isEmpty(str2)) {
            str3 = com.baidu.android.bbalbs.common.p064a.ProGuard.m4180a(("com.baidu" + str + c).getBytes(), true);
            str2 = System.getString(context.getContentResolver(), str3);
            if (!TextUtils.isEmpty(str2)) {
                System.putString(context.getContentResolver(), "com.baidu.deviceid", str2);
                ProGuard.m4189a(str, str2);
            }
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = ProGuard.m4187a(str);
            if (!TextUtils.isEmpty(str2)) {
                System.putString(context.getContentResolver(), str3, str2);
                System.putString(context.getContentResolver(), "com.baidu.deviceid", str2);
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        str2 = com.baidu.android.bbalbs.common.p064a.ProGuard.m4180a(new StringBuilder(String.valueOf(str)).append(c).append(UUID.randomUUID().toString()).toString().getBytes(), true);
        System.putString(context.getContentResolver(), str3, str2);
        System.putString(context.getContentResolver(), "com.baidu.deviceid", str2);
        ProGuard.m4189a(str, str2);
        return str2;
    }

    public static String m4190b(Context context) {
        return ProGuard.m4183a(context).f2877a;
    }

    public static String m4191c(Context context) {
        String str = "";
        str = "";
        str = Secure.getString(context.getContentResolver(), "android_id");
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return str;
    }

    private static void m4188a(Context context, String str) {
        if ((context.checkCallingOrSelfPermission(str) == 0 ? 1 : null) == null) {
            throw new SecurityException("Permission Denial: requires permission " + str);
        }
    }

    private static String m4187a(String str) {
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
            String[] split = new String(com.baidu.android.bbalbs.common.p064a.ProGuard.m4175b("30212102dicudiab", "30212102dicudiab", com.baidu.android.bbalbs.common.p064a.ProGuard.m4177a(stringBuilder.toString().getBytes()))).split("=");
            if (split != null && split.length == 2 && str.equals(split[0])) {
                return split[1];
            }
            return str2;
        } catch (FileNotFoundException e) {
            return str2;
        } catch (IOException e2) {
            return str2;
        } catch (Exception e3) {
            return str2;
        }
    }

    private static void m4189a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append("=");
            stringBuilder.append(str2);
            File file = new File(Environment.getExternalStorageDirectory(), "baidu/.cuid");
            try {
                new File(file.getParent()).mkdirs();
                FileWriter fileWriter = new FileWriter(file, false);
                fileWriter.write(com.baidu.android.bbalbs.common.p064a.ProGuard.m4176a(com.baidu.android.bbalbs.common.p064a.ProGuard.m4174a("30212102dicudiab", "30212102dicudiab", stringBuilder.toString().getBytes()), "utf-8"));
                fileWriter.flush();
                fileWriter.close();
            } catch (IOException e) {
            } catch (Exception e2) {
            }
        }
    }
}
