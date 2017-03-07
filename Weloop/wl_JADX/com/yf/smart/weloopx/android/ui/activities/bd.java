package com.yf.smart.weloopx.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class bd implements OnClickListener {
    final /* synthetic */ ProGuard f7828a;

    bd(ProGuard proGuard) {
        this.f7828a = proGuard;
    }

    public void onClick(View view) {
        ah.m10190a(this.f7828a.getChildFragmentManager(), "disconnect", this.f7828a.m9825d(R.string.disconnect_device_msg), this.f7828a.m9825d(R.string.not_now), this.f7828a.m9825d(R.string.disconnect_binding), (int) R.layout.confirm_gray_dialog1);
    }
}
