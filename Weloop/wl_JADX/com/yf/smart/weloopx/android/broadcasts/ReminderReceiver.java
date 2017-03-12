package com.yf.smart.weloopx.android.broadcasts;

import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.ag;
import android.text.TextUtils;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.yf.smart.weloopx.android.services.LocationService;
import com.yf.smart.weloopx.android.ui.activities.SplashScreenActivity;
import com.yf.smart.weloopx.data.models.RemindersModel;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.p143f.ProGuard.ProGuard;
import java.util.List;

/* compiled from: ProGuard */
public class ReminderReceiver extends BroadcastReceiver implements ProGuard, ProGuard {
    boolean f7127a;
    private String f7128b;
    private NotificationManager f7129c;
    private Context f7130d;
    private String f7131e;
    private String f7132f;
    private String f7133g;
    private com.yf.smart.weloopx.data.ProGuard f7134h;
    private com.yf.gattlib.p110c.ProGuard f7135i;
    private com.yf.smart.weloopx.p143f.ProGuard f7136j;
    private com.yf.smart.weloopx.data.ProGuard f7137k;
    private final String f7138l;
    private final String f7139m;
    private final String f7140n;

    public ReminderReceiver() {
        this.f7128b = "ReminderReceiver";
        this.f7131e = "";
        this.f7132f = "";
        this.f7133g = "";
        this.f7127a = false;
        this.f7138l = "android.intent.action.BOOT_COMPLETED";
        this.f7139m = "     ";
        this.f7140n = "com.yf.smart.push.msg";
    }

    public void onReceive(Context context, Intent intent) {
        this.f7130d = context;
        m9042a(intent);
        String action = intent.getAction();
        if (action.equals("android.download.upload.locationinfo")) {
            m9045d();
        }
        if (action.equals("android.reminder.push")) {
            m9044b(intent);
        }
        if (action.equals("android.intent.action.BOOT_COMPLETED")) {
            context.startService(new Intent(context, LocationService.class));
        }
        if (action.equals("android.start.app.run.reminder")) {
            m9047f();
        }
        if (action.equals("com.yf.smart.push.msg")) {
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f7128b + " \u63a5\u6536\u5230\u53d1\u6d88\u606f\u7684\u5e7f\u64ad");
            m9048g();
        }
    }

    private void m9042a(Intent intent) {
        this.f7135i = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q();
        this.f7134h = new com.yf.smart.weloopx.data.ProGuard(this.f7130d);
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.f7133g = extras.getString("DATE");
            this.f7127a = extras.getBoolean("IS_CUR_DATE");
        }
        this.f7133g = TextUtils.isEmpty(this.f7133g) ? com.yf.gattlib.p117p.ProGuard.m8238e() : this.f7133g;
    }

    private void m9045d() {
        com.yf.gattlib.p117p.ProGuard.m8297b(this.f7128b + " \u63a5\u6536\u5230\u5e7f\u64ad\uff0c\u5f00\u59cb\u4e0b\u8f7d\u4f4d\u7f6e\u4fe1\u606fReeceiver and start download trajecty info ");
        com.yf.gattlib.p117p.ProGuard.m8245a((Object) " \u63a5\u6536\u5230\u5e7f\u64ad\uff0c\u5f00\u59cb\u4e0b\u8f7d\u4f4d\u7f6e\u4fe1\u606fReeceiver and start download trajecty info ");
        this.f7137k = new com.yf.smart.weloopx.data.ProGuard(this.f7130d);
        this.f7136j = new com.yf.smart.weloopx.p143f.ProGuard(this.f7130d);
        this.f7136j.m11200a(this, this.f7133g, this.f7127a);
    }

    private void m9046e() {
        List<String> a = this.f7137k.m11081a();
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7128b + " \u672a\u4e0a\u4f20\u8f68\u8ff9\u4fe1\u606f\u7684\u65e5\u671f\u6709: " + a.toString());
        com.yf.gattlib.p117p.ProGuard.m8245a(" \u672a\u4e0a\u4f20\u8f68\u8ff9\u4fe1\u606f\u7684\u65e5\u671f\u6709: " + a.toString());
        for (String a2 : a) {
            this.f7136j.m11201a(this, a2);
        }
    }

    private void m9044b(Intent intent) {
        int i = this.f7135i.getInt("REMINDER_NUM", 0);
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.f7132f = extras.get("NOTIFICATION_MSG").toString();
            this.f7131e = extras.get("NOTIFICATION_TIME").toString();
        }
        if (this.f7134h.m11099a(this.f7132f)) {
            this.f7129c = (NotificationManager) this.f7130d.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
            PendingIntent activity = PendingIntent.getActivity(this.f7130d, i, new Intent(this.f7130d, SplashScreenActivity.class), 134217728);
            ag.ProGuard proGuard = new ag.ProGuard(this.f7130d);
            proGuard.m156a(this.f7130d.getResources().getString(R.string.reminders)).m159b(this.f7132f + "     ").m153a((int) R.drawable.ic_launcher).m158b(-1).m155a(activity).m157a(true);
            this.f7129c.notify(i + 1, proGuard.m152a());
            this.f7135i.m7411a("REMINDER_NUM", i + 1);
            m9047f();
            return;
        }
        m9047f();
    }

    private void m9047f() {
        if (!(TextUtils.isEmpty(this.f7132f) || TextUtils.isEmpty(this.f7131e))) {
            this.f7134h.m11097a(this.f7132f, this.f7131e);
        }
        RemindersModel c = this.f7134h.m11103c();
        m9043a(c.getMsg(), c.getDateAndTime());
    }

    private void m9043a(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            long a = com.yf.gattlib.p117p.ProGuard.m8228a(str2);
            int i = this.f7135i.getInt("REMINDER_NUM", 0);
            Intent intent = new Intent("android.reminder.push");
            intent.putExtra("NOTIFICATION_MSG", str);
            intent.putExtra("NOTIFICATION_TIME", str2);
            ((AlarmManager) this.f7130d.getSystemService("alarm")).set(0, a + System.currentTimeMillis(), PendingIntent.getBroadcast(this.f7130d, i, intent, 268435456));
        }
    }

    public void m9049a() {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7128b + " \u4e0b\u8f7d\u8f68\u8ff9\u4fe1\u606fonDownloadStart");
    }

    public void m9050a(String str) {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7128b + " \u4e0b\u8f7d\u8f68\u8ff9\u4fe1\u606fonDownloadFailed");
    }

    public void m9051b() {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7128b + " \u4e0b\u8f7d\u8f68\u8ff9\u4fe1\u606fonDownloadSuccess");
        m9046e();
    }

    public void m9053c() {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7128b + " \u4e0a\u4f20\u8f68\u8ff9\u4fe1\u606fonUploadStart");
    }

    public void m9052b(String str) {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7128b + " \u4e0a\u4f20\u8f68\u8ff9\u4fe1\u606fonUploadFailed");
    }

    public void m9054c(String str) {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7128b + " \u4e0a\u4f20\u8f68\u8ff9\u4fe1\u606f\u6210\u529fonUploadSuccess ");
        com.yf.gattlib.p117p.ProGuard.m8245a((Object) " \u4e0a\u4f20\u8f68\u8ff9\u4fe1\u606f\u6210\u529fonUploadSuccess ");
        this.f7137k.m11088b(str);
    }

    private void m9048g() {
        new com.yf.smart.weloopx.data.ProGuard(this.f7130d).m11127d(com.yf.gattlib.p117p.ProGuard.m8238e());
    }
}
