package com.yf.smart.weloopx.android.ui.p139c;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yf.smart.weloopx.android.ui.activities.DfuActivity;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.ar */
class ar implements OnClickListener {
    final /* synthetic */ aq f8222a;

    ar(aq aqVar) {
        this.f8222a = aqVar;
    }

    public void onClick(View view) {
        this.f8222a.startActivity(new Intent(this.f8222a.getActivity(), DfuActivity.class));
        this.f8222a.m10167b();
    }
}
