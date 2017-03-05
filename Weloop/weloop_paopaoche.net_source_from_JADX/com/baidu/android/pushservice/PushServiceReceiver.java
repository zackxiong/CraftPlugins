package com.baidu.android.pushservice;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.text.TextUtils;
import android.widget.RemoteViews;
import android.widget.Toast;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.p065a.p066a.C0176g;
import com.baidu.android.pushservice.p065a.p067b.C0187c;
import com.baidu.android.pushservice.richmedia.C0166q;
import com.baidu.android.pushservice.richmedia.C0334b;
import com.baidu.android.pushservice.richmedia.C0345m;
import com.baidu.android.pushservice.richmedia.C0347n;
import com.baidu.android.pushservice.richmedia.C0347n.C0346a;
import com.baidu.android.pushservice.richmedia.C0349o;
import com.baidu.android.pushservice.richmedia.C0350p;
import com.baidu.android.pushservice.richmedia.MediaViewActivity;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.android.pushservice.util.C0377i;
import com.baidu.android.pushservice.util.PushDatabase;
import com.baidu.android.pushservice.util.PushDatabase.C0360g;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p079c.C0386a;
import java.io.File;

public class PushServiceReceiver extends BroadcastReceiver {
    private static final String TAG = "PushServiceReceiver";

    /* renamed from: com.baidu.android.pushservice.PushServiceReceiver.a */
    private static class C0167a implements C0166q {
        public Context f2879a;
        public RemoteViews f2880b;
        public int f2881c;
        public int f2882d;
        public int f2883e;
        public int f2884f;
        NotificationManager f2885g;

        C0167a(Context context, PublicMsg publicMsg) {
            this.f2879a = null;
            this.f2880b = null;
            this.f2881c = 0;
            this.f2882d = 0;
            this.f2883e = 0;
            this.f2884f = 0;
            this.f2879a = context;
            this.f2885g = (NotificationManager) context.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
        }

        public void m4199a(C0334b c0334b) {
            Resources resources = this.f2879a.getResources();
            String packageName = this.f2879a.getPackageName();
            if (resources != null) {
                int identifier = resources.getIdentifier("bpush_download_progress", "layout", packageName);
                this.f2880b = new RemoteViews(this.f2879a.getPackageName(), identifier);
                if (identifier != 0) {
                    this.f2881c = resources.getIdentifier("bpush_download_progress", "id", packageName);
                    this.f2882d = resources.getIdentifier("bpush_progress_percent", "id", packageName);
                    this.f2883e = resources.getIdentifier("bpush_progress_text", "id", packageName);
                    this.f2884f = resources.getIdentifier("bpush_download_icon", "id", packageName);
                    this.f2880b.setImageViewResource(this.f2884f, this.f2879a.getApplicationInfo().icon);
                }
            }
        }

        public void m4200a(C0334b c0334b, C0345m c0345m) {
            String d = c0334b.f3441d.m5144d();
            if (c0345m.f3457a != c0345m.f3458b && this.f2880b != null) {
                int i = (int) ((((double) c0345m.f3457a) * 100.0d) / ((double) c0345m.f3458b));
                this.f2880b.setTextViewText(this.f2882d, i + "%");
                this.f2880b.setTextViewText(this.f2883e, "\u6b63\u5728\u4e0b\u8f7d\u5bcc\u5a92\u4f53:" + d);
                this.f2880b.setProgressBar(this.f2881c, 100, i, false);
                Notification notification = new Notification(17301633, null, System.currentTimeMillis());
                notification.contentView = this.f2880b;
                notification.contentIntent = PendingIntent.getActivity(this.f2879a, 0, new Intent(), 0);
                notification.flags |= 32;
                notification.flags |= 2;
                this.f2885g.notify(d, 0, notification);
            }
        }

