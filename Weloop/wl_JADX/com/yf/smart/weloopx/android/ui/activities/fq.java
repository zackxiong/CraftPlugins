package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ProGuard */
class fq implements OnClickListener {
    final /* synthetic */ fp f8045a;

    fq(fp fpVar) {
        this.f8045a = fpVar;
    }

    public void onClick(View view) {
        this.f8045a.getActivity().startActivity(new Intent(this.f8045a.getActivity(), FriendSearchActivity.class));
    }
}
