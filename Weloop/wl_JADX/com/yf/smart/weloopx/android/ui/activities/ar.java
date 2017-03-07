package com.yf.smart.weloopx.android.ui.activities;

import android.widget.CompoundButton;
import com.yf.gattlib.client.p113b.am;
import com.yf.smart.weloopx.android.ui.activities.ProGuard.ProGuard;
import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class ar extends ProGuard {
    final /* synthetic */ ProGuard f7809a;

    ar(ProGuard proGuard) {
        this.f7809a = proGuard;
        super(null);
    }

    public void m9793a(CompoundButton compoundButton, boolean z) {
        if (z) {
            ah.m10190a(this.f7809a.getChildFragmentManager(), "openAntLost", this.f7809a.m9825d(R.string.antlost_tips), this.f7809a.m9825d(R.string.not_now), this.f7809a.m9825d(R.string.open), (int) R.layout.confirm_alert_dialog);
            return;
        }
        this.f7809a.m10024b(this.f7809a.m9825d(R.string.synchronizing));
        new am(z).m7492b(new as(this, z));
    }
}
