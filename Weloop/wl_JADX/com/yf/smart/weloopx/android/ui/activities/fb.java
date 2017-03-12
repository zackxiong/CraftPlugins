package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ProGuard */
class fb implements OnClickListener {
    final /* synthetic */ el f8025a;

    fb(el elVar) {
        this.f8025a = elVar;
    }

    public void onClick(View view) {
        this.f8025a.startActivity(new Intent(this.f8025a.getActivity(), DisturbActivity.class));
    }
}
