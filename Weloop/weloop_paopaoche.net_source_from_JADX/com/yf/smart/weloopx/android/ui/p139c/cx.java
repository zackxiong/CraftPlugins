package com.yf.smart.weloopx.android.ui.p139c;

import android.text.TextUtils;
import com.yf.gattlib.p117p.ProGuard;
import com.yf.smart.weloopx.event.SyncDataExitEvent;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.cx */
class cx implements Runnable {
    final /* synthetic */ SyncDataExitEvent f8389a;
    final /* synthetic */ cw f8390b;

    cx(cw cwVar, SyncDataExitEvent syncDataExitEvent) {
        this.f8390b = cwVar;
        this.f8389a = syncDataExitEvent;
    }

    public void run() {
        String c = this.f8390b.m10172c(this.f8389a.titleId);
        if (this.f8389a.index != 0) {
            Object obj;
            if (TextUtils.isEmpty(this.f8389a.msg)) {
                String str = c;
            } else {
                obj = c + "\n" + this.f8389a.msg;
            }
            if (!TextUtils.isEmpty(obj)) {
                this.f8390b.a_(obj);
            }
            ProGuard.m8298b("SyncDataFragment", obj);
            ProGuard.m8245a(obj);
        }
        if (this.f8390b.f8387b != null) {
            this.f8390b.f8387b.m10245a(this.f8389a.index, c);
        }
        this.f8390b.m10167b();
    }
}
