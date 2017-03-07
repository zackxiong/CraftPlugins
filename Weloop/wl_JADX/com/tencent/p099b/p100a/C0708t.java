package com.tencent.p099b.p100a;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import com.baidu.location.LocationClientOption;
import com.tencent.p095a.p096a.p097a.p098a.C0660g;
import com.tencent.p099b.p100a.p102b.C0673b;
import com.tencent.p099b.p100a.p102b.C0683l;
import com.tencent.p099b.p100a.p102b.C0688q;
import com.tencent.p099b.p100a.p102b.C0689r;
import com.umeng.update.util.ProGuard;
import java.net.URI;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.t */
public final class C0708t {
    private static int f5270A;
    private static String f5271B;
    private static String f5272C;
    private static String f5273D;
    private static String f5274E;
    private static int f5275F;
    private static int f5276G;
    private static long f5277H;
    private static long f5278I;
    private static volatile String f5279J;
    private static int f5280K;
    private static volatile int f5281L;
    private static int f5282M;
    private static int f5283N;
    private static boolean f5284O;
    private static int f5285P;
    private static boolean f5286Q;
    private static String f5287R;
    private static boolean f5288S;
    private static C0699j f5289T;
    static C0698i f5290a;
    static C0698i f5291b;
    static String f5292c;
    static String f5293d;
    static String f5294e;
    static String f5295f;
    static boolean f5296g;
    static int f5297h;
    static long f5298i;
    static boolean f5299j;
    public static boolean f5300k;
    static volatile String f5301l;
    static boolean f5302m;
    static int f5303n;
    static long f5304o;
    static int f5305p;
    private static C0673b f5306q;
    private static C0709u f5307r;
    private static boolean f5308s;
    private static boolean f5309t;
    private static int f5310u;
    private static int f5311v;
    private static int f5312w;
    private static int f5313x;
    private static int f5314y;
    private static int f5315z;

    static {
        f5306q = C0683l.m6973c();
        f5290a = new C0698i(2);
        f5291b = new C0698i(1);
        f5307r = C0709u.APP_LAUNCH;
        f5308s = false;
        f5309t = true;
        f5310u = 30000;
        f5311v = 100000;
        f5312w = 30;
        f5313x = 10;
        f5314y = 100;
        f5315z = 30;
        f5270A = 1;
        f5292c = "__HIBERNATE__";
        f5293d = "__HIBERNATE__TIME";
        f5294e = "__MTA_KILL__";
        f5271B = null;
        f5274E = "mta_channel";
        f5295f = "";
        f5275F = 180;
        f5296g = false;
        f5297h = 100;
        f5298i = 10000;
        f5276G = 1024;
        f5299j = true;
        f5277H = 0;
        f5278I = 300000;
        f5300k = true;
        f5301l = "pingma.qq.com:80";
        f5279J = "http://pingma.qq.com:80/mstat/report";
        f5280K = 0;
        f5281L = 0;
        f5282M = 20;
        f5283N = 0;
        f5284O = false;
        f5285P = 4096;
        f5286Q = false;
        f5287R = null;
        f5288S = false;
        f5289T = null;
        f5302m = true;
        f5303n = 0;
        f5304o = 10000;
        f5305p = 512;
    }

    public static C0709u m7047a() {
        return f5307r;
    }

    public static synchronized String m7048a(Context context) {
        String str;
        synchronized (C0708t.class) {
            if (f5272C != null) {
                str = f5272C;
            } else {
                if (context != null) {
                    if (f5272C == null) {
                        f5272C = C0683l.m6981f(context);
                    }
                }
                if (f5272C == null || f5272C.trim().length() == 0) {
                    f5306q.m6940d("AppKey can not be null or empty, please read Developer's Guide first!");
                }
                str = f5272C;
            }
        }
        return str;
    }

    static String m7049a(String str) {
        try {
            String string = f5291b.f5245b.getString(str);
            if (string != null) {
                return string;
            }
        } catch (Throwable th) {
            f5306q.m6939c("can't find custom key:" + str);
        }
        return null;
    }

