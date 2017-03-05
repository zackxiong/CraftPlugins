package com.yf.smart.weloopx.android.ui.activities;

import android.widget.CompoundButton;
import com.yf.gattlib.client.p113b.an;
import com.yf.smart.weloopx.android.ui.activities.ProGuard.ProGuard;
import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class aw extends ProGuard {
    final /* synthetic */ ProGuard f7818a;

    aw(ProGuard proGuard) {
        this.f7818a = proGuard;
        super(null);
    }

    public void m9797a(CompoundButton compoundButton, boolean z) {
        if (z) {
            ah.m10190a(this.f7818a.getChildFragmentManager(), "openMotionDisplay", this.f7818a.m9825d(R.string.motionDisplay_tips), this.f7818a.m9825d(R.string.ignore), this.f7818a.m9825d(R.string.immediately_check), (int) R.layout.confirm_alert_dialog);
            return;
        }
        this.f7818a.m10024b(this.f7818a.m9825d(R.string.synchronizing));
        new an(z).m7492b(new ax(this));
    }
}
