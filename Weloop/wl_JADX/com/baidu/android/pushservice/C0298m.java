package com.baidu.android.pushservice;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.baidu.android.pushservice.p068b.C0193a.C0195a;

/* renamed from: com.baidu.android.pushservice.m */
class C0298m implements ServiceConnection {
    final /* synthetic */ PushLightapp f3332a;

    C0298m(PushLightapp pushLightapp) {
        this.f3332a = pushLightapp;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (PushLightapp.EVER_BIND) {
            this.f3332a.mBound = true;
            this.f3332a.mIPushService = C0195a.m4429a(iBinder);
            PushLightapp.RUNNING_PUSH_VERSION = this.f3332a.getRunningServiceVersion();
            if (PushLightapp.sListener != null) {
                if (PushLightapp.sInstance != null) {
                    PushLightapp.sListener.initialComplete(PushLightapp.sInstance);
                } else if (this.f3332a.mContext != null) {
                    PushLightapp.sInstance = new PushLightapp(this.f3332a.mContext);
                    return;
                }
            }
            this.f3332a.bind_times = 0;
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        if (this.f3332a.bind_times <= 3) {
            this.f3332a.tryBindPush();
        } else {
            this.f3332a.bind_times = 0;
        }
    }
}
