package com.baidu.android.pushservice;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Properties;

/* renamed from: com.baidu.android.pushservice.z */
public final class C0383z {
    public static int f3614a;
    public static String f3615b;
    public static ArrayList<String> f3616c;
    public static ArrayList<String> f3617d;
    public static final int f3618e;
    public static final String f3619f;
    public static final String f3620g;
    public static final String f3621h;
    public static String f3622i;
    private static String f3623j;
    private static String[] f3624k;
    private static String f3625l;
    private static String[] f3626m;
    private static int f3627n;
    private static String f3628o;
    private static final String[] f3629p;
    private static final String[] f3630q;
    private static boolean f3631r;

    static {
        f3623j = "http://api.tuisong.baidu.com";
        f3624k = new String[]{"http://api0.tuisong.baidu.com", "http://api1.tuisong.baidu.com", "http://api2.tuisong.baidu.com", "http://api3.tuisong.baidu.com", "http://api4.tuisong.baidu.com", "http://api5.tuisong.baidu.com", "http://api6.tuisong.baidu.com", "http://api7.tuisong.baidu.com", "http://api8.tuisong.baidu.com", "http://api9.tuisong.baidu.com"};
        f3625l = "sa.tuisong.baidu.com";
        f3626m = new String[]{"sa0.tuisong.baidu.com", "sa1.tuisong.baidu.com", "sa2.tuisong.baidu.com", "sa3.tuisong.baidu.com", "sa4.tuisong.baidu.com", "sa5.tuisong.baidu.com", "sa6.tuisong.baidu.com", "sa7.tuisong.baidu.com", "sa8.tuisong.baidu.com", "sa9.tuisong.baidu.com"};
        f3627n = 5287;
        f3614a = 80;
        f3628o = "http://m.baidu.com";
        f3615b = "http://m.baidu.com";
        C0383z.m5301d();
        f3616c = null;
        f3617d = null;
        f3618e = f3627n;
        f3619f = f3628o;
        f3620g = C0383z.m5291a() + "/rest/2.0/channel/channel";
        f3621h = f3619f + "/searchbox?action=publicsrv&type=issuedcode";
        f3622i = "http://lbsonline.pushct.baidu.com/lbsupload";
        f3629p = new String[]{"202.108.23.109", "180.149.132.103", "111.13.12.174", "111.13.12.61"};
        f3630q = new String[]{"202.108.23.105", "180.149.132.107", "111.13.12.162", "180.149.131.209", "111.13.12.110", "111.13.100.86", " 111.13.100.85", " 61.135.185.18", "220.181.163.183", "220.181.163.182", " 115.239.210.219", "115.239.210.246"};
        f3631r = true;
    }

    public static String m5291a() {
        return f3623j;
    }

    public static String m5292a(Context context, boolean z) {
        if (f3617d == null || f3617d.isEmpty() || f3631r) {
            f3617d = C0383z.m5293a(context, ".baidu.push.sa");
        }
        if (f3617d != null && f3617d.size() > 0) {
            if (!z) {
                f3617d.remove(0);
            }
            if (f3617d.size() > 0) {
                return (String) f3617d.get(0);
            }
        }
        return null;
    }

    private static ArrayList<String> m5293a(Context context, String str) {
        int i = 0;
        ArrayList<String> b = C0383z.m5298b(context, str);
        if (b.size() <= 0) {
            String[] strArr;
            int length;
            if (str.equals(".baidu.push.http")) {
                strArr = f3629p;
                length = strArr.length;
                while (i < length) {
                    b.add(strArr[i]);
                    i++;
                }
            } else {
                strArr = f3630q;
                length = strArr.length;
                while (i < length) {
                    b.add(strArr[i]);
                    i++;
                }
            }
            f3631r = true;
            C0383z.m5294a(context);
        } else {
            f3631r = false;
        }
        return b;
    }

