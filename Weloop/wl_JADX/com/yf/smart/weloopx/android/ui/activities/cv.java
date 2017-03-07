package com.yf.smart.weloopx.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class cv implements OnClickListener {
    final /* synthetic */ DfuActivity f7884a;

    cv(DfuActivity dfuActivity) {
        this.f7884a = dfuActivity;
    }

    public void onClick(View view) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f7884a.f7425x > 500) {
            this.f7884a.f7424w = 1;
            this.f7884a.f7425x = currentTimeMillis;
            return;
        }
        this.f7884a.f7425x = currentTimeMillis;
        if (this.f7884a.f7424w < 5) {
            DfuActivity.m9364w(this.f7884a);
            return;
        }
        this.f7884a.f7424w = 0;
        View findViewById = this.f7884a.findViewById(R.id.file_picker);
        if (findViewById.getVisibility() == 0) {
            this.f7884a.f7423v.setVisibility(8);
            findViewById.setVisibility(8);
            return;
        }
        this.f7884a.f7423v.setVisibility(0);
        findViewById.setVisibility(0);
    }
}
