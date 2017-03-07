package com.yf.smart.weloopx.android.ui.activities;

import android.widget.CompoundButton;
import com.yf.gattlib.client.p113b.ar;
import com.yf.smart.weloopx.android.ui.activities.ProGuard.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class bs extends ProGuard {
    final /* synthetic */ ProGuard f7844a;

    bs(ProGuard proGuard) {
        this.f7844a = proGuard;
        super(null);
    }

    public void m9803a(CompoundButton compoundButton, boolean z) {
        this.f7844a.f8130F;
        this.f7844a.m10024b(this.f7844a.m9825d(R.string.synchronizing));
        byte Y = z ? this.f7844a.af : (byte) 0;
        com.yf.gattlib.p117p.ProGuard.m8301c(this.f7844a.f8153e, "==" + Y + "==" + z);
        new ar(Y).m7492b(new bt(this, Y));
    }
}
