package com.yf.smart.weloopx.android.ui.p139c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.bs */
class bs extends BroadcastReceiver {
    final /* synthetic */ bl f8304a;

    bs(bl blVar) {
        this.f8304a = blVar;
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (this.f8304a.isAdded() && bl.f8279a.equals(action)) {
            ProGuard.m8292a(bl.f8281c + " \u63a5\u6536\u5230\u5220\u9664\u597d\u53cb\u7684\u5e7f\u64ad\uff0c\u66f4\u65b0\u597d\u53cb");
            this.f8304a.m10307a(true);
        }
    }
}
