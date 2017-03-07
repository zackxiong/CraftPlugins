package com.yf.smart.weloopx.android.ui.activities;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ProGuard */
class eg implements OnClickListener {
    final /* synthetic */ AlertDialog f7946a;
    final /* synthetic */ MessageNotification f7947b;

    eg(MessageNotification messageNotification, AlertDialog alertDialog) {
        this.f7947b = messageNotification;
        this.f7946a = alertDialog;
    }

    public void onClick(View view) {
        this.f7946a.cancel();
    }
}
