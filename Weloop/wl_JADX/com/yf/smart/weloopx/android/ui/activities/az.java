package com.yf.smart.weloopx.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yf.smart.weloopx.android.ui.p139c.cc;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class az implements OnClickListener {
    final /* synthetic */ ProGuard f7823a;

    az(ProGuard proGuard) {
        this.f7823a = proGuard;
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.rl_vertical_srceen:
                this.f7823a.m10074k();
            case R.id.vertical_screen_mode_up:
                cc.m10353a(this.f7823a.getChildFragmentManager(), (byte) 1);
                this.f7823a.f8130F.m7845a(20, new Object[0]);
            case R.id.vertical_screen_mode_down:
                cc.m10353a(this.f7823a.getChildFragmentManager(), (byte) 2);
                this.f7823a.f8130F.m7845a(20, new Object[0]);
            default:
        }
    }
}