        public void m4201a(C0334b c0334b, C0350p c0350p) {
            String d = c0334b.f3441d.m5144d();
            this.f2885g.cancel(d, 0);
            C0360g fileDownloadingInfo = PushDatabase.getFileDownloadingInfo(this.f2879a, d);
            if (fileDownloadingInfo != null && fileDownloadingInfo.f3544i == C0334b.f3436f) {
                String str = fileDownloadingInfo.f3540e;
                d = fileDownloadingInfo.f3541f;
                d = str + "/" + d.substring(0, d.lastIndexOf(".")) + "/index.html";
                Intent intent = new Intent();
                intent.setClass(this.f2879a, MediaViewActivity.class);
                intent.setData(Uri.fromFile(new File(d)));
                intent.addFlags(268435456);
                this.f2879a.startActivity(intent);
            }
        }

        public void m4202a(C0334b c0334b, Throwable th) {
            String d = c0334b.f3441d.m5144d();
            this.f2885g.cancel(d, 0);
            Toast makeText = Toast.makeText(this.f2879a, "\u4e0b\u8f7d\u5bcc\u5a92\u4f53" + Uri.parse(d).getAuthority() + "\u5931\u8d25", 1);
            makeText.setGravity(17, 0, 0);
            makeText.show();
        }

        public void m4203b(C0334b c0334b) {
            this.f2885g.cancel(c0334b.f3441d.m5144d(), 0);
        }
    }

    private static synchronized void checkWifi(Context context) {
        synchronized (PushServiceReceiver.class) {
            if (ConnectivityManager.isNetworkTypeValid(1) && C0386a.m5315a(context)) {
                C0377i.m5265a(context, false);
            }
        }
    }

    private Intent getCommandServiceIntent(Context context, Intent intent, String str) {
        if (C0192a.m4336a() >= (short) 32) {
            intent.setFlags(32);
            intent.setAction(str);
            intent.setClassName(context.getPackageName(), "com.baidu.android.pushservice.CommandService");
            intent.putExtra("command_type", "reflect_receiver");
        }
        return intent;
    }

