package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yf.smart.weloopx.activitys.TargetSetting;

/* compiled from: ProGuard */
class fd implements OnClickListener {
    final /* synthetic */ el f8027a;

    fd(el elVar) {
        this.f8027a = elVar;
    }

    public void onClick(View view) {
        this.f8027a.startActivity(new Intent(this.f8027a.getActivity(), TargetSetting.class));
    }
}
