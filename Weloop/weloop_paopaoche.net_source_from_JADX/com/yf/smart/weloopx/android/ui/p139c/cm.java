package com.yf.smart.weloopx.android.ui.p139c;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.cm */
class cm implements OnItemClickListener {
    final /* synthetic */ ck f8354a;

    cm(ck ckVar) {
        this.f8354a = ckVar;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.f8354a.f8337c != i) {
            this.f8354a.onItemClick(adapterView, view, i, j);
        }
    }
}
