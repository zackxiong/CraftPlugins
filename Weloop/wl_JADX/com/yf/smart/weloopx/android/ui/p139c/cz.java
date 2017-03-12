package com.yf.smart.weloopx.android.ui.p139c;

import android.text.TextUtils;
import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.cz */
class cz implements Runnable {
    final /* synthetic */ int f8392a;
    final /* synthetic */ String f8393b;
    final /* synthetic */ String f8394c;
    final /* synthetic */ cw f8395d;

    cz(cw cwVar, int i, String str, String str2) {
        this.f8395d = cwVar;
        this.f8392a = i;
        this.f8393b = str;
        this.f8394c = str2;
    }

    public void run() {
        if (this.f8392a != 0) {
            Object obj = this.f8393b;
            if (!TextUtils.isEmpty(this.f8394c)) {
                obj = obj + "\n" + this.f8394c;
            }
            if (!TextUtils.isEmpty(obj)) {
                this.f8395d.a_(obj);
            }
            ProGuard.m8298b("SyncDataFragment", obj);
            ProGuard.m8245a(obj);
        }
        if (this.f8395d.f8387b != null) {
            this.f8395d.f8387b.m10245a(this.f8392a, this.f8393b);
        }
        this.f8395d.m10167b();
    }
}
