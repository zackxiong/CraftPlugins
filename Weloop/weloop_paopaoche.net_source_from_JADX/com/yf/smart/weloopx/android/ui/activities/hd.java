package com.yf.smart.weloopx.android.ui.activities;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ProGuard */
class hd implements OnClickListener {
    final /* synthetic */ int f8090a;
    final /* synthetic */ AlertDialog f8091b;
    final /* synthetic */ UploadLogActivity f8092c;

    hd(UploadLogActivity uploadLogActivity, int i, AlertDialog alertDialog) {
        this.f8092c = uploadLogActivity;
        this.f8090a = i;
        this.f8091b = alertDialog;
    }

    public void onClick(View view) {
        this.f8092c.m9757a(this.f8090a);
        this.f8091b.cancel();
    }
}
