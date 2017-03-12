package com.baidu.android.pushservice;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

final class aa extends Thread {
    final /* synthetic */ Context f2944a;
    final /* synthetic */ SharedPreferences f2945b;

    aa(Context context, SharedPreferences sharedPreferences) {
        this.f2944a = context;
        this.f2945b = sharedPreferences;
    }

    public void run() {
        boolean a = C0383z.m5299b(this.f2944a.getApplicationContext(), C0383z.f3625l, ".baidu.push.sa");
        boolean a2 = C0383z.m5299b(this.f2944a.getApplicationContext(), C0383z.f3623j, ".baidu.push.http");
        if (a && a2) {
            Editor edit = this.f2945b.edit();
            edit.putLong(".baidu.push.dns.refresh", System.currentTimeMillis());
            edit.commit();
        }
    }
}
