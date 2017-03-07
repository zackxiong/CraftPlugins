package com.baidu.frontia.p075a.p081e;

import android.content.Context;
import android.os.Environment;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.umeng.update.UpdateConfig;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.UUID;

/* renamed from: com.baidu.frontia.a.e.d */
public final class C0404d {

    /* renamed from: com.baidu.frontia.a.e.d.a */
    static final class C0403a {
        public final String f3664a;
        public final boolean f3665b;

        private C0403a(String str, boolean z) {
            this.f3664a = str;
            this.f3665b = z;
        }

        static C0403a m5348a(Context context) {
            String a;
            boolean z;
            Throwable e;
            boolean z2 = true;
            String str = "";
            try {
                CharSequence string = System.getString(context.getContentResolver(), "bd_setting_i");
                if (TextUtils.isEmpty(string)) {
                    a = C0403a.m5349a(context, "");
                } else {
                    CharSequence charSequence = string;
                }
                try {
                    System.putString(context.getContentResolver(), "bd_setting_i", a);
                    z = false;
                } catch (Exception e2) {
                    e = e2;
                    C0385a.m5309a("DeviceId", "Settings.System.getString or putString failed", e);
                    if (TextUtils.isEmpty(a)) {
                        a = C0403a.m5349a(context, "");
                        z = true;
                    } else {
                        z = true;
                    }
                    if (z) {
                        z2 = false;
                    }
                    return new C0403a(a, z2);
                }
            } catch (Throwable e3) {
                Throwable th = e3;
                a = str;
                e = th;
                C0385a.m5309a("DeviceId", "Settings.System.getString or putString failed", e);
                if (TextUtils.isEmpty(a)) {
                    a = C0403a.m5349a(context, "");
                    z = true;
                } else {
                    z = true;
                }
                if (z) {
                    z2 = false;
                }
                return new C0403a(a, z2);
            }
            if (z) {
                z2 = false;
            }
            return new C0403a(a, z2);
        }

