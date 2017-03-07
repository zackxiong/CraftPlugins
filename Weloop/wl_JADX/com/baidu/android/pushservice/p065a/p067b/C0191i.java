package com.baidu.android.pushservice.p065a.p067b;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.util.Log;

/* renamed from: com.baidu.android.pushservice.a.b.i */
public class C0191i implements C0181f {
    private final Notification f2938a;
    private final Context f2939b;

    public C0191i(Context context, String str, String str2) {
        this.f2939b = context;
        this.f2938a = new Notification(this.f2939b.getApplicationInfo().icon, "", System.currentTimeMillis());
        this.f2938a.setLatestEventInfo(context, str, str2, PendingIntent.getBroadcast(this.f2939b, 0, new Intent(), 0));
    }

    public Notification m4325a() {
        return this.f2938a;
    }

    public void m4326a(int i) {
    }

    public void m4327a(long j) {
        this.f2938a.when = System.currentTimeMillis();
    }

    public void m4328a(PendingIntent pendingIntent) {
        this.f2938a.deleteIntent = pendingIntent;
    }

    public void m4329a(Intent intent) {
        int i = 0;
        try {
            i = Long.valueOf(System.currentTimeMillis()).intValue();
        } catch (Exception e) {
            Log.e("SystemNotification", e.getMessage());
        }
        if (intent.getStringExtra("action_type").equals("01")) {
            this.f2938a.contentIntent = PendingIntent.getBroadcast(this.f2939b, i, intent, 134217728);
        }
    }

    public void m4330a(String str) {
    }

    public void m4331b(int i) {
    }

    public void m4332b(Bitmap bitmap) {
    }

    public void m4333b(String str) {
    }

    public void m4334c(int i) {
    }

    public void m4335c(Bitmap bitmap) {
    }
}
