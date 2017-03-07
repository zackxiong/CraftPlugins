package com.yf.smart.weloopx.android.ui.activities;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.yf.gattlib.client.dfu.DFUService.ProGuard;

/* compiled from: ProGuard */
class ce implements ServiceConnection {
    final /* synthetic */ DfuActivity f7865a;

    ce(DfuActivity dfuActivity) {
        this.f7865a = dfuActivity;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f7865a.f7413l = ((ProGuard) iBinder).m7883a();
        this.f7865a.f7413l.m7931a(this.f7865a);
    }

    public void onServiceDisconnected(ComponentName componentName) {
        this.f7865a.f7413l = null;
    }
}
