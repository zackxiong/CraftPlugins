package com.baidu.location;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;

/* renamed from: com.baidu.location.b */
class C0509b implements ServiceConnection {
    final /* synthetic */ GeofenceClient f4038a;

    C0509b(GeofenceClient geofenceClient) {
        this.f4038a = geofenceClient;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f4038a.bn = new Messenger(iBinder);
        if (this.f4038a.bn != null) {
            this.f4038a.bo = true;
            this.f4038a.startGeofenceScann();
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        this.f4038a.bn = null;
        this.f4038a.bo = false;
    }
}
