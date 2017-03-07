package com.baidu.frontia.module.deeplink;

import android.util.Log;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.util.C0377i;

/* renamed from: com.baidu.frontia.module.deeplink.j */
class C0426j extends Thread {
    final /* synthetic */ ValidateWifi f3726a;

    C0426j(ValidateWifi validateWifi) {
        this.f3726a = validateWifi;
    }

    public void run() {
        try {
            C0426j.sleep(30000);
            C0377i.m5265a(this.f3726a.mContext, true);
        } catch (Exception e) {
            if (C0192a.m4341b()) {
                Log.w("ValidateWifi", " validate exception: " + e);
            }
        }
    }
}
