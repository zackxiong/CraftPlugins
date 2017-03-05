package com.baidu.android.pushservice;

import android.content.Intent;

/* renamed from: com.baidu.android.pushservice.t */
class C0352t implements Runnable {
    final /* synthetic */ PushSDK f3484a;

    C0352t(PushSDK pushSDK) {
        this.f3484a = pushSDK;
    }

    public void run() {
        this.f3484a.handleOnStart(new Intent());
    }
}
