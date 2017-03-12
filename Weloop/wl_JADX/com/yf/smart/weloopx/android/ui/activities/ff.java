package com.yf.smart.weloopx.android.ui.activities;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ProGuard */
class ff implements OnClickListener {
    final /* synthetic */ AlertDialog f8029a;
    final /* synthetic */ el f8030b;

    ff(el elVar, AlertDialog alertDialog) {
        this.f8030b = elVar;
        this.f8029a = alertDialog;
    }

    public void onClick(View view) {
        this.f8029a.cancel();
        this.f8030b.f7960E.m7414a("KEY_TRAJECTORY_SWITCH", true);
    }
}
