package com.yf.smart.weloopx.android.ui.p139c;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yf.smart.weloopx.android.ui.activities.UpgradeActivity;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.at */
class at implements OnClickListener {
    final /* synthetic */ as f8224a;

    at(as asVar) {
        this.f8224a = asVar;
    }

    public void onClick(View view) {
        if (as.f8223b) {
            this.f8224a.startActivity(new Intent(this.f8224a.getActivity(), UpgradeActivity.class));
        }
        this.f8224a.m10167b();
    }
}
