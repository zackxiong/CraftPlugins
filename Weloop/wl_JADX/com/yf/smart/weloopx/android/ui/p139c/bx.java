package com.yf.smart.weloopx.android.ui.p139c;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yf.smart.weloopx.data.models.RankingUser;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.bx */
class bx implements OnItemClickListener {
    final /* synthetic */ bt f8322a;

    bx(bt btVar) {
        this.f8322a = btVar;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        RankingUser rankingUser = (RankingUser) view.getTag();
        if (rankingUser != null) {
            dc.m10417a(this.f8322a.getChildFragmentManager(), rankingUser.getUserId(), 4007, false, "", false);
        }
    }
}
