package com.yf.smart.weloopx.android.ui.activities;

import android.widget.CompoundButton;
import com.yf.smart.weloopx.android.ui.activities.DisturbActivity.ProGuard;

/* compiled from: ProGuard */
class da extends ProGuard {
    final /* synthetic */ DisturbActivity f7891a;

    da(DisturbActivity disturbActivity) {
        this.f7891a = disturbActivity;
        super(null);
    }

    public void m9813a(CompoundButton compoundButton, boolean z) {
        this.f7891a.f7437I = true;
        this.f7891a.f7436H = z;
        if (z) {
            this.f7891a.f7448i.setVisibility(0);
            if (this.f7891a.f7438J == 0) {
                this.f7891a.f7449j.setVisibility(8);
                return;
            } else if (this.f7891a.f7438J == 1) {
                this.f7891a.f7449j.setVisibility(0);
                return;
            } else {
                return;
            }
        }
        this.f7891a.f7448i.setVisibility(8);
        this.f7891a.f7449j.setVisibility(8);
    }
}
