package com.yf.smart.weloopx.android.ui.activities;

import android.text.format.DateUtils;
import android.widget.ScrollView;
import com.handmark.pulltorefresh.library.ProGuard.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class em implements ProGuard<ScrollView> {
    final /* synthetic */ el f8004a;

    em(el elVar) {
        this.f8004a = elVar;
    }

    public void m9905a(com.handmark.pulltorefresh.library.ProGuard<ScrollView> proGuard) {
        String str = this.f8004a.getActivity().getString(R.string.last_time_update_rank) + DateUtils.formatDateTime(this.f8004a.getActivity(), System.currentTimeMillis(), 524305);
        this.f8004a.f7960E.m7413a("KEY_USER_TIME_LABEL", str);
        proGuard.getLoadingLayoutProxy().setLastUpdatedLabel(str);
        try {
            if (!(this.f8004a.f7958C == null || this.f8004a.f7957B.m11306a(this.f8004a.f7958C))) {
                this.f8004a.m9821a(new en(this));
                if (this.f8004a.isAdded()) {
                    this.f8004a.m9822a(this.f8004a.getString(R.string.net_unuse));
                    return;
                }
                return;
            }
        } catch (Exception e) {
        }
        this.f8004a.m9892n();
    }
}
