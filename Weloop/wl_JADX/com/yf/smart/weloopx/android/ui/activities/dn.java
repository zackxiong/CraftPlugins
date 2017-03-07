package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.p117p.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class dn implements Runnable {
    final /* synthetic */ MainActivity f7918a;

    dn(MainActivity mainActivity) {
        this.f7918a = mainActivity;
    }

    public void run() {
        int i;
        ProGuard.m8293a("MainActivity", "1. changeDeviceResource");
        this.f7918a.m9480x();
        Object obj = (com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10730i() && this.f7918a.f7506o.m2794d()) ? 1 : null;
        boolean i2 = com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10730i();
        switch (this.f7918a.f7517z) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                if (obj == null) {
                    i = R.drawable.icon_watch_normal;
                    break;
                } else {
                    i = R.drawable.icon_watch_new_version;
                    break;
                }
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                if (obj == null) {
                    i = R.drawable.icon_now_normal;
                    break;
                } else {
                    i = R.drawable.icon_now_new_version;
                    break;
                }
            default:
                i = R.drawable.icon_me;
                break;
        }
        if (!i2) {
            i = R.drawable.icon_me;
        }
        ProGuard.m8293a("MainActivity", "setCompoundDrawablesWithIntrinsicBounds");
        this.f7918a.f7496C.setCompoundDrawablesWithIntrinsicBounds(null, this.f7918a.getResources().getDrawable(i), null, null);
    }
}
