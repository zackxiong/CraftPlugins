package com.yf.smart.weloopx.android.ui.p139c;

import android.text.format.DateUtils;
import android.widget.ListView;
import com.handmark.pulltorefresh.library.ProGuard.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.bw */
class bw implements ProGuard<ListView> {
    final /* synthetic */ bt f8321a;

    bw(bt btVar) {
        this.f8321a = btVar;
    }

    public void m10338a(com.handmark.pulltorefresh.library.ProGuard<ListView> proGuard) {
        String str = this.f8321a.m9825d(R.string.last_time_update_rank) + DateUtils.formatDateTime(this.f8321a.getActivity(), System.currentTimeMillis(), 524305);
        this.f8321a.f8317j.m7413a("KEY_RANK_TIME_LABEL", str);
        proGuard.getLoadingLayoutProxy().setLastUpdatedLabel(str);
        this.f8321a.m10330f();
    }
}