        private static String m5349a(Context context, String str) {
            String deviceId;
            CharSequence a;
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    deviceId = telephonyManager.getDeviceId();
                    a = C0403a.m5350a(deviceId);
                    return TextUtils.isEmpty(a) ? str : a;
                }
            } catch (Throwable e) {
                C0385a.m5309a("DeviceId", "Read IMEI failed", e);
            }
            deviceId = null;
            a = C0403a.m5350a(deviceId);
            if (TextUtils.isEmpty(a)) {
            }
        }

        private static String m5350a(String str) {
            return (str == null || !str.contains(":")) ? str : "";
        }
    }

    public static String m5351a(Context context) {
        C0404d.m5353a(context, "android.permission.WRITE_SETTINGS");
        C0404d.m5353a(context, "android.permission.READ_PHONE_STATE");
        C0404d.m5353a(context, UpdateConfig.f5445f);
        C0403a a = C0403a.m5348a(context);
        String str = a.f3664a;
        boolean z = !a.f3665b;
        String c = C0404d.m5356c(context);
        String str2 = "";
        if (z) {
            return C0405e.m5358a(("com.baidu" + c).getBytes(), true);
        }
        String str3 = null;
        Object string = System.getString(context.getContentResolver(), "com.baidu.deviceid");
        if (TextUtils.isEmpty(string)) {
            str3 = C0405e.m5358a(("com.baidu" + str + c).getBytes(), true);
            string = System.getString(context.getContentResolver(), str3);
            if (!TextUtils.isEmpty(string)) {
                System.putString(context.getContentResolver(), "com.baidu.deviceid", string);
                C0404d.m5354a(str, (String) string);
            }
        }
        if (TextUtils.isEmpty(string)) {
            string = C0404d.m5352a(str);
            if (!TextUtils.isEmpty(string)) {
                System.putString(context.getContentResolver(), str3, string);
                System.putString(context.getContentResolver(), "com.baidu.deviceid", string);
            }
        }
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        str2 = C0405e.m5358a((str + c + UUID.randomUUID().toString()).getBytes(), true);
        System.putString(context.getContentResolver(), str3, str2);
        System.putString(context.getContentResolver(), "com.baidu.deviceid", str2);
        C0404d.m5354a(str, str2);
        return str2;
    }

    private static String m5352a(String str) {
        FileReader fileReader;
        Throwable th;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String str2 = "";
        try {
            fileReader = new FileReader(new File(Environment.getExternalStorageDirectory(), "baidu/.cuid"));
            try {
                BufferedReader bufferedReader = new BufferedReader(fileReader);
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
                String[] split = new String(C0400a.m5342b("30212102dicudiab", "30212102dicudiab", C0401b.m5344a(stringBuilder.toString().getBytes()))).split("=");
                if (split != null && split.length == 2 && str.equals(split[0])) {
                    str2 = split[1];
                }
                if (fileReader == null) {
                    return str2;
                }
                try {
                    fileReader.close();
                    return str2;
                } catch (IOException e) {
                    C0385a.m5312c("DeviceId", "IOException " + e.getMessage());
                    return str2;
                }
            } catch (FileNotFoundException e2) {
                if (fileReader != null) {
                    return str2;
                }
                try {
                    fileReader.close();
                    return str2;
                } catch (IOException e3) {
                    C0385a.m5312c("DeviceId", "IOException " + e3.getMessage());
                    return str2;
                }
            } catch (IOException e4) {
                if (fileReader != null) {
                    return str2;
                }
                try {
                    fileReader.close();
                    return str2;
                } catch (IOException e32) {
                    C0385a.m5312c("DeviceId", "IOException " + e32.getMessage());
                    return str2;
                }
            } catch (Exception e5) {
                if (fileReader != null) {
                    return str2;
                }
                try {
                    fileReader.close();
                    return str2;
                } catch (IOException e322) {
                    C0385a.m5312c("DeviceId", "IOException " + e322.getMessage());
                    return str2;
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (IOException e3222) {
                        C0385a.m5312c("DeviceId", "IOException " + e3222.getMessage());
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e6) {
            fileReader = null;
            if (fileReader != null) {
                return str2;
            }
            fileReader.close();
            return str2;
        } catch (IOException e7) {
            fileReader = null;
            if (fileReader != null) {
                return str2;
            }
            fileReader.close();
            return str2;
        } catch (Exception e8) {
            fileReader = null;
            if (fileReader != null) {
                return str2;
            }
            fileReader.close();
            return str2;
        } catch (Throwable th3) {
            th = th3;
            fileReader = null;
            if (fileReader != null) {
                fileReader.close();
            }
            throw th;
        }
    }

    private static void m5353a(Context context, String str) {
        if ((context.checkCallingOrSelfPermission(str) == 0 ? 1 : null) == null) {
            throw new SecurityException("Permission Denial: requires permission " + str);
        }
    }

    private static void m5354a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append("=");
            stringBuilder.append(str2);
            File file = new File(Environment.getExternalStorageDirectory(), "baidu/.cuid");
            try {
                new File(file.getParent()).mkdirs();
                FileWriter fileWriter = new FileWriter(file, false);
                fileWriter.write(C0401b.m5343a(C0400a.m5341a("30212102dicudiab", "30212102dicudiab", stringBuilder.toString().getBytes()), "utf-8"));
                fileWriter.flush();
                fileWriter.close();
            } catch (IOException e) {
            } catch (Exception e2) {
            }
        }
    }

    public static String m5355b(Context context) {
        return C0403a.m5348a(context).f3664a;
    }

    public static String m5356c(Context context) {
        String str = "";
        Object string = Secure.getString(context.getContentResolver(), "android_id");
        return TextUtils.isEmpty(string) ? "" : string;
    }
}
