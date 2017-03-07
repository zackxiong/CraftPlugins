package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ProGuard */
class fa implements OnClickListener {
    final /* synthetic */ el f8024a;

    fa(el elVar) {
        this.f8024a = elVar;
    }

    public void onClick(View view) {
        this.f8024a.startActivity(new Intent(this.f8024a.getActivity(), AlarmClockActivity.class));
    }
}
