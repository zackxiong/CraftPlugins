package com.baidu.android.pushservice;

import com.baidu.android.pushservice.util.C0374f;

/* renamed from: com.baidu.android.pushservice.w */
class C0380w implements Runnable {
    final /* synthetic */ PushService f3611a;

    C0380w(PushService pushService) {
        this.f3611a = pushService;
    }

    public void run() {
        int i = 1;
        this.f3611a.stopSelf();
        PushSDK.destroy();
        int i2 = this.f3611a.bindCnt > 0 ? 1 : 0;
        if (this.f3611a.getPackageName().equals(C0374f.m5170B(this.f3611a.getApplicationContext()))) {
            i = 0;
        }
        if ((i2 & i) != 0) {
            this.f3611a.onDestroy();
        }
    }
}
