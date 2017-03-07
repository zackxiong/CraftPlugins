package com.yf.smart.weloopx.android.ui.p139c;

import android.text.TextUtils;
import android.widget.ListView;
import com.handmark.pulltorefresh.library.ProGuard.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.bc */
class bc implements ProGuard<ListView> {
    final /* synthetic */ ba f8260a;

    bc(ba baVar) {
        this.f8260a = baVar;
    }

    public void m10275a(com.handmark.pulltorefresh.library.ProGuard<ListView> proGuard) {
        this.f8260a.m10256d();
        if (!TextUtils.isEmpty(this.f8260a.f8254v)) {
            this.f8260a.f8253u = this.f8260a.f8254v;
        }
        CharSequence d = this.f8260a.m10257e();
        this.f8260a.f8254v = d;
        if (!TextUtils.isEmpty(d)) {
            proGuard.getLoadingLayoutProxy().setRefreshingLabel(this.f8260a.m9825d(R.string.pull_to_refresh_refreshing_label) + "\n" + this.f8260a.f8253u);
            this.f8260a.f8233a.getLoadingLayoutProxy().setLastUpdatedLabel("");
        }
        this.f8260a.m10264h();
    }
}
