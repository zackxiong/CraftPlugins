package com.baidu.android.pushservice;

/* renamed from: com.baidu.android.pushservice.u */
class C0353u implements Runnable {
    final /* synthetic */ PushSDK f3485a;

    C0353u(PushSDK pushSDK) {
        this.f3485a = pushSDK;
    }

    public void run() {
        this.f3485a.sendRequestTokenIntent();
    }
}
