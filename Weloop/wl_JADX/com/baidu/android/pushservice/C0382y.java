package com.baidu.android.pushservice;

import android.content.Context;
import android.content.Intent;
import com.baidu.android.pushservice.util.C0374f;

/* renamed from: com.baidu.android.pushservice.y */
final class C0382y implements Runnable {
    final /* synthetic */ Context f3613a;

    C0382y(Context context) {
        this.f3613a = context;
    }

    public void run() {
        String B = C0374f.m5170B(this.f3613a);
        if (C0374f.m5242r(this.f3613a) && this.f3613a.getPackageName().equals(B)) {
            C0192a.m4337a(this.f3613a, new Intent(PushService.ACTION_START));
        }
    }
}
