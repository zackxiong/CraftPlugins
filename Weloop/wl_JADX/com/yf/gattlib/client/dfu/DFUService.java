package com.yf.gattlib.client.dfu;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;

/* compiled from: ProGuard */
public class DFUService extends Service {
    private final IBinder f6057a;

    /* renamed from: com.yf.gattlib.client.dfu.DFUService.a */
    public class ProGuard extends Binder {
        final /* synthetic */ DFUService f6056a;

        public ProGuard(DFUService dFUService) {
            this.f6056a = dFUService;
        }

        public ProGuard m7883a() {
            return ProGuard.m7888a();
        }
    }

    public DFUService() {
        this.f6057a = new ProGuard(this);
    }

    public void onCreate() {
        super.onCreate();
    }

    public IBinder onBind(Intent intent) {
        return this.f6057a;
    }

    public boolean onUnbind(Intent intent) {
        ProGuard.m7888a().m7937f();
        return super.onUnbind(intent);
    }
}
