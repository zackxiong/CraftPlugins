package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ProGuard */
class bv implements OnClickListener {
    final /* synthetic */ ProGuard f7850a;

    bv(ProGuard proGuard) {
        this.f7850a = proGuard;
    }

    public void onClick(View view) {
        this.f7850a.startActivity(new Intent("android.settings.BLUETOOTH_SETTINGS"));
    }
}
