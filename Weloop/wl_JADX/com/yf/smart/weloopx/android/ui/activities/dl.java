package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import com.yf.gattlib.p118d.ProGuard.ProGuard;

/* compiled from: ProGuard */
class dl implements ProGuard {
    final /* synthetic */ MainActivity f7916a;

    dl(MainActivity mainActivity) {
        this.f7916a = mainActivity;
    }

    public void m9831a(String str, boolean z) {
        if (!z) {
            this.f7916a.m9477u();
        }
    }

    public void m9830a() {
        this.f7916a.m9465l();
        if (this.f7916a.m9482z() && com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10730i()) {
            this.f7916a.startActivity(new Intent(this.f7916a, FirstGuideActivity.class));
            com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().m7414a("FIRST_GUIDE", false);
        }
    }
}
