package com.baidu.android.pushservice;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

/* renamed from: com.baidu.android.pushservice.f */
class C0289f implements Runnable {
    final /* synthetic */ Context f3285a;
    final /* synthetic */ PendingIntent f3286b;
    final /* synthetic */ String f3287c;
    final /* synthetic */ C0262e f3288d;

    C0289f(C0262e c0262e, Context context, PendingIntent pendingIntent, String str) {
        this.f3288d = c0262e;
        this.f3285a = context;
        this.f3286b = pendingIntent;
        this.f3287c = str;
    }

    public void run() {
        try {
            Notification notification = new Builder(this.f3285a).setContentTitle(this.f3288d.f3163f).setContentText(this.f3288d.f3164g).setSmallIcon(this.f3288d.f3158a).setLargeIcon(this.f3288d.m4802a(Drawable.createFromStream(new URL(this.f3288d.f3166i).openStream(), null), this.f3285a)).getNotification();
            if (this.f3288d.f3159b != 0) {
                notification.flags = this.f3288d.f3159b;
            }
            if (this.f3288d.f3165h) {
                notification.defaults = 0;
            } else {
                notification.defaults = -1;
                if (this.f3288d.f3160c != 0) {
                    notification.defaults = this.f3288d.f3160c;
                }
                if (this.f3288d.f3161d != null) {
                    notification.sound = this.f3288d.f3161d;
                }
                if (this.f3288d.f3162e != null) {
                    notification.vibrate = this.f3288d.f3162e;
                }
            }
            notification.contentIntent = this.f3286b;
            ((NotificationManager) this.f3285a.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION)).notify(this.f3287c, 0, notification);
        } catch (MalformedURLException e) {
            Log.e("NewPushNotificationBuilder", "error " + e.getMessage());
        } catch (IOException e2) {
        }
    }
}
