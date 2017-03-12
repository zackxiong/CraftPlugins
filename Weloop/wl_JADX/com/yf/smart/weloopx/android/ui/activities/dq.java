package com.yf.smart.weloopx.android.ui.activities;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ProGuard */
class dq implements OnClickListener {
    final /* synthetic */ AlertDialog f7921a;
    final /* synthetic */ MainActivity f7922b;

    dq(MainActivity mainActivity, AlertDialog alertDialog) {
        this.f7922b = mainActivity;
        this.f7921a = alertDialog;
    }

    public void onClick(View view) {
        this.f7921a.cancel();
    }
}
