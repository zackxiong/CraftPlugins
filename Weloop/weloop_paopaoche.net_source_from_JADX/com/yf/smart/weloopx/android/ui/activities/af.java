package com.yf.smart.weloopx.android.ui.activities;

import android.widget.CompoundButton;
import com.yf.smart.weloopx.android.ui.activities.ProGuard.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class af extends ProGuard {
    final /* synthetic */ ProGuard f7788a;

    af(ProGuard proGuard) {
        this.f7788a = proGuard;
        super(null);
    }

    public void m9783a(CompoundButton compoundButton, boolean z) {
        com.yf.gattlib.client.ProGuard a = com.yf.gattlib.client.ProGuard.m7829a();
        this.f7788a.m10024b(this.f7788a.m9825d(R.string.synchronizing));
        this.f7788a.f8129E.m10890a(a.m7868k());
        this.f7788a.f8129E.m10893a(z);
        this.f7788a.f8129E.m10892a(new ag(this, a, z));
    }
}
