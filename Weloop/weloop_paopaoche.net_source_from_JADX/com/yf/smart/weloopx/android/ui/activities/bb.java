package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.view.View;
import com.yf.smart.weloopx.android.ui.activities.ProGuard.ProGuard;

/* compiled from: ProGuard */
class bb extends ProGuard {
    final /* synthetic */ ProGuard f7826a;

    bb(ProGuard proGuard) {
        this.f7826a = proGuard;
        super(null);
    }

    public void m9799a(View view) {
        this.f7826a.startActivity(new Intent(this.f7826a.getActivity(), UpgradeActivity.class));
    }
}
