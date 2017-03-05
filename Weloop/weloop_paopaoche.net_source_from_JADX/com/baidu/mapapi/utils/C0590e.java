package com.baidu.mapapi.utils;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.baidu.p059a.p060a.p061a.C0154b.C0156a;

/* renamed from: com.baidu.mapapi.utils.e */
final class C0590e implements ServiceConnection {
    C0590e() {
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Log.d(C0588c.f4625c, "onServiceConnected " + componentName);
        try {
            if (C0588c.f4626d != null) {
                C0588c.f4626d = null;
            }
            C0588c.f4626d = C0156a.m4139a(iBinder);
            C0588c.f4626d.m4137a(new C0591f(this));
        } catch (Throwable e) {
            Log.d(C0588c.f4625c, "getComOpenClient ", e);
            if (C0588c.f4626d != null) {
                C0588c.f4626d = null;
            }
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        Log.d(C0588c.f4625c, "onServiceDisconnected " + componentName);
        if (C0588c.f4626d != null) {
            C0588c.f4626d = null;
        }
    }
}
