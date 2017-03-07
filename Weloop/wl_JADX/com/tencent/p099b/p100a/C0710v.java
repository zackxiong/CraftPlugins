package com.tencent.p099b.p100a;

import android.content.Context;
import com.tencent.p099b.p100a.p101a.C0664b;
import com.tencent.p099b.p100a.p101a.C0667f;
import com.tencent.p099b.p100a.p101a.C0669h;
import com.tencent.p099b.p100a.p102b.C0673b;
import com.tencent.p099b.p100a.p102b.C0677f;
import com.tencent.p099b.p100a.p102b.C0683l;
import com.tencent.p099b.p100a.p102b.C0688q;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.v */
public class C0710v {
    static volatile int f5325a;
    static volatile long f5326b;
    static volatile long f5327c;
    private static C0677f f5328d;
    private static volatile Map<C0664b, Long> f5329e;
    private static volatile Map<String, Properties> f5330f;
    private static volatile Map<Integer, Integer> f5331g;
    private static volatile long f5332h;
    private static volatile long f5333i;
    private static volatile long f5334j;
    private static String f5335k;
    private static volatile int f5336l;
    private static volatile String f5337m;
    private static volatile String f5338n;
    private static Map<String, Long> f5339o;
    private static Map<String, Long> f5340p;
    private static C0673b f5341q;
    private static UncaughtExceptionHandler f5342r;
    private static volatile boolean f5343s;
    private static Context f5344t;

    static {
        f5329e = new ConcurrentHashMap();
        f5330f = new ConcurrentHashMap();
        f5331g = new ConcurrentHashMap(10);
        f5332h = 0;
        f5333i = 0;
        f5334j = 0;
        f5335k = "";
        f5336l = 0;
        f5337m = "";
        f5338n = "";
        f5339o = new ConcurrentHashMap();
        f5340p = new ConcurrentHashMap();
        f5341q = C0683l.m6973c();
        f5342r = null;
        f5343s = true;
        f5325a = 0;
        f5326b = 0;
        f5344t = null;
        f5327c = 0;
    }

    static int m7089a(Context context, boolean z, C0711w c0711w) {
        boolean z2 = true;
        long currentTimeMillis = System.currentTimeMillis();
        boolean z3 = z && currentTimeMillis - f5333i >= ((long) C0708t.m7066d());
        f5333i = currentTimeMillis;
        if (f5334j == 0) {
            f5334j = C0683l.m6976d();
        }
        if (currentTimeMillis >= f5334j) {
            f5334j = C0683l.m6976d();
            if (ai.m6901a(context).m6930b(context).m6948d() != 1) {
                ai.m6901a(context).m6930b(context).m6947c();
            }
            C0708t.m7084s();
            f5325a = 0;
            f5335k = C0683l.m6978e();
            z3 = true;
        }
        Object obj = f5335k;
        if (C0683l.m6968a(c0711w)) {
            obj = c0711w.m7116c() + f5335k;
        }
        if (f5340p.containsKey(obj)) {
            z2 = z3;
        }
        if (z2) {
            if (C0683l.m6968a(c0711w)) {
                C0710v.m7094a(context, c0711w);
            } else if (C0708t.m7085t() < C0708t.m7082q()) {
                C0683l.m6999t(context);
                C0710v.m7094a(context, null);
            } else {
                f5341q.m6941e("Exceed StatConfig.getMaxDaySessionNumbers().");
            }
            f5340p.put(obj, Long.valueOf(1));
        }
        if (f5343s) {
            if (C0708t.m7065c()) {
                Context e = C0710v.m7105e(context);
                if (e == null) {
                    f5341q.m6940d("The Context of StatService.testSpeed() can not be null!");
                } else if (C0710v.m7110g(e) != null) {
                    f5328d.m6952a(new C0714z(e));
                }
            }
            f5343s = false;
        }
        return f5336l;
    }

    public static Properties m7092a(String str) {
        return (Properties) f5330f.get(str);
    }

    static void m7093a(Context context) {
        if (C0708t.m7065c()) {
            Context e = C0710v.m7105e(context);
            if (e == null) {
                f5341q.m6940d("The Context of StatService.sendNetworkDetector() can not be null!");
                return;
            }
            try {
                C0700l.m7035b(e).m7036a(new C0667f(e), new C0705q());
            } catch (Throwable th) {
                f5341q.m6938b(th);
            }
        }
    }

    private static void m7094a(Context context, C0711w c0711w) {
        if (C0710v.m7110g(context) != null) {
            if (C0708t.m7062b()) {
                f5341q.m6943g("start new session.");
            }
            if (c0711w == null || f5336l == 0) {
                f5336l = C0683l.m6960a();
            }
            C0708t.m7081p();
            C0708t.m7083r();
            new ae(new C0669h(context, f5336l, C0710v.m7112i(), c0711w)).m6892a();
        }
    }

    public static void m7095a(Context context, String str) {
        if (C0708t.m7065c()) {
            Context e = C0710v.m7105e(context);
            if (e == null) {
                f5341q.m6940d("The Context of StatService.trackCustomEvent() can not be null!");
                return;
            }
            Object obj = (str == null || str.length() == 0) ? 1 : null;
            if (obj != null) {
                f5341q.m6940d("The event_id of StatService.trackCustomEvent() can not be null or empty.");
                return;
            }
            C0664b c0664b = new C0664b(str);
            if (C0710v.m7110g(e) != null) {
                f5328d.m6952a(new C0706r(e, c0664b));
            }
        }
    }

