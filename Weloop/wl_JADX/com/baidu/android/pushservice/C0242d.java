package com.baidu.android.pushservice;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;

/* renamed from: com.baidu.android.pushservice.d */
class C0242d implements Runnable {
    final /* synthetic */ PublicMsg f3085a;
    final /* synthetic */ File f3086b;
    final /* synthetic */ Context f3087c;
    final /* synthetic */ PendingIntent f3088d;
    final /* synthetic */ PendingIntent f3089e;
    final /* synthetic */ boolean f3090f;
    final /* synthetic */ C0213c f3091g;

    C0242d(C0213c c0213c, PublicMsg publicMsg, File file, Context context, PendingIntent pendingIntent, PendingIntent pendingIntent2, boolean z) {
        this.f3091g = c0213c;
        this.f3085a = publicMsg;
        this.f3086b = file;
        this.f3087c = context;
        this.f3088d = pendingIntent;
        this.f3089e = pendingIntent2;
        this.f3090f = z;
    }

    public void run() {
        try {
            HashMap b = C0374f.m5199b();
            if (b != null) {
                this.f3091g.f2997i = b;
            } else {
                this.f3091g.f2997i.clear();
            }
            if (this.f3091g.f2997i.containsKey(this.f3085a.mAppId)) {
                this.f3091g.f2997i.put(this.f3085a.mAppId, Integer.valueOf(((Integer) this.f3091g.f2997i.get(this.f3085a.mAppId)).intValue() + 1));
            } else {
                this.f3091g.f2997i.put(this.f3085a.mAppId, Integer.valueOf(1));
            }
            C0374f.m5191a(this.f3091g.f2997i);
            Bitmap bitmap = null;
            if (this.f3086b != null) {
                bitmap = BitmapFactory.decodeStream(new FileInputStream(this.f3086b));
            } else if (!TextUtils.isEmpty(this.f3091g.f2998j)) {
                try {
                    bitmap = BitmapFactory.decodeStream(new URL(this.f3091g.f2998j).openStream());
                } catch (MalformedURLException e) {
                    C0385a.m5313d("LappPushNotificationBuilder", "error " + e.getMessage());
                } catch (IOException e2) {
                    C0385a.m5313d("LappPushNotificationBuilder", "error " + e2.getMessage());
                }
            }
            if (bitmap != null) {
                Notification a = this.f3091g.m4481a(this.f3087c, this.f3091g.f2994f, this.f3091g.f2995g, bitmap);
                if (a == null) {
                    this.f3091g.m4486a(bitmap, this.f3085a.mAppId + ".bdi");
                    return;
                }
                if (this.f3091g.f2990b != 0) {
                    a.flags = this.f3091g.f2990b;
                }
                if (this.f3091g.f2996h) {
                    a.defaults = 0;
                } else {
                    a.defaults = -1;
                    if (this.f3091g.f2991c != 0) {
                        a.defaults = this.f3091g.f2991c;
                    }
                    if (this.f3091g.f2992d != null) {
                        a.sound = this.f3091g.f2992d;
                    }
                    if (this.f3091g.f2993e != null) {
                        a.vibrate = this.f3091g.f2993e;
                    }
                }
                a.contentIntent = this.f3088d;
                a.deleteIntent = this.f3089e;
                NotificationManager notificationManager = (NotificationManager) this.f3087c.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
                if (this.f3090f) {
                    notificationManager.notify(this.f3085a.mAppId, C0374f.m5209d(this.f3085a.mAppId), a);
                } else {
                    notificationManager.notify(this.f3085a.mMsgId, C0374f.m5209d(this.f3085a.mMsgId), a);
                }
                this.f3091g.m4486a(bitmap, this.f3085a.mAppId + ".bdi");
            }
        } catch (IOException e22) {
            C0385a.m5313d("LappPushNotificationBuilder", "error " + e22.getMessage());
        }
    }
}
