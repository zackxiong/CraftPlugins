package com.yf.smart.weloopx.android.ui.activities;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ProGuard */
class he implements OnClickListener {
    final /* synthetic */ AlertDialog f8093a;
    final /* synthetic */ UploadLogActivity f8094b;

    he(UploadLogActivity uploadLogActivity, AlertDialog alertDialog) {
        this.f8094b = uploadLogActivity;
        this.f8093a = alertDialog;
    }

    public void onClick(View view) {
        this.f8093a.cancel();
    }
}
