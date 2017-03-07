package com.baidu.android.pushservice.message.p074a;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.media.RingtoneManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.C0213c;
import com.baidu.android.pushservice.C0262e;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.PushSDK;
import com.baidu.android.pushservice.PushService;
import com.baidu.android.pushservice.PushSettings;
import com.baidu.android.pushservice.db.C0245a;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.p071e.C0250e;
import com.baidu.android.pushservice.p072f.C0273h;
import com.baidu.android.pushservice.p072f.C0278l;
import com.baidu.android.pushservice.p072f.C0284t;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.module.deeplink.GetApn;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p080d.C0399b;
import com.umeng.update.ProGuard;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.message.a.e */
public class C0306e {
    public static int m5023a(Context context, String str, String str2, byte[] bArr, PublicMsg publicMsg) {
        if (C0250e.m4709a(context).m4761b(str)) {
            return 6;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            if (!jSONObject.isNull("lightapp_ctrl_keys")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("lightapp_ctrl_keys");
                Object obj = 1;
                int i = 1;
                if (!jSONObject2.isNull("app_type") && jSONObject2.getInt("app_type") == 1) {
                    return 0;
                }
                Object obj2;
                if (!jSONObject2.isNull("is_inner") && jSONObject2.getInt("is_inner") == 1) {
                    i = 2;
                }
                if (!jSONObject2.isNull("display_in_notification_bar") && jSONObject2.getInt("display_in_notification_bar") == 0) {
                    obj = null;
                }
                if (jSONObject2.isNull("enter_msg_center") || jSONObject2.getInt("enter_msg_center") != 0) {
                    int i2 = 1;
                } else {
                    obj2 = null;
                }
                if (obj != null && C0306e.m5037b(context, str, i)) {
                    boolean z = true;
                    if (!jSONObject2.isNull("is_merge") && jSONObject2.getInt("is_merge") == 0) {
                        z = false;
                    }
                    C0306e.m5028a(context, publicMsg, str2, str, i, z);
                }
                if (obj2 != null) {
                    C0250e.m4709a(context).m4724a(str2, str, publicMsg.mTitle, publicMsg.mDescription, publicMsg.mUrl, i, 1);
                }
                Intent intent = new Intent();
                intent.setAction("com.baidu.android.push.lightapp.NEWMSG");
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("id", str2);
                jSONObject3.put("title", publicMsg.mTitle);
                jSONObject3.put(PushConstants.EXTRA_CONTENT, publicMsg.mDescription);
                jSONObject3.put("link", publicMsg.mUrl);
                jSONObject3.put("status", "1");
                jSONObject3.put(ProGuard.f5475c, i);
                jSONObject3.put("time", System.currentTimeMillis());
                jSONObject3.put("appid", str);
                jSONObject2 = new JSONObject();
                jSONObject2.put("value", jSONObject3);
                intent.putExtra("com.baidu.android.push.lightapp.NEWMSG.EXTRA", jSONObject2.toString());
                intent.setFlags(32);
                context.sendBroadcast(intent);
            }
        } catch (JSONException e) {
            C0385a.m5313d("PushNotificationManager", "error " + e.getMessage());
        }
        return 1;
    }

