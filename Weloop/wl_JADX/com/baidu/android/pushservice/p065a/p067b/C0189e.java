package com.baidu.android.pushservice.p065a.p067b;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.android.pushservice.p065a.p066a.C0170a.C0168a;
import com.baidu.android.pushservice.p071e.C0261p;
import com.baidu.android.pushservice.util.C0374f;

/* renamed from: com.baidu.android.pushservice.a.b.e */
final class C0189e implements C0168a {
    final /* synthetic */ Context f2935a;
    final /* synthetic */ C0181f f2936b;
    final /* synthetic */ String f2937c;

    C0189e(Context context, C0181f c0181f, String str) {
        this.f2935a = context;
        this.f2936b = c0181f;
        this.f2937c = str;
    }

    public void m4319a(Bitmap... bitmapArr) {
        Bitmap a = C0261p.m4789a(this.f2935a, bitmapArr[0]);
        Bitmap c = C0261p.m4800c(this.f2935a, bitmapArr[1]);
        this.f2936b.m4273b(a);
        this.f2936b.m4276c(c);
        NotificationManager notificationManager = (NotificationManager) this.f2935a.getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
        Notification a2 = this.f2936b.m4266a();
        a2.flags |= 16;
        notificationManager.notify(this.f2937c, 0, this.f2936b.m4266a());
        if (C0192a.m4341b() && C0192a.f2943d >= 1 && C0192a.f2943d <= 5) {
            C0374f.m5189a("pushadvertise: mNotificationManager  show advertise notification  second", this.f2935a);
        }
    }
}