    private static void m7050a(long j) {
        C0688q.m7012a(C0700l.m7033a(), f5292c, j);
        C0708t.m7057a(false);
        f5306q.m6937b((Object) "MTA is disable for current SDK version");
    }

    static void m7051a(Context context, C0698i c0698i) {
        if (c0698i.f5244a == f5291b.f5244a) {
            f5291b = c0698i;
            C0708t.m7056a(c0698i.f5245b);
            if (!f5291b.f5245b.isNull("iplist")) {
                C0712x.m7120a(context).m7125a(f5291b.f5245b.getString("iplist"));
            }
        } else if (c0698i.f5244a == f5290a.f5244a) {
            f5290a = c0698i;
        }
    }

    private static void m7052a(Context context, C0698i c0698i, JSONObject jSONObject) {
        try {
            String str;
            Object obj;
            Iterator keys = jSONObject.keys();
            Object obj2 = null;
            while (keys.hasNext()) {
                str = (String) keys.next();
                if (str.equalsIgnoreCase("v")) {
                    int i = jSONObject.getInt(str);
                    obj = c0698i.f5247d != i ? 1 : obj2;
                    c0698i.f5247d = i;
                    obj2 = obj;
                } else if (str.equalsIgnoreCase("c")) {
                    str = jSONObject.getString("c");
                    if (str.length() > 0) {
                        c0698i.f5245b = new JSONObject(str);
                    }
                } else {
                    try {
                        if (str.equalsIgnoreCase("m")) {
                            c0698i.f5246c = jSONObject.getString("m");
                        }
                    } catch (JSONException e) {
                        f5306q.m6943g("__HIBERNATE__ not found.");
                    } catch (Throwable th) {
                        f5306q.m6938b(th);
                    }
                }
            }
            if (obj2 == 1) {
                ai a = ai.m6901a(C0700l.m7033a());
                if (a != null) {
                    a.m6928a(c0698i);
                }
                if (c0698i.f5244a == f5291b.f5244a) {
                    C0708t.m7056a(c0698i.f5245b);
                    JSONObject jSONObject2 = c0698i.f5245b;
                    if (!(jSONObject2 == null || jSONObject2.length() == 0)) {
                        Context a2 = C0700l.m7033a();
                        try {
                            str = jSONObject2.optString(f5294e);
                            if (C0683l.m6975c(str)) {
                                JSONObject jSONObject3 = new JSONObject(str);
                                if (jSONObject3.length() != 0) {
                                    if (!jSONObject3.isNull("sm")) {
                                        obj = jSONObject3.get("sm");
                                        int intValue = obj instanceof Integer ? ((Integer) obj).intValue() : obj instanceof String ? Integer.valueOf((String) obj).intValue() : 0;
                                        if (intValue > 0) {
                                            if (f5308s) {
                                                f5306q.m6935a("match sleepTime:" + intValue + " minutes");
                                            }
                                            C0688q.m7012a(a2, f5293d, System.currentTimeMillis() + ((long) ((intValue * 60) * LocationClientOption.MIN_SCAN_SPAN)));
                                            C0708t.m7057a(false);
                                            f5306q.m6937b((Object) "MTA is disable for current SDK version");
                                        }
                                    }
                                    if (C0708t.m7058a(jSONObject3, "sv", "2.0.3")) {
                                        f5306q.m6935a((Object) "match sdk version:2.0.3");
                                        obj = 1;
                                    } else {
                                        obj = null;
                                    }
                                    if (C0708t.m7058a(jSONObject3, "md", Build.MODEL)) {
                                        f5306q.m6935a("match MODEL:" + Build.MODEL);
                                        obj = 1;
                                    }
                                    if (C0708t.m7058a(jSONObject3, "av", C0683l.m6986i(a2))) {
                                        f5306q.m6935a("match app version:" + C0683l.m6986i(a2));
                                        obj = 1;
                                    }
                                    if (C0708t.m7058a(jSONObject3, "mf", Build.MANUFACTURER)) {
                                        f5306q.m6935a("match MANUFACTURER:" + Build.MANUFACTURER);
                                        obj = 1;
                                    }
                                    if (C0708t.m7058a(jSONObject3, "osv", VERSION.SDK_INT)) {
                                        f5306q.m6935a("match android SDK version:" + VERSION.SDK_INT);
                                        obj = 1;
                                    }
                                    if (C0708t.m7058a(jSONObject3, "ov", VERSION.SDK_INT)) {
                                        f5306q.m6935a("match android SDK version:" + VERSION.SDK_INT);
                                        obj = 1;
                                    }
                                    if (C0708t.m7058a(jSONObject3, "ui", ai.m6901a(a2).m6930b(a2).m6945a())) {
                                        f5306q.m6935a("match imei:" + ai.m6901a(a2).m6930b(a2).m6945a());
                                        obj = 1;
                                    }
                                    if (C0708t.m7058a(jSONObject3, "mid", C0708t.m7070e(a2))) {
                                        f5306q.m6935a("match mid:" + C0708t.m7070e(a2));
                                        obj = 1;
                                    }
                                    if (obj != null) {
                                        C0708t.m7050a(C0683l.m6971b("2.0.3"));
                                    }
                                }
                            }
                        } catch (Throwable th2) {
                            f5306q.m6938b(th2);
                        }
                        str = jSONObject2.getString(f5292c);
                        if (f5308s) {
                            f5306q.m6943g("hibernateVer:" + str + ", current version:2.0.3");
                        }
                        long b = C0683l.m6971b(str);
                        if (C0683l.m6971b("2.0.3") <= b) {
                            C0708t.m7050a(b);
                        }
                    }
                }
            }
            C0708t.m7051a(context, c0698i);
        } catch (Throwable th22) {
            f5306q.m6938b(th22);
        } catch (Throwable th222) {
            f5306q.m6938b(th222);
        }
    }