    public static String m5024a(Context context, String str, int i) {
        ArrayList b = C0250e.m4709a(context).m4756b(str, i);
        if (b.size() <= 0) {
            return null;
        }
        for (int i2 = 0; i2 < b.size(); i2++) {
            String str2 = (String) b.get(i2);
            if (!TextUtils.isEmpty(str2) && C0374f.m5212d(context, str2)) {
                if (!str2.startsWith(GetApn.PKGNAME_PREFIX) && !str2.startsWith("com.baidu.voiceassistant")) {
                    return str2;
                }
                try {
                    int i3 = context.getPackageManager().getPackageInfo(str2, 1).versionCode;
                    if (i3 <= 16787720) {
                        if (!C0192a.m4341b()) {
                            return str2;
                        }
                        C0385a.m5311b("PushNotificationManager", " lightapp msg not blocked by searchbox " + i3);
                        return str2;
                    }
                } catch (NameNotFoundException e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("PushNotificationManager", " searchbox not found ");
                    }
                }
            }
        }
        return null;
    }

    public static void m5025a(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("appid");
        String stringExtra2 = intent.getStringExtra(PushConstants.EXTRA_MSGID);
        String stringExtra3 = intent.getStringExtra("url");
        String stringExtra4 = intent.getStringExtra("host");
        if (C0192a.m4339a(context)) {
            C0385a.m5311b("PushNotificationManager", "Lightapp notify clicked, appid=" + stringExtra + " host=" + stringExtra4 + " msgid=" + stringExtra2 + " url=" + stringExtra3);
        }
        Intent intent2 = new Intent();
        String str = "other";
        if (!stringExtra3.contains("?")) {
            stringExtra3 = stringExtra3 + "?";
        }
        str = stringExtra3 + "&msg_from_type=sdk_push_msg";
        String str2;
        if (TextUtils.isEmpty(stringExtra4) || !C0374f.m5212d(context, stringExtra4)) {
            if (C0192a.m4339a(context)) {
                C0385a.m5311b("PushNotificationManager", "open by browser");
            }
            Intent intent3 = new Intent("android.intent.action.VIEW");
            stringExtra3 = "browser";
            str2 = str + "&ref_id=" + stringExtra3;
            if (C0374f.m5212d(context, "com.baidu.browser.apps")) {
                intent3.setPackage("com.baidu.browser.apps");
            } else if (C0374f.m5212d(context, "com.android.browser")) {
                intent3.setPackage("com.android.browser");
            }
            intent3.setData(Uri.parse(str2));
            intent3.addFlags(268435456);
            context.startActivity(intent3);
        } else {
            intent2.setPackage(stringExtra4);
            C0273h i = C0250e.m4709a(context).m4776i(stringExtra4);
            if (stringExtra4.startsWith(GetApn.PKGNAME_PREFIX) || stringExtra4.startsWith("com.baidu.voiceassistant")) {
                stringExtra3 = "searchbox";
                str = str + "&ref_id=" + stringExtra3;
                intent2.setAction("com.baidu.searchbox.action.aloader.VIEW");
                intent2.setPackage(stringExtra4);
                intent2.setClassName(stringExtra4, "com.baidu.searchbox.aloaderhost.ALoaderActivity");
                intent2.setFlags(335544320);
                intent2.putExtra("isBackToLauncher", false);
                intent2.putExtra("EXTRA_URL_NEW_WINDOW", true);
                intent2.putExtra("src", "notification_bar");
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("appid", stringExtra);
                    jSONObject.put("url", str);
                } catch (JSONException e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5313d("PushNotificationManager", "error " + e.getMessage());
                    }
                }
                intent2.putExtra("pageId", jSONObject.toString());
                if (C0192a.m4341b()) {
                    C0385a.m5311b("PushNotificationManager", "open by searchbox");
                }
                context.startActivity(intent2);
            } else if (i != null && !TextUtils.isEmpty(i.f3229a)) {
                stringExtra3 = stringExtra4.startsWith(GetApn.PKGNAME_PREFIX) ? "searchbox" : stringExtra4.startsWith("com.baidu.netdisk") ? "netdisk" : "runtime_other";
                intent2.putExtra("_lightapp_url", str + "&ref_id=" + stringExtra3);
                intent2.addFlags(268566528);
                intent2.setAction(Long.toString(System.currentTimeMillis()));
                intent2.putExtra("fromPush", true);
                intent2.putExtra("appid", stringExtra);
                intent2.putExtra("_runtime_act_impl", "com.baidu.lappgui.LappHostActivity");
                intent2.putExtra("host_appid", i.f3229a);
                intent2.putExtra("host_version", i.f3230b);
                intent2.setPackage(stringExtra4);
                intent2.setClassName(stringExtra4, "com.baidu.sumeru.lightapp.activity.LightAppPlayerActivity");
                context.startActivity(intent2);
            } else if (stringExtra4.equals("com.baidu.netdisk")) {
                stringExtra3 = "netdisk";
                intent2.putExtra("_lightapp_url", str + "&ref_id=" + stringExtra3);
                intent2.setFlags(268435456);
                intent2.setPackage(stringExtra4);
                context.startActivity(intent2);
            } else {
                stringExtra3 = "other";
                str2 = str + "&ref_id=" + stringExtra3;
                Intent intent4 = new Intent("android.intent.action.VIEW");
                intent4.setData(Uri.parse(str2));
                intent4.setPackage(stringExtra4);
                intent4.addFlags(268435456);
                context.startActivity(intent4);
            }
        }
        C0306e.m5031a(context, stringExtra2, stringExtra, "010201", stringExtra3);
        C0250e.m4709a(context).m4767c(stringExtra2);
    }

    public static void m5026a(Context context, PublicMsg publicMsg, String str) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
        Intent intent = new Intent(context, PushService.class);
        intent.setAction("com.baidu.pushservice.action.publicmsg.CLICK_V2");
        intent.setData(Uri.parse("content://" + str));
        intent.putExtra("public_msg", publicMsg);
        Intent intent2 = new Intent(context, PushService.class);
        intent2.setAction("com.baidu.pushservice.action.publicmsg.DELETE_V2");
        intent2.setData(Uri.parse("content://" + str));
        intent2.putExtra("public_msg", publicMsg);
        intent.setClass(context, PushService.class);
        intent2.setClass(context, PushService.class);
        PendingIntent service = PendingIntent.getService(context, 0, intent, 0);
        PendingIntent service2 = PendingIntent.getService(context, 0, intent2, 0);
        Notification notification = new Notification();
        notification.icon = 17301569;
        notification.tickerText = publicMsg.mTitle;
        notification.setLatestEventInfo(context, publicMsg.mTitle, publicMsg.mDescription, service);
        notification.sound = RingtoneManager.getDefaultUri(2);
        notification.deleteIntent = service2;
        notification.flags |= 16;
        notificationManager.notify(C0374f.m5209d(str), notification);
    }

    public static void m5027a(Context context, PublicMsg publicMsg, String str, String str2) {
        Intent intent = new Intent();
        intent.putExtra("public_msg", publicMsg);
        intent.putExtra("notify_type", "private");
        intent.putExtra("pushService_package_name", context.getPackageName());
        intent.putExtra("message_id", str);
        intent.putExtra(PushConstants.EXTRA_APP_ID, str2);
        intent.putExtra("service_name", "com.baidu.android.pushservice.PushService");
        C0374f.m5184a(context, intent, "com.baidu.android.pushservice.action.notification.SHOW", publicMsg.mPkgName);
    }

    private static void m5028a(Context context, PublicMsg publicMsg, String str, String str2, int i, boolean z) {
        if (!C0250e.m4709a(context).m4768c(str2, i)) {
            Intent intent = new Intent("com.baidu.android.pushservice.action.lightapp.notification.CLICK");
            intent.setClass(context, PushService.class);
            intent.putExtra("url", publicMsg.mUrl);
            intent.putExtra("appid", publicMsg.mAppId);
            intent.putExtra(PushConstants.EXTRA_MSGID, str);
            intent.putExtra("host", C0306e.m5024a(context, str2, i));
            intent.setData(Uri.parse("content://" + str));
            Intent intent2 = new Intent("com.baidu.android.pushservice.action.lightapp.notification.DELETE");
            intent2.putExtra("appid", publicMsg.mAppId);
            intent2.putExtra(PushConstants.EXTRA_MSGID, str);
            intent2.setClass(context, PushService.class);
            intent2.setData(Uri.parse("content://" + str));
            PendingIntent service = PendingIntent.getService(context, 0, intent, 0);
            PendingIntent service2 = PendingIntent.getService(context, 0, intent2, 0);
            C0213c a = C0213c.m4483a();
            a.m4496b(16);
            a.m4498c(3);
            a.m4494a(publicMsg.mTitle);
            a.m4497b(publicMsg.mDescription);
            a.m4499c(C0250e.m4709a(context).m4775h(str2));
            a.m4495a(C0374f.m5246t(context, intent.getPackage()));
            a.m4493a(context, service, service2, publicMsg, z);
            String str3 = publicMsg.mAppId;
            if (!z) {
                str3 = publicMsg.mMsgId;
            }
            C0245a.m4576a().m4592a(publicMsg.mMsgId, publicMsg.mAppId, str3);
        }
    }

    public static void m5029a(Context context, String str) {
        try {
            String b = PushSettings.m4215b(str);
            if (!TextUtils.isEmpty(b)) {
                int intValue = Integer.valueOf(b.substring(0, 1)).intValue();
                if (b.length() > 1) {
                    b = b.substring(1);
                    if (PushSDK.getInstance(context).getRegistrationService() != null) {
                        PushSDK.getInstance(context).getRegistrationService().m4375a(str, intValue, b, context);
                        PushSettings.m4211a(str, 9, "");
                    }
                }
            }
        } catch (Throwable e) {
            if (C0192a.m4341b()) {
                C0385a.m5308a("PushNotificationManager", "unbind exception" + C0385a.m5307a(e));
            }
        }
    }

    public static void m5030a(Context context, String str, PublicMsg publicMsg, String str2) {
        Intent intent = new Intent();
        intent.putExtra("public_msg", publicMsg);
        intent.putExtra("notify_type", "rich_media");
        intent.putExtra(PushConstants.EXTRA_APP_ID, str);
        intent.putExtra("message_id", str2);
        intent.putExtra("pushService_package_name", context.getPackageName());
        intent.putExtra("service_name", "com.baidu.android.pushservice.PushService");
        C0374f.m5184a(context, intent, "com.baidu.android.pushservice.action.notification.SHOW", publicMsg.mPkgName);
    }

    private static void m5031a(Context context, String str, String str2, String str3, String str4) {
        C0278l c0278l = new C0278l();
        c0278l.g = str3;
        c0278l.f3246a = str;
        c0278l.h = System.currentTimeMillis();
        c0278l.i = C0399b.m5336d(context);
        c0278l.f3248c = C0313k.MSG_TYPE_MULTI_PRIVATE_NOTIFICATION.m5045a();
        c0278l.k = str2;
        if (str4 != null) {
            c0278l.f3249d = str4;
        }
        C0284t.m4934a(context, c0278l);
    }

    public static void m5032a(Context context, String str, String str2, String str3, String str4, String str5) {
        Intent intent = new Intent();
        intent.setData(Uri.parse(str4));
        intent.setAction("android.intent.action.VIEW");
        intent.addFlags(268435456);
        PendingIntent activity = PendingIntent.getActivity(context, 0, intent, 0);
        C0262e c0262e = new C0262e(str3);
        c0262e.m4809b(16);
        c0262e.m4811c(3);
        c0262e.m4807a(str);
        c0262e.m4810b(str2);
        c0262e.m4808a(C0374f.m5246t(context, intent.getPackage()));
        c0262e.m4806a(context, activity, str5);
    }

    public static boolean m5033a(Context context, PublicMsg publicMsg) {
        boolean z;
        if (publicMsg.mNetType == 1) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (C0192a.m4341b()) {
                    C0385a.m5311b("PushNotificationManager", "network type : " + activeNetworkInfo.getTypeName().toLowerCase(Locale.getDefault()));
                }
                if (GetApn.APN_TYPE_WIFI.equals(activeNetworkInfo.getTypeName().toLowerCase(Locale.getDefault()))) {
                    z = true;
                    if (!z) {
                        return false;
                    }
                }
            }
            z = false;
            if (z) {
                return false;
            }
        }
        if (TextUtils.isEmpty(publicMsg.mSupportAppname)) {
            if (C0192a.m4341b()) {
                C0385a.m5311b("PushNotificationManager", ">>> isNeedShowNotification supportapp = null");
            }
            return true;
        }
        try {
            if (context.getPackageManager().getPackageInfo(publicMsg.mSupportAppname, 0) != null) {
                if (C0192a.m4341b()) {
                    C0385a.m5311b("PushNotificationManager", ">>> isNeedShowNotification supportapp found \r\n pckname = " + publicMsg.mSupportAppname);
                }
                z = true;
                return (publicMsg.mIsSupportApp && z) || !(publicMsg.mIsSupportApp || z);
            }
        } catch (NameNotFoundException e) {
            if (C0192a.m4341b()) {
                C0385a.m5311b("PushNotificationManager", e.getMessage());
            }
        }
        z = false;
        if (!publicMsg.mIsSupportApp) {
        }
        return false;
    }

    public static void m5034b(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("appid");
        String stringExtra2 = intent.getStringExtra(PushConstants.EXTRA_MSGID);
        if (C0192a.m4339a(context)) {
            C0385a.m5311b("PushNotificationManager", "Lightapp notify delete appid=" + stringExtra);
        }
        C0306e.m5031a(context, stringExtra2, stringExtra, "010202", null);
    }

    private static void m5035b(Context context, PublicMsg publicMsg, String str) {
        Intent intent = new Intent();
        intent.setData(Uri.parse(publicMsg.mUrl));
        if (C0374f.m5240q(context, GetApn.PKGNAME_PREFIX)) {
            intent.setAction("com.baidu.searchbox.action.VIEW");
            intent.setClassName(GetApn.PKGNAME_PREFIX, "com.baidu.searchbox.MainActivity");
            intent.setAction("com.baidu.searchbox.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addFlags(268435456);
            intent.putExtra("EXTRA_URL_NEW_WINDOW", true);
        } else if (C0374f.m5240q(context, "com.baidu.browser.apps")) {
            intent.setAction("android.intent.action.VIEW");
            intent.setClassName("com.baidu.browser.apps", "com.baidu.browser.framework.BdBrowserActivity");
        } else {
            intent.setAction("android.intent.action.VIEW");
            intent.addFlags(268435456);
        }
        String str2 = "";
        if (publicMsg.mCustomContent != null) {
            try {
                str2 = new JSONObject(publicMsg.mCustomContent).getString("iconUrl");
            } catch (JSONException e) {
                C0385a.m5313d("PushNotificationManager", "error " + e.getMessage());
            }
        }
        PendingIntent activity = PendingIntent.getActivity(context, 0, intent, 0);
        C0262e c0262e = new C0262e(str2);
        c0262e.m4809b(16);
        c0262e.m4811c(3);
        c0262e.m4807a(publicMsg.mTitle);
        c0262e.m4805a(context.getApplicationInfo().icon);
        c0262e.m4810b(publicMsg.mDescription);
        c0262e.m4808a(C0374f.m5246t(context, intent.getPackage()));
        c0262e.m4806a(context, activity, str);
    }

    public static void m5036b(Context context, PublicMsg publicMsg, String str, String str2) {
        Intent intent = new Intent();
        intent.putExtra("ad_msg", publicMsg);
        intent.putExtra("pushService_package_name", context.getPackageName());
        intent.putExtra("message_id", str);
        intent.putExtra(PushConstants.EXTRA_APP_ID, str2);
        intent.putExtra("service_name", "com.baidu.android.pushservice.PushService");
        C0374f.m5184a(context, intent, "com.baidu.android.pushservice.action.advertise.notification.SHOW", publicMsg.mPkgName);
    }

    private static boolean m5037b(Context context, String str, int i) {
        C0250e a = C0250e.m4709a(context);
        if (!a.m4760b()) {
            return true;
        }
        ArrayList a2 = a.m4731a(str, i);
        if (a2.size() <= 0) {
            return false;
        }
        a.m4748a(a2);
        return true;
    }

    public static void m5038c(Context context, PublicMsg publicMsg, String str, String str2) {
        if (publicMsg.mUrl != null) {
            C0306e.m5035b(context, publicMsg, str);
        }
    }
}
