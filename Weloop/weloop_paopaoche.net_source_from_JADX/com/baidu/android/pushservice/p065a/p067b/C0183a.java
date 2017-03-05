package com.baidu.android.pushservice.p065a.p067b;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.util.Log;
import android.widget.RemoteViews;
import com.baidu.android.pushservice.PushConstants;
import java.text.SimpleDateFormat;
import java.util.Date;

/* renamed from: com.baidu.android.pushservice.a.b.a */
public class C0183a extends C0182h {
    private final RemoteViews f2919d;

    C0183a(RemoteViews remoteViews, RemoteViews remoteViews2, Context context) {
        super(remoteViews, context);
        this.f2919d = remoteViews2;
        this.a.bigContentView = remoteViews2;
    }

    public void m4289a(int i) {
        super.m4278a(i);
        this.f2919d.setTextColor(C0190g.m4320a(this.c, PushConstants.EXTRA_NOTIFICATION_CONTENT), i);
    }

    public void m4290a(long j) {
        super.m4279a(j);
        this.f2919d.setTextViewText(C0190g.m4320a(this.c, "notification_when"), new SimpleDateFormat("HH:mm").format(new Date(j)));
    }

    public void m4291a(Intent intent) {
        int i = 0;
        try {
            i = Long.valueOf(System.currentTimeMillis()).intValue();
        } catch (Exception e) {
            Log.e("AdvancedBigStyleNotification", e.getMessage());
        }
        String stringExtra = intent.getStringExtra("action_type");
        PendingIntent service = PendingIntent.getService(this.c, i, intent, 134217728);
        if (stringExtra.equals("01")) {
            super.m4281a(intent);
            this.a.bigContentView.setOnClickPendingIntent(C0190g.m4320a(this.c, "content_head_bar"), service);
        } else if (stringExtra.equals("02")) {
            this.a.bigContentView.setOnClickPendingIntent(C0190g.m4320a(this.c, "notification_big_icon"), service);
        } else if (stringExtra.equals("03")) {
            this.a.bigContentView.setOnClickPendingIntent(C0190g.m4320a(this.c, "notification_detail_btn"), service);
        } else if (stringExtra.equals("04")) {
            this.a.bigContentView.setOnClickPendingIntent(C0190g.m4320a(this.c, "notification_download_btn"), service);
        }
    }

    public void m4292a(Bitmap bitmap) {
        if (bitmap != null) {
            this.f2919d.setImageViewBitmap(C0190g.m4320a(this.c, "notification_big_icon"), bitmap);
        } else {
            this.f2919d.setImageViewResource(C0190g.m4320a(this.c, "notification_big_icon"), m4283b());
        }
    }

    public void m4293a(String str) {
        super.m4282a(str);
        this.f2919d.setTextViewText(C0190g.m4320a(this.c, PushConstants.EXTRA_NOTIFICATION_TITLE), str);
    }

    public void m4294b(int i) {
        super.m4284b(i);
        this.f2919d.setTextColor(C0190g.m4320a(this.c, PushConstants.EXTRA_NOTIFICATION_TITLE), i);
    }

    public void m4295b(Bitmap bitmap) {
        super.m4285b(bitmap);
        if (bitmap != null) {
            this.f2919d.setImageViewBitmap(C0190g.m4320a(this.c, "notification_icon"), bitmap);
        } else {
            this.f2919d.setImageViewResource(C0190g.m4320a(this.c, "notification_icon"), m4283b());
        }
    }

    public void m4296b(String str) {
        super.m4286b(str);
        this.f2919d.setTextViewText(C0190g.m4320a(this.c, PushConstants.EXTRA_NOTIFICATION_CONTENT), str);
    }

    public void m4297c(int i) {
        super.m4287c(i);
        this.f2919d.setInt(C0190g.m4320a(this.c, "notification_background"), "setBackgroundColor", i);
    }

    public void m4298c(Bitmap bitmap) {
        super.m4288c(bitmap);
        if (bitmap != null) {
            this.f2919d.setImageViewBitmap(C0190g.m4320a(this.c, "notification_img"), bitmap);
        } else {
            this.b.setImageViewResource(C0190g.m4320a(this.c, "notification_icon"), m4283b());
        }
    }
}
