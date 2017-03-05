package com.yf.smart.weloopx.android.ui.activities;

import android.view.View;
import com.yf.smart.weloopx.android.ui.activities.ProGuard.ProGuard;
import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class bf extends ProGuard {
    final /* synthetic */ ProGuard f7830a;

    bf(ProGuard proGuard) {
        this.f7830a = proGuard;
        super(null);
    }

    public void m9801a(View view) {
        ah.m10190a(this.f7830a.getChildFragmentManager(), "recover", this.f7830a.m9825d(R.string.recover_remand_msg), this.f7830a.m9825d(R.string.not_now), this.f7830a.m9825d(R.string.recover_short), (int) R.layout.confirm_gray_dialog1);
    }
}
