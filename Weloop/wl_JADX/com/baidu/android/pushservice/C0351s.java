package com.baidu.android.pushservice;

import android.content.Context;

/* renamed from: com.baidu.android.pushservice.s */
final class C0351s implements Runnable {
    final /* synthetic */ int f3481a;
    final /* synthetic */ Context f3482b;
    final /* synthetic */ String f3483c;

    C0351s(int i, Context context, String str) {
        this.f3481a = i;
        this.f3482b = context;
        this.f3483c = str;
    }

    public void run() {
        if (this.f3481a == 4) {
            PushManager.lightAppBind(this.f3482b, 0, this.f3483c);
        } else if (this.f3481a == 3) {
            PushManager.webAppBind(this.f3482b, 0, this.f3483c);
        } else {
            PushManager.bind(this.f3482b, 0);
        }
    }
}