    public static void m5294a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("pst", 0);
        long j = sharedPreferences.getLong(".baidu.push.dns.refresh", 0);
        long currentTimeMillis = System.currentTimeMillis();
        if (C0192a.m4341b()) {
            Log.d("PushUrl", " update last: " + j + " current: " + currentTimeMillis);
        }
        if (currentTimeMillis - j > 86400000) {
            new aa(context, sharedPreferences).start();
        }
    }

    public static String m5296b() {
        return f3625l;
    }

    public static String m5297b(Context context, boolean z) {
        if (f3616c == null || f3616c.isEmpty()) {
            f3616c = C0383z.m5293a(context, ".baidu.push.http");
        }
        if (f3616c != null && f3616c.size() > 0) {
            if (!z) {
                f3616c.remove(0);
            }
            if (f3616c.size() > 0) {
                return (String) f3616c.get(0);
            }
        }
        return null;
    }

    private static ArrayList<String> m5298b(Context context, String str) {
        int i = 0;
        ArrayList<String> arrayList = new ArrayList();
        Object string = context.getSharedPreferences("pst", 0).getString(str, null);
        if (!TextUtils.isEmpty(string)) {
            String[] split = string.split(":");
            if (split != null && split.length > 0) {
                while (i < split.length) {
                    arrayList.add(split[i]);
                    i++;
                }
            }
        }
        return arrayList;
    }

    private static boolean m5299b(Context context, String str, String str2) {
        boolean z = false;
        try {
            if (str.startsWith("http://")) {
                str = str.replace("http://", "");
            }
            InetAddress[] allByName = InetAddress.getAllByName(str);
            if (!(context == null || allByName == null || allByName.length <= 0)) {
                SharedPreferences sharedPreferences = context.getSharedPreferences("pst", 0);
                String str3 = "";
                int length = allByName.length;
                int i = 0;
                while (i < length) {
                    i++;
                    str3 = str3 + ":" + allByName[i].getHostAddress();
                }
                if (str3.length() > 1) {
                    str3 = str3.substring(1);
                    Editor edit = sharedPreferences.edit();
                    edit.putString(str2, str3);
                    edit.commit();
                    z = true;
                }
                if (C0192a.m4341b()) {
                    Log.d("PushUrl", "  --- write bck " + str2 + " : " + str3);
                }
            }
        } catch (Exception e) {
        }
        return z;
    }

    public static String m5300c() {
        return C0383z.m5291a() + "/rest/2.0/channel/";
    }

    public static void m5301d() {
        Exception e;
        Throwable th;
        File file = new File(Environment.getExternalStorageDirectory(), "pushservice.cfg");
        String property;
        if (file.exists()) {
            Properties properties = new Properties();
            FileInputStream fileInputStream;
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    properties.load(fileInputStream);
                    property = properties.getProperty("http_server");
                    if (property != null && property.length() > 0) {
                        f3623j = property;
                    }
                    property = properties.getProperty("socket_server");
                    if (property != null && property.length() > 0) {
                        f3625l = property;
                    }
                    property = properties.getProperty("socket_server_port");
                    if (property != null && property.length() > 0) {
                        f3627n = Integer.parseInt(property);
                    }
                    property = properties.getProperty("config_server");
                    if (property != null && property.length() > 0) {
                        f3628o = property;
                    }
                    String property2 = properties.getProperty("lightapp_server");
                    if (property2 != null && property2.length() > 0) {
                        f3615b = property;
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                            return;
                        } catch (IOException e2) {
                            Log.e("PushUrl", "error " + e2.getMessage());
                            return;
                        }
                    }
                    return;
                } catch (Exception e3) {
                    e = e3;
                    try {
                        if (C0192a.m4341b()) {
                            System.out.println(e.getMessage());
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                                return;
                            } catch (IOException e22) {
                                Log.e("PushUrl", "error " + e22.getMessage());
                                return;
                            }
                        }
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e4) {
                                Log.e("PushUrl", "error " + e4.getMessage());
                            }
                        }
                        throw th;
                    }
                }
            } catch (Exception e5) {
                e = e5;
                fileInputStream = null;
                if (C0192a.m4341b()) {
                    System.out.println(e.getMessage());
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                    return;
                }
                return;
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        }
        property = ad.m4377a().m4382c();
        if (!TextUtils.isEmpty(property) && property.length() > 0) {
            try {
                int parseInt = Integer.parseInt(property.substring(property.length() - 1));
                f3623j = f3624k[parseInt % 10];
                f3625l = f3626m[parseInt % 10];
            } catch (Exception e6) {
                if (C0192a.m4341b()) {
                    Log.i("PushUrl", "parseInt err: " + property);
                }
            }
        }
    }
}
