package com.baidu.android.pushservice.richmedia;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import com.baidu.android.pushservice.util.PushDatabase;
import com.baidu.android.pushservice.util.PushDatabase.C0360g;
import java.io.File;

/* renamed from: com.baidu.android.pushservice.richmedia.h */
class C0340h implements C0166q {
    final /* synthetic */ MediaListActivity f3450a;

    C0340h(MediaListActivity mediaListActivity) {
        this.f3450a = mediaListActivity;
    }

    public void m5130a(C0334b c0334b) {
    }

    public void m5131a(C0334b c0334b, C0345m c0345m) {
        Object d = c0334b.f3441d.m5144d();
        if (c0345m.f3457a != c0345m.f3458b && this.f3450a.f3422m != null) {
            int i = (int) ((((double) c0345m.f3457a) * 100.0d) / ((double) c0345m.f3458b));
            this.f3450a.f3422m.setTextViewText(this.f3450a.f3424o, i + "%");
            this.f3450a.f3422m.setTextViewText(this.f3450a.f3425p, d);
            this.f3450a.f3422m.setProgressBar(this.f3450a.f3423n, 100, i, false);
            this.f3450a.f3422m.setImageViewResource(this.f3450a.f3426q, 17301633);
            Notification notification = new Notification(17301633, null, System.currentTimeMillis());
            notification.contentView = this.f3450a.f3422m;
            notification.contentIntent = PendingIntent.getActivity(this.f3450a, 0, new Intent(), 0);
            notification.flags |= 32;
            notification.flags |= 2;
            this.f3450a.f3411b.notify(d, 0, notification);
        }
    }

    public void m5132a(C0334b c0334b, C0350p c0350p) {
        String d = c0334b.f3441d.m5144d();
        this.f3450a.f3411b.cancel(d, 0);
        C0360g fileDownloadingInfo = PushDatabase.getFileDownloadingInfo(this.f3450a, d);
        if (fileDownloadingInfo != null && fileDownloadingInfo.f3544i == C0334b.f3436f) {
            String str = fileDownloadingInfo.f3540e;
            d = fileDownloadingInfo.f3541f;
            if (d.length() > 0) {
                d = str + "/" + d.substring(0, d.lastIndexOf(".")) + "/index.html";
                Intent intent = new Intent();
                intent.setClass(this.f3450a, MediaViewActivity.class);
                intent.setData(Uri.fromFile(new File(d)));
                intent.addFlags(268435456);
                this.f3450a.startActivity(intent);
            }
        }
    }

    public void m5133a(C0334b c0334b, Throwable th) {
        this.f3450a.f3411b.cancel(c0334b.f3441d.m5144d(), 0);
        this.f3450a.runOnUiThread(new C0341i(this));
    }

    public void m5134b(C0334b c0334b) {
        this.f3450a.f3411b.cancel(c0334b.f3441d.m5144d(), 0);
    }
}
