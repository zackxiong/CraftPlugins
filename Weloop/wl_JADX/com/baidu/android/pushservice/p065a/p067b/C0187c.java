package com.baidu.android.pushservice.p065a.p067b;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RemoteViews;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.p065a.p066a.C0174e;
import com.baidu.android.pushservice.p065a.p066a.C0176g;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.android.pushservice.a.b.c */
public class C0187c {

    /* renamed from: com.baidu.android.pushservice.a.b.c.1 */
    static /* synthetic */ class C01851 {
        static final /* synthetic */ int[] f2921a;

        static {
            f2921a = new int[C0186a.values().length];
            try {
                f2921a[C0186a.NORMAL_BLACK_BACKGROUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2921a[C0186a.NORMAL_DARK_BACKGROUND.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2921a[C0186a.NORMAL_WHITE_BACKGROUND.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2921a[C0186a.ADVANCED_BIGPIC.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2921a[C0186a.ADVANCED_DETAIL.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.baidu.android.pushservice.a.b.c.a */
    public enum C0186a {
        NORMAL_BLACK_BACKGROUND(1),
        NORMAL_WHITE_BACKGROUND(2),
        NORMAL_DARK_BACKGROUND(3),
        ADVANCED_BIGPIC(4),
        ADVANCED_DETAIL(5),
        CUSTOM_DEFAULT(0);
        
        private int f2929g;

        private C0186a(int i) {
            this.f2929g = i;
        }

        static C0186a m4301a(int i) {
            switch (i) {
                case ProGuard.styleable.View_android_focusable /*1*/:
                    return NORMAL_BLACK_BACKGROUND;
                case ProGuard.styleable.View_paddingStart /*2*/:
                    return NORMAL_WHITE_BACKGROUND;
                case ProGuard.styleable.View_paddingEnd /*3*/:
                    return NORMAL_DARK_BACKGROUND;
                case ProGuard.styleable.View_theme /*4*/:
                    return ADVANCED_BIGPIC;
                case ProGuard.styleable.View_backgroundTint /*5*/:
                    return ADVANCED_DETAIL;
                default:
                    return CUSTOM_DEFAULT;
            }
        }
    }

    public static void m4303a(int i, Context context, String str, String str2, String str3, String str4, PendingIntent pendingIntent, Intent intent) {
        if (!TextUtils.isEmpty(str2)) {
            String trim = str2.trim();
            if (!TextUtils.isEmpty(trim)) {
                String trim2;
                if (trim.length() > 32) {
                    trim = trim.substring(0, 31);
                }
                if (!TextUtils.isEmpty(str)) {
                    trim2 = str.trim();
                    if (!TextUtils.isEmpty(trim2)) {
                        if (trim2.length() > 64) {
                            trim2 = trim2.substring(0, 63);
                        }
                        C0187c.m4305a(C0186a.m4301a(i), context, trim2, trim, C0187c.m4309a(str3) ? "null" : str3, C0187c.m4309a(str4) ? "null" : str4, pendingIntent, intent);
                        return;
                    }
                }
                trim2 = " ";
                if (C0187c.m4309a(str3)) {
                }
                if (C0187c.m4309a(str4)) {
                }
                C0187c.m4305a(C0186a.m4301a(i), context, trim2, trim, C0187c.m4309a(str3) ? "null" : str3, C0187c.m4309a(str4) ? "null" : str4, pendingIntent, intent);
                return;
            }
        }
        if (C0192a.m4341b()) {
            Log.e("AdvertiseNotificationManager", "showNotification the contentTitle is invalid, the notification will not pop Up");
        }
    }

    public static void m4304a(int i, Context context, String str, String str2, String str3, String str4, String str5, PendingIntent pendingIntent, Intent... intentArr) {
        if (!TextUtils.isEmpty(str2)) {
            String trim = str2.trim();
            if (!TextUtils.isEmpty(trim)) {
                String trim2;
                if (trim.length() > 32) {
                    trim = trim.substring(0, 31);
                }
                if (!TextUtils.isEmpty(str)) {
                    trim2 = str.trim();
                    if (!TextUtils.isEmpty(trim2)) {
                        if (trim2.length() > 64) {
                            trim2 = trim2.substring(0, 63);
                        }
                        if (C0187c.m4309a(str5)) {
                            C0187c.m4303a(1, context, trim2, trim, str3, str4, pendingIntent, intentArr[0]);
                            return;
                        } else {
                            C0187c.m4306a(C0186a.m4301a(i), context, trim2, trim, C0187c.m4309a(str3) ? "null" : str3, C0187c.m4309a(str4) ? "null" : str4, str5, pendingIntent, intentArr);
                            return;
                        }
                    }
                }
                trim2 = " ";
                if (C0187c.m4309a(str5)) {
                    if (C0187c.m4309a(str3)) {
                    }
                    if (C0187c.m4309a(str4)) {
                    }
                    C0187c.m4306a(C0186a.m4301a(i), context, trim2, trim, C0187c.m4309a(str3) ? "null" : str3, C0187c.m4309a(str4) ? "null" : str4, str5, pendingIntent, intentArr);
                    return;
                } else {
                    C0187c.m4303a(1, context, trim2, trim, str3, str4, pendingIntent, intentArr[0]);
                    return;
                }
            }
        }
        if (C0192a.m4341b()) {
            Log.e("AdvertiseNotificationManager", "showNotification the contentTitle is invalid, the notification will not pop Up");
        }
    }

    private static void m4305a(C0186a c0186a, Context context, String str, String str2, String str3, String str4, PendingIntent pendingIntent, Intent intent) {
        C0181f b = C0187c.m4310b(c0186a, context, str2, str);
        String stringExtra = intent.getStringExtra("msg_id");
        b.m4270a(intent);
        b.m4269a(pendingIntent);
        C0174e.m4248a().m4252a(context, new C0189e(context, b, stringExtra), Uri.parse(str3), Uri.parse(str4));
    }

    private static void m4306a(C0186a c0186a, Context context, String str, String str2, String str3, String str4, String str5, PendingIntent pendingIntent, Intent... intentArr) {
        C0181f c0181f = null;
        if (C0186a.ADVANCED_BIGPIC == c0186a) {
            c0181f = C0187c.m4310b(C0186a.ADVANCED_BIGPIC, context, str2, str);
        } else if (C0186a.ADVANCED_DETAIL == c0186a) {
            c0181f = C0187c.m4310b(C0186a.ADVANCED_DETAIL, context, str2, str);
        }
        String stringExtra = intentArr[0].getStringExtra("msg_id");
        for (Intent a : intentArr) {
            c0181f.m4270a(a);
        }
        c0181f.m4269a(pendingIntent);
        C0174e.m4248a().m4252a(context, new C0188d(c0181f, context, str2, str, stringExtra), Uri.parse(str3), Uri.parse(str4), Uri.parse(str5));
    }

    private static void m4307a(C0181f c0181f, String str, String str2) {
        c0181f.m4268a(System.currentTimeMillis());
        c0181f.m4271a(str);
        c0181f.m4274b(str2);
    }

    private static boolean m4308a() {
        return Build.MANUFACTURER.contains("HUAWEI") && (Build.MODEL.contains("PE") || Build.MODEL.contains("H60"));
    }

    private static boolean m4309a(String str) {
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim())) ? false : C0176g.m4257a(Uri.parse(str));
    }

    private static C0181f m4310b(C0186a c0186a, Context context, String str, String str2) {
        if (C0187c.m4311b()) {
            return new C0191i(context, str, str2);
        }
        C0181f c0181f;
        Object obj;
        if ((c0186a == C0186a.ADVANCED_BIGPIC || c0186a == C0186a.ADVANCED_DETAIL) && C0187c.m4312c()) {
            c0186a = C0186a.NORMAL_BLACK_BACKGROUND;
        }
        RemoteViews remoteViews = C0187c.m4315f() ? new RemoteViews(context.getPackageName(), C0190g.m4322b(context, "advertise_normal_layout_xiaomi")) : C0187c.m4317h() ? new RemoteViews(context.getPackageName(), C0190g.m4322b(context, "advertise_normal_layout_xiaomi_1s")) : C0187c.m4308a() ? new RemoteViews(context.getPackageName(), C0190g.m4322b(context, "advertise_normal_layout_honor")) : new RemoteViews(context.getPackageName(), C0190g.m4322b(context, "advertise_normal_layout"));
        int i;
        C0181f c0182h;
        RemoteViews remoteViews2;
        C0181f c0184b;
        switch (C01851.f2921a[c0186a.ordinal()]) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                if (!C0190g.m4324c(context)) {
                    c0181f = null;
                    i = 1;
                    break;
                }
                c0182h = new C0182h(remoteViews, context);
                if (!C0187c.m4313d()) {
                    c0182h.m4272b(-1);
                    c0182h.m4267a(-9934744);
                    c0182h.m4275c(-16777216);
                    c0181f = c0182h;
                    obj = null;
                    break;
                }
                c0182h.m4272b(-16645630);
                c0182h.m4267a(-9605779);
                c0182h.m4275c(-986896);
                c0181f = c0182h;
                obj = null;
                break;
            case ProGuard.styleable.View_paddingStart /*2*/:
                if (!C0190g.m4324c(context)) {
                    c0181f = null;
                    i = 1;
                    break;
                }
                c0182h = new C0182h(remoteViews, context);
                if (!C0187c.m4313d()) {
                    c0182h.m4272b(-1);
                    c0182h.m4267a(-9605779);
                    c0182h.m4275c(-13948117);
                    c0181f = c0182h;
                    obj = null;
                    break;
                }
                c0182h.m4272b(-16645630);
                c0182h.m4267a(-9605779);
                c0182h.m4275c(-986896);
                c0181f = c0182h;
                obj = null;
                break;
            case ProGuard.styleable.View_paddingEnd /*3*/:
                if (!C0190g.m4324c(context)) {
                    c0181f = null;
                    i = 1;
                    break;
                }
                c0182h = new C0182h(remoteViews, context);
                c0182h.m4272b(-16645630);
                c0182h.m4267a(-9605779);
                c0182h.m4275c(-986896);
                c0181f = c0182h;
                obj = null;
                break;
            case ProGuard.styleable.View_theme /*4*/:
                if (!C0190g.m4323b(context)) {
                    c0181f = null;
                    i = 1;
                    break;
                }
                remoteViews2 = C0187c.m4315f() ? new RemoteViews(context.getPackageName(), C0190g.m4322b(context, "advertise_advance_picture_layout_xiaomi")) : C0187c.m4308a() ? new RemoteViews(context.getPackageName(), C0190g.m4322b(context, "advertise_advance_picture_layout_honor")) : new RemoteViews(context.getPackageName(), C0190g.m4322b(context, "advertise_advance_picture_layout"));
                c0184b = new C0184b(remoteViews, remoteViews2, context);
                if (!C0187c.m4313d()) {
                    c0184b.m4272b(-1);
                    c0184b.m4267a(-9934744);
                    c0184b.m4275c(-16777216);
                    c0181f = c0184b;
                    obj = null;
                    break;
                }
                c0184b.m4272b(-16645630);
                c0184b.m4267a(-9605779);
                c0184b.m4275c(-986896);
                c0181f = c0184b;
                obj = null;
                break;
            case ProGuard.styleable.View_backgroundTint /*5*/:
                if (!C0190g.m4321a(context)) {
                    c0181f = null;
                    i = 1;
                    break;
                }
                remoteViews2 = C0187c.m4315f() ? new RemoteViews(context.getPackageName(), C0190g.m4322b(context, "advertise_advance_bigstyle_layout_xiaomi")) : C0187c.m4317h() ? new RemoteViews(context.getPackageName(), C0190g.m4322b(context, "advertise_advance_bigstyle_layout_xiaomi_1s")) : C0187c.m4313d() ? new RemoteViews(context.getPackageName(), C0190g.m4322b(context, "advertise_advance_bigstyle_layout_bbk")) : C0187c.m4314e() ? new RemoteViews(context.getPackageName(), C0190g.m4322b(context, "advertise_advance_bigstyle_layout_9250")) : C0187c.m4316g() ? new RemoteViews(context.getPackageName(), C0190g.m4322b(context, "advertise_advance_bigstyle_layout_2k")) : C0187c.m4308a() ? new RemoteViews(context.getPackageName(), C0190g.m4322b(context, "advertise_advance_bigstyle_layout_honor")) : new RemoteViews(context.getPackageName(), C0190g.m4322b(context, "advertise_advance_bigstyle_layout"));
                c0184b = new C0183a(remoteViews, remoteViews2, context);
                if (!C0187c.m4313d()) {
                    c0184b.m4272b(-1);
                    c0184b.m4267a(-9934744);
                    c0184b.m4275c(-16777216);
                    c0181f = c0184b;
                    obj = null;
                    break;
                }
                c0181f = c0184b;
                obj = null;
                break;
            default:
                c0181f = new C0191i(context, str, str2);
                obj = null;
                break;
        }
        if (obj != null) {
            c0181f = new C0191i(context, str, str2);
        }
        C0187c.m4307a(c0181f, str, str2);
        return c0181f;
    }

    private static boolean m4311b() {
        return VERSION.SDK_INT < 15;
    }

    private static boolean m4312c() {
        return VERSION.SDK_INT < 16;
    }

    private static boolean m4313d() {
        return Build.MANUFACTURER.contains("BBK") && Build.BRAND.contains("vivo") && (Build.MODEL.contains("X1St") || Build.MODEL.contains("vivo X3L") || Build.MODEL.contains("Y11"));
    }

    private static boolean m4314e() {
        return Build.MANUFACTURER.contains("Baidu") && Build.MODEL.contains("9250");
    }

    private static boolean m4315f() {
        return Build.MANUFACTURER.contains("Xiaomi") && (Build.MODEL.contains("MI 4") || Build.MODEL.contains("MI 3"));
    }

    private static boolean m4316g() {
        return Build.MANUFACTURER.contains("motorola") && Build.BRAND.contains("google") && Build.MODEL.contains("Nexus 6");
    }

    private static boolean m4317h() {
        return Build.MANUFACTURER.contains("Xiaomi") && Build.MODEL.contains("HM 1S");
    }
}
