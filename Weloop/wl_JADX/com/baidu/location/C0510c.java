package com.baidu.location;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;

/* renamed from: com.baidu.location.c */
class C0510c implements ServiceConnection {
    final /* synthetic */ LocationClient f4039a;

    C0510c(LocationClient locationClient) {
        this.f4039a = locationClient;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f4039a.j4 = new Messenger(iBinder);
        if (this.f4039a.j4 != null) {
            this.f4039a.kc = true;
            Log.d("baidu_location_client", "baidu location connected ...");
            if (this.f4039a.ko) {
                this.f4039a.jF.obtainMessage(2).sendToTarget();
                return;
            }
            try {
                Message obtain = Message.obtain(null, 11);
                obtain.replyTo = this.f4039a.j1;
                obtain.setData(this.f4039a.c0());
                this.f4039a.j4.send(obtain);
                this.f4039a.kc = true;
                if (this.f4039a.j6 != null) {
                    if (this.f4039a.j9.booleanValue()) {
                        this.f4039a.jF.obtainMessage(4).sendToTarget();
                    } else {
                        this.f4039a.jF.obtainMessage(4).sendToTarget();
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        this.f4039a.j4 = null;
        this.f4039a.kc = false;
    }
}
