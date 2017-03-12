package com.baidu.frontia.module.deeplink;

import com.baidu.android.pushservice.util.C0377i;

/* renamed from: com.baidu.frontia.module.deeplink.a */
class C0415a extends Thread {
    final /* synthetic */ AccessWifi f3695a;

    C0415a(AccessWifi accessWifi) {
        this.f3695a = accessWifi;
    }

    public void run() {
        try {
            C0415a.sleep(30000);
            C0377i.m5265a(this.f3695a.mContext, true);
        } catch (Exception e) {
        }
    }
}
