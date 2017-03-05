package com.yf.smart.weloopx.android.ui.p139c;

import android.text.format.DateUtils;
import android.widget.ListView;
import com.handmark.pulltorefresh.library.ProGuard.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.bm */
class bm implements ProGuard<ListView> {
    final /* synthetic */ bl f8296a;

    bm(bl blVar) {
        this.f8296a = blVar;
    }

    public void m10309a(com.handmark.pulltorefresh.library.ProGuard<ListView> proGuard) {
        String str = this.f8296a.getActivity().getString(R.string.last_time_update_rank) + DateUtils.formatDateTime(this.f8296a.getActivity(), System.currentTimeMillis(), 524305);
        this.f8296a.f8285g.m7413a("KEY_RANK_TIME_LABEL", str);
        proGuard.getLoadingLayoutProxy().setLastUpdatedLabel(str);
        if (this.f8296a.f8282d.m6741m()) {
            this.f8296a.f8291m = true;
            this.f8296a.f8287i = 1;
        } else {
            this.f8296a.f8291m = false;
        }
        this.f8296a.m10307a(false);
    }
}