    public static void m7053a(Context context, String str) {
        if (context == null) {
            f5306q.m6940d("ctx in StatConfig.setAppKey() is null");
        } else if (str == null || str.length() > ProGuard.f5669b) {
            f5306q.m6940d("appkey in StatConfig.setAppKey() is null or exceed 256 bytes");
        } else {
            if (f5272C == null) {
                f5272C = C0689r.m7016a(C0688q.m7011a(context, "_mta_ky_tag_", null));
            }
            if ((C0708t.m7068d(str) | C0708t.m7068d(C0683l.m6981f(context))) != 0) {
                String str2 = f5272C;
                if (str2 != null) {
                    C0688q.m7014b(context, "_mta_ky_tag_", C0689r.m7020b(str2));
                }
            }
        }
    }

    static void m7054a(Context context, JSONObject jSONObject) {
        try {
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                String str = (String) keys.next();
                if (str.equalsIgnoreCase(Integer.toString(f5291b.f5244a))) {
                    C0708t.m7052a(context, f5291b, jSONObject.getJSONObject(str));
                } else if (str.equalsIgnoreCase(Integer.toString(f5290a.f5244a))) {
                    C0708t.m7052a(context, f5290a, jSONObject.getJSONObject(str));
                } else if (str.equalsIgnoreCase("rs")) {
                    C0709u a = C0709u.m7088a(jSONObject.getInt(str));
                    if (a != null) {
                        f5307r = a;
                        if (f5308s) {
                            f5306q.m6943g("Change to ReportStrategy:" + a.name());
                        }
                    }
                } else {
                    return;
                }
            }
        } catch (Throwable e) {
            f5306q.m6938b(e);
        }
    }

    public static void m7055a(C0709u c0709u) {
        f5307r = c0709u;
        if (c0709u != C0709u.PERIOD) {
            C0710v.f5327c = 0;
        }
        if (f5308s) {
            f5306q.m6943g("Change to statSendStrategy: " + c0709u);
        }
    }

    private static void m7056a(JSONObject jSONObject) {
        try {
            C0709u a = C0709u.m7088a(jSONObject.getInt("rs"));
            if (a != null) {
                C0708t.m7055a(a);
            }
        } catch (JSONException e) {
            if (f5308s) {
                f5306q.m6935a((Object) "rs not found.");
            }
        }
    }

    public static void m7057a(boolean z) {
        f5309t = z;
        if (!z) {
            f5306q.m6937b((Object) "!!!!!!MTA StatService has been disabled!!!!!!");
        }
    }

    private static boolean m7058a(JSONObject jSONObject, String str, String str2) {
        if (!jSONObject.isNull(str)) {
            String optString = jSONObject.optString(str);
            if (C0683l.m6975c(str2) && C0683l.m6975c(optString) && str2.equalsIgnoreCase(optString)) {
                return true;
            }
        }
        return false;
    }

    public static synchronized String m7059b(Context context) {
        String str;
        synchronized (C0708t.class) {
            if (f5273D != null) {
                str = f5273D;
            } else {
                str = C0688q.m7011a(context, f5274E, "");
                f5273D = str;
                if (str == null || f5273D.trim().length() == 0) {
                    f5273D = C0683l.m6982g(context);
                }
                if (f5273D == null || f5273D.trim().length() == 0) {
                    f5306q.m6939c("installChannel can not be null or empty, please read Developer's Guide first!");
                }
                str = f5273D;
            }
        }
        return str;
    }

    public static void m7060b(Context context, String str) {
        if (str.length() > ProGuard.f5670c) {
            f5306q.m6940d("the length of installChannel can not exceed the range of 128 bytes.");
            return;
        }
        f5273D = str;
        C0688q.m7014b(context, f5274E, str);
    }

    public static void m7061b(String str) {
        if (str.length() > ProGuard.f5670c) {
            f5306q.m6940d("the length of installChannel can not exceed the range of 128 bytes.");
        } else {
            f5273D = str;
        }
    }

    public static boolean m7062b() {
        return f5308s;
    }

    public static String m7063c(Context context) {
        return C0688q.m7011a(context, "mta.acc.qq", f5295f);
    }

    public static void m7064c(String str) {
        if (str == null || str.length() == 0) {
            f5306q.m6940d("statReportUrl cannot be null or empty.");
            return;
        }
        f5279J = str;
        try {
            f5301l = new URI(f5279J).getHost();
        } catch (Exception e) {
            f5306q.m6939c(e);
        }
        if (f5308s) {
            f5306q.m6935a("url:" + f5279J + ", domain:" + f5301l);
        }
    }

    public static boolean m7065c() {
        return f5309t;
    }

    public static int m7066d() {
        return f5310u;
    }

    public static String m7067d(Context context) {
        if (context == null) {
            f5306q.m6940d("Context for getCustomUid is null.");
            return null;
        }
        if (f5287R == null) {
            f5287R = C0688q.m7011a(context, "MTA_CUSTOM_UID", "");
        }
        return f5287R;
    }

    private static boolean m7068d(String str) {
        if (str == null) {
            return false;
        }
        if (f5272C == null) {
            f5272C = str;
            return true;
        } else if (f5272C.contains(str)) {
            return false;
        } else {
            f5272C += "|" + str;
            return true;
        }
    }

    public static int m7069e() {
        return f5314y;
    }

    public static String m7070e(Context context) {
        return context != null ? C0660g.m6851a(context).m6852a().m6843a() : "0";
    }

    public static int m7071f() {
        return f5315z;
    }

    public static int m7072g() {
        return f5313x;
    }

    public static int m7073h() {
        return f5270A;
    }

    static int m7074i() {
        return f5312w;
    }

    public static int m7075j() {
        return f5311v;
    }

    public static void m7076k() {
        f5275F = 60;
    }

    public static int m7077l() {
        return f5275F;
    }

    public static void m7078m() {
        f5299j = true;
    }

    public static boolean m7079n() {
        return f5300k;
    }

    public static String m7080o() {
        return f5279J;
    }

    static synchronized void m7081p() {
        synchronized (C0708t.class) {
            f5281L = 0;
        }
    }

    public static int m7082q() {
        return f5282M;
    }

    static void m7083r() {
        f5283N++;
    }

    static void m7084s() {
        f5283N = 0;
    }

    static int m7085t() {
        return f5283N;
    }

    public static boolean m7086u() {
        return f5286Q;
    }

    public static C0699j m7087v() {
        return f5289T;
    }
}
