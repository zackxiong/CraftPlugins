package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ProGuard */
class ez implements OnClickListener {
    final /* synthetic */ el f8021a;

    ez(el elVar) {
        this.f8021a = elVar;
    }

    public void onClick(View view) {
        this.f8021a.startActivity(new Intent(this.f8021a.getActivity(), RemindersActivity.class));
    }
}
