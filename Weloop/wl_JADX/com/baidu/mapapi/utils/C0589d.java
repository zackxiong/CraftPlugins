package com.baidu.mapapi.utils;

import android.os.IBinder;
import android.util.Log;
import com.baidu.p059a.p060a.p061a.C0151a.C0153a;
import com.baidu.p059a.p060a.p061a.C0157c.C0159a;

/* renamed from: com.baidu.mapapi.utils.d */
final class C0589d extends C0159a {
    final /* synthetic */ int f4641a;

    C0589d(int i) {
        this.f4641a = i;
    }

    public void m6405a(IBinder iBinder) {
        Log.d(C0588c.f4625c, "onClientReady");
        if (C0588c.f4627e != null) {
            C0588c.f4627e = null;
        }
        C0588c.f4627e = C0153a.m4136a(iBinder);
        C0588c.m6389a(this.f4641a);
        C0588c.f4639q = true;
    }
}
