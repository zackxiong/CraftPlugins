package com.baidu.android.pushservice;

/* renamed from: com.baidu.android.pushservice.l */
class C0297l extends Thread {
    final /* synthetic */ PushLightapp f3331a;

    C0297l(PushLightapp pushLightapp) {
        this.f3331a = pushLightapp;
    }

    public void run() {
        try {
            C0297l.sleep((long) PushLightapp.BIND_TIME_OUT);
            if (PushLightapp.EVER_BIND && !this.f3331a.mBound) {
                this.f3331a.unbindService();
            }
        } catch (Exception e) {
        }
    }
}
