package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.client.ProGuard.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class gt implements ProGuard {
    final /* synthetic */ UpgradeActivity f8077a;

    gt(UpgradeActivity upgradeActivity) {
        this.f8077a = upgradeActivity;
    }

    public void m9945a(com.yf.gattlib.client.ProGuard proGuard, int i) {
        if (i == 5) {
            this.f8077a.f7740b.m2788a(this.f8077a.f7741c, (int) R.string.unknown_version);
            this.f8077a.m9714h();
            new com.yf.gattlib.p125j.ProGuard().m8131a(this.f8077a, new gu(this));
            proGuard.m7819b((ProGuard) this);
        }
    }
}
