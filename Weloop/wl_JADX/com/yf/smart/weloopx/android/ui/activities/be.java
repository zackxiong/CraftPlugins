package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.view.View;
import com.yf.smart.weloopx.android.ui.activities.ProGuard.ProGuard;

/* compiled from: ProGuard */
class be extends ProGuard {
    final /* synthetic */ ProGuard f7829a;

    be(ProGuard proGuard) {
        this.f7829a = proGuard;
        super(null);
    }

    public void m9800a(View view) {
        this.f7829a.startActivity(new Intent(this.f7829a.getActivity(), ChoiceMediaPlayerActivity.class));
    }
}
