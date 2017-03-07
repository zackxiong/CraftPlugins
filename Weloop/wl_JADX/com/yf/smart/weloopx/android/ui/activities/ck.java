package com.yf.smart.weloopx.android.ui.activities;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* compiled from: ProGuard */
class ck extends BroadcastReceiver {
    final /* synthetic */ DfuActivity f7872a;

    ck(DfuActivity dfuActivity) {
        this.f7872a = dfuActivity;
    }

    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
            switch (intent.getIntExtra("android.bluetooth.adapter.extra.STATE", Integer.MIN_VALUE)) {
                case ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    com.yf.gattlib.p117p.ProGuard.m8293a("DfuActivity", "Bluetooth off");
                case ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    com.yf.gattlib.p117p.ProGuard.m8293a("DfuActivity", "Turning Bluetooth on...");
                case ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    com.yf.gattlib.p117p.ProGuard.m8293a("DfuActivity", "Bluetooth on");
                case ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    com.yf.gattlib.p117p.ProGuard.m8293a("DfuActivity", "Turning Bluetooth off...");
                    this.f7872a.m9358t();
                default:
            }
        }
    }
}
