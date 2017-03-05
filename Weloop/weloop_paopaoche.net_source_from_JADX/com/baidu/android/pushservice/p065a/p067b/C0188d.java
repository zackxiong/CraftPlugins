package com.baidu.android.pushservice.p065a.p067b;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.android.pushservice.p065a.p066a.C0170a.C0168a;
import com.baidu.android.pushservice.p065a.p067b.C0187c.C0186a;
import com.baidu.android.pushservice.p071e.C0261p;
import com.baidu.android.pushservice.util.C0374f;

/* renamed from: com.baidu.android.pushservice.a.b.d */
final class C0188d implements C0168a {
    final /* synthetic */ C0181f f2930a;
    final /* synthetic */ Context f2931b;
    final /* synthetic */ String f2932c;
    final /* synthetic */ String f2933d;
    final /* synthetic */ String f2934e;

    C0188d(C0181f c0181f, Context context, String str, String str2, String str3) {
        this.f2930a = c0181f;
        this.f2931b = context;
        this.f2932c = str;
        this.f2933d = str2;
        this.f2934e = str3;
    }

    public void m4318a(Bitmap... bitmapArr) {
        Bitmap b;
        C0181f c0181f = this.f2930a;
        if (bitmapArr[2] != null || (c0181f instanceof C0191i)) {
            b = C0261p.m4799b(this.f2931b, bitmapArr[2]);
            if (c0181f instanceof C0184b) {
                ((C0184b) c0181f).m4300a(b);
            } else if (c0181f instanceof C0183a) {
                ((C0183a) c0181f).m4292a(b);
            }
        } else {
            c0181f = C0187c.m4310b(C0186a.NORMAL_BLACK_BACKGROUND, this.f2931b, this.f2932c, this.f2933d);
        }
        Bitmap a = C0261p.m4789a(this.f2931b, bitmapArr[0]);
        b = C0261p.m4800c(this.f2931b, bitmapArr[1]);
        c0181f.m4273b(a);
        c0181f.m4276c(b);
        NotificationManager notificationManager = (NotificationManager) this.f2931b.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
        Notification a2 = c0181f.m4266a();
        a2.flags |= 16;
        notificationManager.notify(this.f2934e, 0, c0181f.m4266a());
        if (C0192a.m4341b() && C0192a.f2943d >= 1 && C0192a.f2943d <= 5) {
            C0374f.m5189a("pushadvertise: mNotificationManager  show advertise notification  first ", this.f2931b);
        }
    }
}
