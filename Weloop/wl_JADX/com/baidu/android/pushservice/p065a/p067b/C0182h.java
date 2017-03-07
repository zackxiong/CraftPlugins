package com.baidu.android.pushservice.p065a.p067b;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.util.Log;
import android.widget.RemoteViews;
import com.baidu.android.pushservice.PushConstants;
import java.text.SimpleDateFormat;
import java.util.Date;

/* renamed from: com.baidu.android.pushservice.a.b.h */
public class C0182h implements C0181f {
    private static String f2915d;
    protected Notification f2916a;
    protected RemoteViews f2917b;
    protected Context f2918c;

    static {
        f2915d = "NormalNotification";
    }

    C0182h(RemoteViews remoteViews, Context context) {
        this.f2916a = new Notification();
        this.f2917b = remoteViews;
        this.f2918c = context;
        this.f2916a.icon = m4283b();
        this.f2916a.when = System.currentTimeMillis();
        this.f2916a.contentView = this.f2917b;
    }

    public Notification m4277a() {
        return this.f2916a;
    }

    public void m4278a(int i) {
        this.f2917b.setTextColor(C0190g.m4320a(this.f2918c, PushConstants.EXTRA_NOTIFICATION_CONTENT), i);
    }

    public void m4279a(long j) {
        this.f2917b.setTextViewText(C0190g.m4320a(this.f2918c, "notification_when"), new SimpleDateFormat("HH:mm").format(new Date(j)));
    }

    public void m4280a(PendingIntent pendingIntent) {
        this.f2916a.deleteIntent = pendingIntent;
    }

    public void m4281a(Intent intent) {
        int i = 0;
        try {
            i = Long.valueOf(System.currentTimeMillis()).intValue();
        } catch (Exception e) {
            Log.e(f2915d, e.getMessage());
        }
        if (intent.getStringExtra("action_type").equals("01")) {
            this.f2916a.contentView.setOnClickPendingIntent(C0190g.m4320a(this.f2918c, "content_head_bar"), PendingIntent.getService(this.f2918c, i, intent, 134217728));
        }
    }

    public void m4282a(String str) {
        this.f2917b.setTextViewText(C0190g.m4320a(this.f2918c, PushConstants.EXTRA_NOTIFICATION_TITLE), str);
    }

    int m4283b() {
        return this.f2918c.getApplicationInfo().icon;
    }

    public void m4284b(int i) {
        this.f2917b.setTextColor(C0190g.m4320a(this.f2918c, PushConstants.EXTRA_NOTIFICATION_TITLE), i);
    }

    public void m4285b(Bitmap bitmap) {
        if (bitmap != null) {
            this.f2917b.setImageViewBitmap(C0190g.m4320a(this.f2918c, "notification_icon"), bitmap);
        } else {
            this.f2917b.setImageViewResource(C0190g.m4320a(this.f2918c, "notification_icon"), m4283b());
        }
    }

    public void m4286b(String str) {
        this.f2917b.setTextViewText(C0190g.m4320a(this.f2918c, PushConstants.EXTRA_NOTIFICATION_CONTENT), str);
    }

    public void m4287c(int i) {
        this.f2917b.setInt(C0190g.m4320a(this.f2918c, "notification_background"), "setBackgroundColor", i);
    }

    public void m4288c(Bitmap bitmap) {
        if (bitmap != null) {
            this.f2917b.setImageViewBitmap(C0190g.m4320a(this.f2918c, "notification_img"), bitmap);
        } else {
            this.f2917b.setImageViewResource(C0190g.m4320a(this.f2918c, "notification_icon"), m4283b());
        }
    }
}