    public static void handleRichMediaClick(Context context, PublicMsg publicMsg) {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            Toast makeText = Toast.makeText(context, "\u8bf7\u63d2\u5165SD\u5361", 1);
            makeText.setGravity(17, 0, 0);
            makeText.show();
        } else if (publicMsg != null && publicMsg.mUrl != null) {
            Uri parse = Uri.parse(publicMsg.mUrl);
            String path = parse.getPath();
            if (!TextUtils.isEmpty(parse.getPath())) {
                File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + "baidu/pushservice/files" + "/" + parse.getAuthority() + "/" + path.substring(0, path.lastIndexOf(47)));
                if (C0192a.m4341b()) {
                    C0385a.m5311b(TAG, "<<< download url " + parse.toString());
                }
                C0347n a = C0349o.m5145a(C0346a.REQ_TYPE_GET_ZIP, parse.toString());
                a.f3461a = publicMsg.mPkgName;
                a.f3462b = file.getAbsolutePath();
                a.f3463c = publicMsg.mTitle;
                a.f3464d = publicMsg.mDescription;
                new C0334b(context, new C0167a(context, publicMsg), a).start();
            }
        }
    }

    private static void sendNotificationArrivedReceiver(Context context, String str, PublicMsg publicMsg) {
        Intent intent = new Intent();
        intent.setPackage(str);
        intent.putExtra(PushConstants.EXTRA_METHOD, PushConstants.ACTION_RECEIVER_NOTIFICATION_ARRIVED);
        intent.putExtra(PushConstants.EXTRA_NOTIFICATION_TITLE, publicMsg.mTitle);
        intent.putExtra(PushConstants.EXTRA_NOTIFICATION_CONTENT, publicMsg.mCustomContent);
        intent.putExtra(PushConstants.EXTRA_EXTRA, publicMsg.mDescription);
        C0374f.m5184a(context, intent, PushConstants.ACTION_RECEIVE, publicMsg.mPkgName);
    }

    private void showAdvertiseNotifiation(Context context, String str, String str2, PublicMsg publicMsg, String str3, String str4) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            Intent commandServiceIntent = getCommandServiceIntent(applicationContext, new Intent(), "com.baidu.android.pushservice.action.adnotification.ADDELETE");
            commandServiceIntent.putExtra(PushConstants.EXTRA_APP_ID, str4);
            commandServiceIntent.putExtra("msg_id", str3);
            commandServiceIntent.putExtra("ad_msg", publicMsg);
            commandServiceIntent.putExtra("action_type", "05");
            commandServiceIntent.putExtra("click_url", publicMsg.mUrl);
            commandServiceIntent.putExtra("advertise_Style", String.valueOf(publicMsg.mAdvertiseStyle));
            int i = 0;
            try {
                i = Long.valueOf(System.currentTimeMillis()).intValue();
            } catch (Exception e) {
                C0385a.m5313d(TAG, e.getMessage());
            }
            PendingIntent service = PendingIntent.getService(context, i, commandServiceIntent, 134217728);
            if (publicMsg.mAdvertiseStyle == 1 || publicMsg.mAdvertiseStyle == 2 || publicMsg.mAdvertiseStyle == 3) {
                Intent commandServiceIntent2 = getCommandServiceIntent(applicationContext, new Intent(), "com.baidu.android.pushservice.action.adnotification.ADCLICK");
                commandServiceIntent2.putExtra(PushConstants.EXTRA_APP_ID, str4);
                commandServiceIntent2.putExtra("msg_id", str3);
                commandServiceIntent2.putExtra("ad_msg", publicMsg);
                commandServiceIntent2.putExtra("action_type", "01");
                commandServiceIntent2.putExtra("click_url", publicMsg.mAdvertiseClickUrl);
                commandServiceIntent2.putExtra("advertise_Style", String.valueOf(publicMsg.mAdvertiseStyle));
                C0187c.m4303a(publicMsg.mAdvertiseStyle, applicationContext, publicMsg.mDescription, publicMsg.mTitle, publicMsg.mAdvertiseLargeIconUrl, publicMsg.mAdvertiseSmallIconUrl, service, commandServiceIntent2);
                if (C0192a.f2943d >= 1 && C0192a.f2943d <= 5) {
                    C0374f.m5189a("pushadvertise:  show normal  advertise notification", context);
                }
            } else if (publicMsg.mAdvertiseStyle == 4 || publicMsg.mAdvertiseStyle == 5) {
                Intent commandServiceIntent3 = getCommandServiceIntent(applicationContext, new Intent(), "com.baidu.android.pushservice.action.adnotification.ADCLICK");
                commandServiceIntent3.putExtra(PushConstants.EXTRA_APP_ID, str4);
                commandServiceIntent3.putExtra("msg_id", str3);
                commandServiceIntent3.putExtra("ad_msg", publicMsg);
                commandServiceIntent3.putExtra("action_type", "01");
                commandServiceIntent3.putExtra("click_url", publicMsg.mAdvertiseClickUrl);
                commandServiceIntent3.putExtra("advertise_Style", String.valueOf(publicMsg.mAdvertiseStyle));
                Intent commandServiceIntent4 = getCommandServiceIntent(applicationContext, new Intent(), "com.baidu.android.pushservice.action.adnotification.ADCLICK");
                commandServiceIntent4.putExtra(PushConstants.EXTRA_APP_ID, str4);
                commandServiceIntent4.putExtra("msg_id", str3);
                commandServiceIntent4.putExtra("ad_msg", publicMsg);
                commandServiceIntent4.putExtra("action_type", "02");
                commandServiceIntent4.putExtra("click_url", publicMsg.mAdvertiseBigPictureClickUrl);
                commandServiceIntent4.putExtra("advertise_Style", String.valueOf(publicMsg.mAdvertiseStyle));
                commandServiceIntent = getCommandServiceIntent(applicationContext, new Intent(), "com.baidu.android.pushservice.action.adnotification.ADCLICK");
                commandServiceIntent.putExtra(PushConstants.EXTRA_APP_ID, str4);
                commandServiceIntent.putExtra("msg_id", str3);
                commandServiceIntent.putExtra("ad_msg", publicMsg);
                commandServiceIntent.putExtra("action_type", "03");
                commandServiceIntent.putExtra("click_url", publicMsg.mAdvertiseDetailClickUrl);
                commandServiceIntent.putExtra("advertise_Style", String.valueOf(publicMsg.mAdvertiseStyle));
                Intent commandServiceIntent5 = getCommandServiceIntent(applicationContext, new Intent(), "com.baidu.android.pushservice.action.adnotification.ADCLICK");
                commandServiceIntent5.putExtra(PushConstants.EXTRA_APP_ID, str4);
                commandServiceIntent5.putExtra("msg_id", str3);
                commandServiceIntent5.putExtra("ad_msg", publicMsg);
                commandServiceIntent5.putExtra("action_type", "04");
                commandServiceIntent5.putExtra("click_url", publicMsg.mAdvertiseDownloadClickUrl);
                commandServiceIntent5.putExtra("advertise_Style", String.valueOf(publicMsg.mAdvertiseStyle));
                if (publicMsg.mAdvertiseStyle == 4) {
                    C0187c.m4304a(4, applicationContext, publicMsg.mDescription, publicMsg.mTitle, publicMsg.mAdvertiseLargeIconUrl, publicMsg.mAdvertiseSmallIconUrl, publicMsg.mAdvertiseBigPictureUrl, service, commandServiceIntent3, commandServiceIntent4);
                } else if (publicMsg.mAdvertiseStyle == 5) {
                    C0187c.m4304a(5, applicationContext, publicMsg.mDescription, publicMsg.mTitle, publicMsg.mAdvertiseLargeIconUrl, publicMsg.mAdvertiseSmallIconUrl, publicMsg.mAdvertiseBigPictureUrl, service, commandServiceIntent3, commandServiceIntent, commandServiceIntent5, commandServiceIntent4);
                }
                if (C0192a.f2943d >= 1 && C0192a.f2943d <= 5) {
                    C0374f.m5189a("pushadvertise:  show big picture  advertise notification", context);
                }
            }
        } else if (C0192a.m4341b()) {
            C0385a.m5313d(TAG, "showAdvertiseNotifiation pkgName is invalid");
        }
    }

    private static void showPrivateNotification(Context context, String str, String str2, PublicMsg publicMsg, String str3, String str4) {
        Notification a;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
        Intent intent = new Intent();
        intent.setClassName(str, str2);
        intent.setAction("com.baidu.android.pushservice.action.privatenotification.CLICK");
        intent.setData(Uri.parse("content://" + str3));
        intent.putExtra("public_msg", publicMsg);
        intent.putExtra(PushConstants.EXTRA_APP_ID, str4);
        intent.putExtra("msg_id", str3);
        PendingIntent service = PendingIntent.getService(context, 0, intent, 0);
        intent = new Intent();
        intent.setClassName(str, str2);
        intent.setAction("com.baidu.android.pushservice.action.privatenotification.DELETE");
        intent.setData(Uri.parse("content://" + str3));
        intent.putExtra("public_msg", publicMsg);
        intent.putExtra(PushConstants.EXTRA_APP_ID, str4);
        intent.putExtra("msg_id", str3);
        PendingIntent service2 = PendingIntent.getService(context, 0, intent, 0);
        boolean t = C0374f.m5246t(context, publicMsg.mPkgName);
        if (publicMsg.mNotificationBuilder == 0) {
            a = C0290g.m4962a(context, publicMsg.mNotificationBuilder, publicMsg.mNotificationBasicStyle, publicMsg.mTitle, publicMsg.mDescription, t);
        } else {
            a = C0290g.m4963a(context, publicMsg.mNotificationBuilder, publicMsg.mTitle, publicMsg.mDescription, t);
        }
        a.contentIntent = service;
        a.deleteIntent = service2;
        notificationManager.notify(str3, 0, a);
        sendNotificationArrivedReceiver(context, str, publicMsg);
    }

    private static void showRichNotification(Context context, String str, String str2, PublicMsg publicMsg, String str3) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
        Intent intent = new Intent("com.baidu.android.pushservice.action.media.CLICK");
        intent.setClassName(str, str2);
        intent.setData(Uri.parse("content://" + publicMsg.mMsgId));
        intent.putExtra("public_msg", publicMsg);
        intent.putExtra(PushConstants.EXTRA_APP_ID, str3);
        PendingIntent service = PendingIntent.getService(context, 0, intent, 0);
        if (C0192a.m4341b()) {
            C0385a.m5308a(TAG, "Set click broadcast, pkgname: " + publicMsg.mPkgName + " action: " + "com.baidu.android.pushservice.action.media.CLICK");
        }
        Intent intent2 = new Intent();
        intent2.setClassName(str, str2);
        intent2.setAction("com.baidu.android.pushservice.action.media.DELETE");
        intent2.setData(Uri.parse("content://" + publicMsg.mMsgId));
        intent2.putExtra("public_msg", publicMsg);
        intent2.putExtra(PushConstants.EXTRA_APP_ID, str3);
        PendingIntent service2 = PendingIntent.getService(context, 0, intent2, 0);
        Notification a = C0290g.m4963a(context, 8888, publicMsg.mTitle, "\u5bcc\u5a92\u4f53\u6d88\u606f\uff1a\u70b9\u51fb\u540e\u4e0b\u8f7d\u4e0e\u67e5\u770b", C0374f.m5246t(context, publicMsg.mPkgName));
        a.contentIntent = service;
        a.deleteIntent = service2;
        notificationManager.notify(publicMsg.mMsgId, 0, a);
    }

    private static void startOwnPushService(Context context) {
        new Thread(new C0382y(context)).start();
    }

    public void onReceive(Context context, Intent intent) {
        PublicMsg publicMsg = null;
        boolean z = true;
        String action = intent.getAction();
        if ("android.intent.action.BOOT_COMPLETED".equals(action) || "android.net.conn.CONNECTIVITY_CHANGE".equals(action) || "android.intent.action.USER_PRESENT".equals(action) || "android.intent.action.MEDIA_CHECKING".equals(action) || "android.intent.action.ACTION_POWER_CONNECTED".equals(action) || "android.intent.action.ACTION_POWER_DISCONNECTED".equals(action) || "android.bluetooth.adapter.action.STATE_CHANGED".equals(action)) {
            C0385a.m5308a(TAG, "start PushSerevice for by " + action);
            startOwnPushService(context);
        } else if ("com.baidu.android.pushservice.action.notification.SHOW".equals(action)) {
            String stringExtra = intent.getStringExtra("pushService_package_name");
            r2 = intent.getStringExtra("service_name");
            r0 = intent.getParcelableExtra("public_msg");
            PublicMsg publicMsg2 = (r0 == null || !(r0 instanceof PublicMsg)) ? null : (PublicMsg) r0;
            if (TextUtils.isEmpty(stringExtra) || TextUtils.isEmpty(r2) || publicMsg2 == null) {
                C0385a.m5311b(TAG, "Extra not valid, servicePkgName=" + stringExtra + " serviceName=" + r2 + " pMsg==null - " + (publicMsg2 == null));
                return;
            }
            action = intent.getStringExtra("notify_type");
            if ("private".equals(action)) {
                showPrivateNotification(context, stringExtra, r2, publicMsg2, intent.getStringExtra("message_id"), intent.getStringExtra(PushConstants.EXTRA_APP_ID));
            } else if ("rich_media".equals(action)) {
                showRichNotification(context, stringExtra, r2, publicMsg2, intent.getStringExtra(PushConstants.EXTRA_APP_ID));
            }
        } else if ("com.baidu.android.pushservice.action.media.CLICK".equals(action)) {
            if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "Rich media notification clicked");
            }
            try {
                handleRichMediaClick(context, intent.hasExtra("public_msg") ? (PublicMsg) intent.getParcelableExtra("public_msg") : null);
            } catch (ClassCastException e) {
                C0385a.m5312c(TAG, "Rich media notification clicked, parse pMsg exception");
            }
        } else if ("com.baidu.android.pushservice.action.frontia.user".equals(action)) {
            if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "receive frontia user");
            }
            PushSettings.m4212a(intent.getStringExtra("com.baidu.android.pushservice.frontia.user.apikey"), intent.getStringExtra("com.baidu.android.pushservice.frontia.user.pkgName"), intent.getStringExtra("com.baidu.android.pushservice.frontia.user.user"));
        } else if ("com.baidu.android.pushservice.action.advertise.notification.SHOW".equals(action)) {
            r2 = intent.getStringExtra("pushService_package_name");
            String stringExtra2 = intent.getStringExtra("service_name");
            r0 = intent.getParcelableExtra("ad_msg");
            if (r0 != null && (r0 instanceof PublicMsg)) {
                publicMsg = (PublicMsg) r0;
            }
            if (TextUtils.isEmpty(r2) || TextUtils.isEmpty(stringExtra2) || publicMsg == null) {
                action = TAG;
                StringBuilder append = new StringBuilder().append("Extra not valid, servicePkgName=").append(r2).append(" serviceName=").append(stringExtra2).append(" pMsg==null - ");
                if (publicMsg != null) {
                    z = false;
                }
                C0385a.m5311b(action, append.append(z).toString());
                return;
            }
            showAdvertiseNotifiation(context, r2, stringExtra2, publicMsg, intent.getStringExtra("message_id"), intent.getStringExtra(PushConstants.EXTRA_APP_ID));
            if (C0192a.f2943d >= 1 && C0192a.f2943d <= 5) {
                C0374f.m5189a("pushadvertise:  show advertise notification", context);
            }
        } else if ("com.baidu.android.pushservice.action.adnotification.ADCLICK".equals(action)) {
            if (C0192a.m4341b()) {
                C0385a.m5311b(TAG, "Handle ADNotification Click Action");
            }
            action = intent.getStringExtra("click_url");
            if (!(TextUtils.isEmpty(action) || TextUtils.isEmpty(action.trim()))) {
                Uri parse = Uri.parse(action.trim());
                if (C0176g.m4257a(parse)) {
                    if (C0192a.f2943d >= 1 && C0192a.f2943d <= 5) {
                        C0374f.m5189a("pushadvertise:  open click url", context);
                    }
                    Intent intent2 = new Intent("android.intent.action.VIEW", parse);
                    intent2.addFlags(268435456);
                    context.startActivity(intent2);
                }
            }
            try {
                Object systemService = context.getSystemService("statusbar");
                (VERSION.SDK_INT <= 16 ? systemService.getClass().getMethod("collapse", new Class[0]) : systemService.getClass().getMethod("collapsePanels", new Class[0])).invoke(systemService, new Object[0]);
            } catch (Exception e2) {
                C0385a.m5313d(TAG, e2.getMessage());
            }
            ((NotificationManager) context.getApplicationContext().getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION)).cancel(intent.getStringExtra("msg_id"), 0);
            if (C0192a.f2943d >= 1 && C0192a.f2943d <= 5) {
                C0374f.m5189a("pushadvertise:  cancel advertise notification", context);
            }
            r0 = C0374f.m5169A(context);
            if (!TextUtils.isEmpty(r0)) {
                intent.setClassName(r0, "com.baidu.android.pushservice.PushService");
                if (C0192a.m4341b()) {
                    C0385a.m5313d(TAG, "CLICK  " + intent.toURI());
                }
                context.startService(intent);
            }
        } else if ("com.baidu.android.pushservice.action.adnotification.ADDELETE".equals(action)) {
            r0 = C0374f.m5169A(context);
            if (!TextUtils.isEmpty(r0)) {
                intent.setClassName(r0, "com.baidu.android.pushservice.PushService");
                if (C0192a.m4341b()) {
                    C0385a.m5313d(TAG, "DELETE  " + intent.toURI());
                }
                context.startService(intent);
            }
        }
    }
}