    static void m7096a(Context context, Throwable th) {
        if (C0708t.m7065c()) {
            Context e = C0710v.m7105e(context);
            if (e == null) {
                f5341q.m6940d("The Context of StatService.reportSdkSelfException() can not be null!");
            } else if (C0710v.m7110g(e) != null) {
                f5328d.m6952a(new C0704p(e, th));
            }
        }
    }

    static boolean m7097a() {
        if (f5325a < 2) {
            return false;
        }
        f5326b = System.currentTimeMillis();
        return true;
    }

    public static boolean m7098a(Context context, String str, String str2) {
        try {
            if (C0708t.m7065c()) {
                String str3 = "2.0.3";
                if (C0708t.m7062b()) {
                    f5341q.m6943g("MTA SDK version, current: " + str3 + " ,required: " + str2);
                }
                if (context == null || str2 == null) {
                    f5341q.m6940d("Context or mtaSdkVersion in StatService.startStatService() is null, please check it!");
                    C0708t.m7057a(false);
                    return false;
                } else if (C0683l.m6971b(str3) < C0683l.m6971b(str2)) {
                    f5341q.m6940d(("MTA SDK version conflicted, current: " + str3 + ",required: " + str2) + ". please delete the current SDK and download the latest one. official website: http://mta.qq.com/ or http://mta.oa.com/");
                    C0708t.m7057a(false);
                    return false;
                } else {
                    str3 = C0708t.m7059b(context);
                    if (str3 == null || str3.length() == 0) {
                        C0708t.m7061b("-");
                    }
                    if (str != null) {
                        C0708t.m7053a(context, str);
                    }
                    if (C0710v.m7110g(context) != null) {
                        f5328d.m6952a(new ab(context));
                    }
                    return true;
                }
            }
            f5341q.m6940d("MTA StatService is disable.");
            return false;
        } catch (Throwable th) {
            f5341q.m6938b(th);
            return false;
        }
    }

    static void m7099b() {
        f5325a = 0;
        f5326b = 0;
    }

    public static void m7100b(Context context) {
        if (C0708t.m7065c()) {
            if (C0708t.m7062b()) {
                f5341q.m6935a((Object) "commitEvents, maxNumber=-1");
            }
            Context e = C0710v.m7105e(context);
            if (e == null) {
                f5341q.m6940d("The Context of StatService.commitEvents() can not be null!");
            } else if (C0712x.m7120a(f5344t).m7130f() && C0710v.m7110g(e) != null) {
                f5328d.m6952a(new C0713y(e));
            }
        }
    }

    static void m7101c() {
        f5325a++;
        f5326b = System.currentTimeMillis();
        C0710v.m7102c(f5344t);
    }

    public static void m7102c(Context context) {
        if (C0708t.m7065c() && C0708t.f5303n > 0) {
            Context e = C0710v.m7105e(context);
            if (e == null) {
                f5341q.m6940d("The Context of StatService.testSpeed() can not be null!");
            } else {
                ai.m6901a(e).m6932c();
            }
        }
    }

    static void m7104d(Context context) {
        f5327c = System.currentTimeMillis() + ((long) (60000 * C0708t.m7077l()));
        C0688q.m7012a(context, "last_period_ts", f5327c);
        C0710v.m7100b(context);
    }

    private static Context m7105e(Context context) {
        return context != null ? context : f5344t;
    }

    private static synchronized void m7108f(Context context) {
        boolean z = false;
        synchronized (C0710v.class) {
            if (context != null) {
                if (f5328d == null) {
                    long a = C0688q.m7009a(context, C0708t.f5292c);
                    long b = C0683l.m6971b("2.0.3");
                    boolean z2 = true;
                    if (b <= a) {
                        f5341q.m6940d("MTA is disable for current version:" + b + ",wakeup version:" + a);
                        z2 = false;
                    }
                    a = C0688q.m7009a(context, C0708t.f5293d);
                    if (a > System.currentTimeMillis()) {
                        f5341q.m6940d("MTA is disable for current time:" + System.currentTimeMillis() + ",wakeup time:" + a);
                    } else {
                        z = z2;
                    }
                    C0708t.m7057a(z);
                    if (z) {
                        Context applicationContext = context.getApplicationContext();
                        f5344t = applicationContext;
                        f5328d = new C0677f();
                        f5335k = C0683l.m6978e();
                        f5332h = System.currentTimeMillis() + C0708t.f5298i;
                        f5328d.m6952a(new C0703o(applicationContext));
                    }
                }
            }
        }
    }

    private static C0677f m7110g(Context context) {
        if (f5328d == null) {
            synchronized (C0710v.class) {
                if (f5328d == null) {
                    try {
                        C0710v.m7108f(context);
                    } catch (Throwable th) {
                        f5341q.m6936a(th);
                        C0708t.m7057a(false);
                    }
                }
            }
        }
        return f5328d;
    }

    private static JSONObject m7112i() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (C0708t.f5291b.f5247d != 0) {
                jSONObject2.put("v", C0708t.f5291b.f5247d);
            }
            jSONObject.put(Integer.toString(C0708t.f5291b.f5244a), jSONObject2);
            jSONObject2 = new JSONObject();
            if (C0708t.f5290a.f5247d != 0) {
                jSONObject2.put("v", C0708t.f5290a.f5247d);
            }
            jSONObject.put(Integer.toString(C0708t.f5290a.f5244a), jSONObject2);
        } catch (Throwable e) {
            f5341q.m6938b(e);
        }
        return jSONObject;
    }
}
