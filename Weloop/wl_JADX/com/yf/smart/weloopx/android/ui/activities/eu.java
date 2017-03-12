package com.yf.smart.weloopx.android.ui.activities;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ProGuard */
class eu implements OnClickListener {
    final /* synthetic */ AlertDialog f8014a;
    final /* synthetic */ el f8015b;

    eu(el elVar, AlertDialog alertDialog) {
        this.f8015b = elVar;
        this.f8014a = alertDialog;
    }

    public void onClick(View view) {
        this.f8015b.f7960E.m7414a("KEY_WAR_BIND_PHONE", false);
        this.f8014a.cancel();
    }
}
