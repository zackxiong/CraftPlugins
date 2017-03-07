package com.yf.smart.weloopx.android.ui.activities;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

/* compiled from: ProGuard */
class fe implements OnCheckedChangeListener {
    final /* synthetic */ el f8028a;

    fe(el elVar) {
        this.f8028a = elVar;
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            this.f8028a.m9889l();
        } else {
            this.f8028a.f7960E.m7414a("KEY_TRAJECTORY_SWITCH", false);
        }
    }
}
