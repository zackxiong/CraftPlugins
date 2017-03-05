package com.baidu.android.pushservice;

/* renamed from: com.baidu.android.pushservice.v */
class C0379v implements Runnable {
    final /* synthetic */ PushSDK f3610a;

    C0379v(PushSDK pushSDK) {
        this.f3610a = pushSDK;
    }

    public void run() {
        synchronized (PushSDK.mPushConnLock) {
            if (PushSDK.mPushConnection != null) {
                PushSDK.mPushConnection.m5008b();
            }
        }
    }
}
