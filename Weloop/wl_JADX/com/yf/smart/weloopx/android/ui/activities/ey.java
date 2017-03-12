package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yf.smart.weloopx.commons.WhiteListActivity;

/* compiled from: ProGuard */
class ey implements OnClickListener {
    final /* synthetic */ el f8020a;

    ey(el elVar) {
        this.f8020a = elVar;
    }

    public void onClick(View view) {
        this.f8020a.startActivity(new Intent(this.f8020a.getActivity(), WhiteListActivity.class));
    }
}
