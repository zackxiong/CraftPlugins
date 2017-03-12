package com.baidu.android.pushservice.p065a.p067b;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;

/* renamed from: com.baidu.android.pushservice.a.b.b */
public class C0184b extends C0182h {
    private final RemoteViews f2920d;

    C0184b(RemoteViews remoteViews, RemoteViews remoteViews2, Context context) {
        super(remoteViews, context);
        this.f2920d = remoteViews2;
        this.a.bigContentView = remoteViews2;
    }

    public void m4299a(Intent intent) {
        int i = 0;
        String stringExtra = intent.getStringExtra("action_type");
        try {
            i = Long.valueOf(System.currentTimeMillis()).intValue();
        } catch (Exception e) {
            C0385a.m5313d("AdvancedPicNotification", e.getMessage());
        }
        PendingIntent service = PendingIntent.getService(this.c, i, intent, 134217728);
        if (stringExtra.equals("01")) {
            super.m4281a(intent);
        } else if (stringExtra.equals("02")) {
            this.a.bigContentView.setOnClickPendingIntent(C0190g.m4320a(this.c, "notification_big_icon"), service);
        }
    }

    public void m4300a(Bitmap bitmap) {
        if (bitmap != null) {
            this.f2920d.setImageViewBitmap(C0190g.m4320a(this.c, "notification_big_icon"), bitmap);
        } else {
            this.f2920d.setImageViewResource(C0190g.m4320a(this.c, "notification_big_icon"), m4283b());
        }
    }
}
