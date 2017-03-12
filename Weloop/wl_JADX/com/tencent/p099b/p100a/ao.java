package com.tencent.p099b.p100a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* renamed from: com.tencent.b.a.ao */
final class ao extends BroadcastReceiver {
    final /* synthetic */ C0712x f5145a;

    ao(C0712x c0712x) {
        this.f5145a = c0712x;
    }

    public final void onReceive(Context context, Intent intent) {
        if (this.f5145a.f5355e != null) {
            this.f5145a.f5355e.m6952a(new C0695f(this));
        }
    }
}
