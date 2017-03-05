package com.baidu.mapapi.utils;

import android.os.IBinder;
import android.util.Log;
import com.baidu.p059a.p060a.p061a.C0151a.C0153a;
import com.baidu.p059a.p060a.p061a.C0157c.C0159a;

/* renamed from: com.baidu.mapapi.utils.f */
class C0591f extends C0159a {
    final /* synthetic */ C0590e f4642a;

    C0591f(C0590e c0590e) {
        this.f4642a = c0590e;
    }

    public void m6406a(IBinder iBinder) {
        Log.d(C0588c.f4625c, "onClientReady");
        if (C0588c.f4627e != null) {
            C0588c.f4627e = null;
        }
        C0588c.f4627e = C0153a.m4136a(iBinder);
        if (!C0588c.f4639q) {
            C0588c.m6389a(C0588c.f4623a);
        }
        C0588c.f4639q = true;
    }
}
