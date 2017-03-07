package com.yf.smart.weloopx.android.ui.activities;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.yf.smart.weloopx.data.models.MessageNotificationModel;

/* compiled from: ProGuard */
class ef implements OnClickListener {
    final /* synthetic */ MessageNotificationModel f7942a;
    final /* synthetic */ boolean f7943b;
    final /* synthetic */ AlertDialog f7944c;
    final /* synthetic */ MessageNotification f7945d;

    ef(MessageNotification messageNotification, MessageNotificationModel messageNotificationModel, boolean z, AlertDialog alertDialog) {
        this.f7945d = messageNotification;
        this.f7942a = messageNotificationModel;
        this.f7943b = z;
        this.f7944c = alertDialog;
    }

    public void onClick(View view) {
        this.f7945d.m9499a(this.f7942a.getToUserId(), this.f7942a.getRequestUserId(), this.f7943b);
        this.f7944c.cancel();
    }
}
