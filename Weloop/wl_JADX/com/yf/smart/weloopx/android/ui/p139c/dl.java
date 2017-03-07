package com.yf.smart.weloopx.android.ui.p139c;

import android.content.Intent;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.dl */
class dl implements Runnable {
    final /* synthetic */ dj f8441a;

    dl(dj djVar) {
        this.f8441a = djVar;
    }

    public void run() {
        this.f8441a.f8439b.f8412f.setText(this.f8441a.f8439b.m10172c(R.string.deleted));
        this.f8441a.f8439b.f8412f.setClickable(false);
        Intent intent = new Intent(bl.f8279a);
        if (this.f8441a.f8439b.isAdded()) {
            this.f8441a.f8439b.getActivity().sendBroadcast(intent);
        }
    }
}
