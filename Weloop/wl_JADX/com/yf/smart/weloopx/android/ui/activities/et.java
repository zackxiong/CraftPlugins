package com.yf.smart.weloopx.android.ui.activities;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ProGuard */
class et implements OnClickListener {
    final /* synthetic */ AlertDialog f8012a;
    final /* synthetic */ el f8013b;

    et(el elVar, AlertDialog alertDialog) {
        this.f8013b = elVar;
        this.f8012a = alertDialog;
    }

    public void onClick(View view) {
        this.f8013b.m9901t();
        this.f8013b.f7960E.m7414a("KEY_WAR_BIND_PHONE", false);
        this.f8012a.cancel();
    }
}
