package com.yf.smart.weloopx.android.ui.activities;

import android.widget.CompoundButton;
import com.yf.smart.weloopx.android.ui.activities.ProGuard.ProGuard;
import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class ao extends ProGuard {
    final /* synthetic */ ProGuard f7801a;

    ao(ProGuard proGuard) {
        this.f7801a = proGuard;
        super(null);
    }

    public void m9791a(CompoundButton compoundButton, boolean z) {
        if (z) {
            ah.m10190a(this.f7801a.getChildFragmentManager(), "openMotionDisplayTommy2", this.f7801a.m9825d(R.string.motionDisplay_tips), this.f7801a.m9825d(R.string.ignore), this.f7801a.m9825d(R.string.immediately_check), (int) R.layout.confirm_alert_dialog);
            return;
        }
        this.f7801a.m10024b(this.f7801a.m9825d(R.string.synchronizing));
        this.f7801a.m10014a(z);
    }
}
