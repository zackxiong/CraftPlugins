package com.yf.smart.weloopx.android.ui.activities;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
class dk extends BroadcastReceiver {
    final /* synthetic */ di f7915a;

    dk(di diVar) {
        this.f7915a = diVar;
    }

    public void onReceive(Context context, Intent intent) {
        CharSequence action = intent.getAction();
        ProGuard.m8292a("GoalFragment +++++++++\u76ee\u6807\u754c\u9762\u7684\u63a5\u6536\u5230\u7684action = " + action);
        if (!TextUtils.isEmpty(action) && "com.yf.weloopx.runtrain.new".equals(action)) {
            this.f7915a.f7906d.setVisibility(0);
            com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().m7414a("KEY_IS_HAVE_NEW_RUNNING_TRAIN", true);
        }
    }
}
