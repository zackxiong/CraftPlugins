package com.baidu.android.pushservice;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.p071e.C0261p;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;

/* renamed from: com.baidu.android.pushservice.c */
public class C0213c {
    private static C0213c f2988k;
    protected int f2989a;
    protected int f2990b;
    protected int f2991c;
    protected Uri f2992d;
    protected long[] f2993e;
    protected String f2994f;
    protected String f2995g;
    protected boolean f2996h;
    private HashMap<String, Integer> f2997i;
    private String f2998j;

    private C0213c() {
        this.f2996h = true;
        this.f2997i = new HashMap();
    }

    public static int m4480a(Context context, String str) {
        return context.getResources().getIdentifier(str, "drawable", context.getPackageName());
    }

    @SuppressLint({"NewApi"})
    private Notification m4481a(Context context, String str, String str2, Bitmap bitmap) {
        Bitmap a = C0261p.m4789a(context, bitmap);
        Builder smallIcon = new Builder(context).setSmallIcon(this.f2989a);
        if (m4490b()) {
            int b = m4488b(context, "bpush_lapp_notification_layout");
            if (b <= 0) {
                return null;
            }
            int c = m4491c(context, "bpush_lapp_notification_big_icon_imageview");
            int c2 = m4491c(context, "bpush_lapp_notification_title_textview");
            int c3 = m4491c(context, "bpush_lapp_notification_content_textview");
            int c4 = m4491c(context, "bpush_lapp_notification_time_textview");
            CharSequence format = new SimpleDateFormat("HH:mm").format(new Date(System.currentTimeMillis()));
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), b);
            remoteViews.setImageViewBitmap(c, a);
            remoteViews.setTextViewText(c2, str);
            remoteViews.setTextViewText(c3, str2);
            remoteViews.setTextViewText(c4, format);
            smallIcon.setContent(remoteViews);
            smallIcon.setSmallIcon(this.f2989a);
            return smallIcon.getNotification();
        }
        smallIcon.setContentTitle(this.f2994f);
        smallIcon.setContentText(this.f2995g);
        smallIcon.setLargeIcon(a).getNotification();
        return smallIcon.getNotification();
    }

    public static C0213c m4483a() {
        if (f2988k == null) {
            f2988k = new C0213c();
        }
        return f2988k;
    }

    private void m4486a(Bitmap bitmap, String str) {
        File file = new File(String.format("%s/baidu/hybrid/noti_icons/", new Object[]{Environment.getExternalStorageDirectory().getAbsolutePath()}));
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, str);
        if (file2.exists()) {
            file2.delete();
        }
        try {
            file2.createNewFile();
            OutputStream fileOutputStream = new FileOutputStream(file2);
            bitmap.compress(CompressFormat.PNG, 90, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Exception e) {
            C0385a.m5313d("LappPushNotificationBuilder", "error " + e.getMessage());
        }
    }

    private int m4488b(Context context, String str) {
        return context.getResources().getIdentifier(str, "layout", context.getPackageName());
    }

    private boolean m4490b() {
        String toLowerCase = Build.MANUFACTURER.toLowerCase();
        if (TextUtils.isEmpty(toLowerCase) || (!toLowerCase.equals("xiaomi") && !toLowerCase.equals("oppo") && !toLowerCase.equals("lenovo") && !toLowerCase.equals("meizu"))) {
            return false;
        }
        if (C0192a.m4341b()) {
            C0385a.m5311b("LappPushNotificationBuilder", " manufaturer: " + toLowerCase + ", use resource layout for lightapp notification");
        }
        return true;
    }

    private int m4491c(Context context, String str) {
        return context.getResources().getIdentifier(str, "id", context.getPackageName());
    }

    public void m4492a(int i) {
        this.f2989a = i;
    }

    public void m4493a(Context context, PendingIntent pendingIntent, PendingIntent pendingIntent2, PublicMsg publicMsg, boolean z) {
        File file;
        int a = C0213c.m4480a(context, "bpush_lapp_notification_status_icon");
        if (a > 0) {
            m4492a(a);
        } else {
            m4492a(17301620);
        }
        boolean equals = Environment.getExternalStorageState().equals("mounted");
        if (equals) {
            file = new File(String.format("%s/baidu/hybrid/noti_icons/", new Object[]{Environment.getExternalStorageDirectory().getAbsolutePath()}));
            if (file.exists()) {
                for (File file2 : file2.listFiles()) {
                    if (file2.getName().startsWith(publicMsg.mAppId)) {
                        break;
                    }
                }
            }
        }
        file2 = null;
        if (!equals || VERSION.SDK_INT < 11) {
            Notification notification = new Notification();
            if (this.f2996h) {
                notification.defaults = 0;
            } else {
                notification.defaults = -1;
                if (this.f2991c != 0) {
                    notification.defaults = this.f2991c;
                }
                if (this.f2992d != null) {
                    notification.sound = this.f2992d;
                }
                if (this.f2993e != null) {
                    notification.vibrate = this.f2993e;
                }
            }
            if (this.f2989a != 0) {
                notification.icon = this.f2989a;
            }
            if (this.f2990b != 0) {
                notification.flags = this.f2990b;
            }
            notification.setLatestEventInfo(context, this.f2994f, this.f2995g, pendingIntent);
            if (notification != null) {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
                notification.contentIntent = pendingIntent;
                notification.deleteIntent = pendingIntent2;
                if (z) {
                    notificationManager.notify(C0374f.m5209d(publicMsg.mAppId), notification);
                    return;
                } else {
                    notificationManager.notify(C0374f.m5209d(publicMsg.mMsgId), notification);
                    return;
                }
            }
            return;
        }
        new Thread(new C0242d(this, publicMsg, file2, context, pendingIntent, pendingIntent2, z), "DownNotiIcon").start();
    }

    public void m4494a(String str) {
        this.f2994f = str;
    }

    public void m4495a(boolean z) {
        this.f2996h = z;
    }

    public void m4496b(int i) {
        this.f2990b = i;
    }

    public void m4497b(String str) {
        this.f2995g = str;
    }

    public void m4498c(int i) {
        this.f2991c = i;
    }

    public void m4499c(String str) {
        this.f2998j = str;
    }
}
