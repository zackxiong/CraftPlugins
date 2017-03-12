package com.baidu.android.pushservice;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.android.pushservice.util.C0374f;

/* renamed from: com.baidu.android.pushservice.e */
public class C0262e {
    protected int f3158a;
    protected int f3159b;
    protected int f3160c;
    protected Uri f3161d;
    protected long[] f3162e;
    protected String f3163f;
    protected String f3164g;
    protected boolean f3165h;
    private final String f3166i;

    public C0262e(String str) {
        this.f3165h = false;
        this.f3166i = str;
    }

    private Bitmap m4802a(Drawable drawable, Context context) {
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), drawable.getOpacity() != -1 ? Config.ARGB_8888 : Config.RGB_565);
        Canvas canvas = new Canvas(createBitmap);
        float f = context.getResources().getDisplayMetrics().density;
        drawable.setBounds(0, 0, (int) (48.0f * f), (int) (f * 48.0f));
        drawable.draw(canvas);
        return createBitmap;
    }

    public void m4805a(int i) {
        this.f3158a = i;
    }

    @SuppressLint({"NewApi"})
    public void m4806a(Context context, PendingIntent pendingIntent, String str) {
        int a = C0213c.m4480a(context, "bpush_lapp_notification_status_icon");
        if (a > 0) {
            m4805a(a);
        } else {
            m4805a(17301620);
        }
        if (VERSION.SDK_INT < 11 || TextUtils.isEmpty(this.f3166i)) {
            Notification notification = new Notification();
            if (this.f3165h) {
                notification.defaults = 0;
            } else {
                notification.defaults = -1;
                if (this.f3160c != 0) {
                    notification.defaults = this.f3160c;
                }
                if (this.f3161d != null) {
                    notification.sound = this.f3161d;
                }
                if (this.f3162e != null) {
                    notification.vibrate = this.f3162e;
                }
            }
            if (this.f3158a != 0) {
                notification.icon = this.f3158a;
            }
            if (this.f3159b != 0) {
                notification.flags = this.f3159b;
            }
            notification.setLatestEventInfo(context, this.f3163f, this.f3164g, pendingIntent);
            if (notification != null) {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
                notification.contentIntent = pendingIntent;
                notificationManager.notify(C0374f.m5209d(str), notification);
                return;
            }
            return;
        }
        new Thread(new C0289f(this, context, pendingIntent, str), "DownNotiIcon").start();
    }

    public void m4807a(String str) {
        this.f3163f = str;
    }

    public void m4808a(boolean z) {
        this.f3165h = z;
    }

    public void m4809b(int i) {
        this.f3159b = i;
    }

    public void m4810b(String str) {
        this.f3164g = str;
    }

    public void m4811c(int i) {
        this.f3160c = i;
    }
}
