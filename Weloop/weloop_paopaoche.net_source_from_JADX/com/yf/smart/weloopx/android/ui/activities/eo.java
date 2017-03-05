package com.yf.smart.weloopx.android.ui.activities;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ProGuard */
class eo implements OnClickListener {
    final /* synthetic */ AlertDialog f8006a;
    final /* synthetic */ el f8007b;

    eo(el elVar, AlertDialog alertDialog) {
        this.f8007b = elVar;
        this.f8006a = alertDialog;
    }

    public void onClick(View view) {
        this.f8006a.cancel();
        this.f8007b.f7959D.setChecked(false);
        this.f8007b.f7960E.m7414a("KEY_TRAJECTORY_SWITCH", false);
    }
}
