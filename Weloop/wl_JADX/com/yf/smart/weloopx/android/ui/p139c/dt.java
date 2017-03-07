package com.yf.smart.weloopx.android.ui.p139c;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yf.smart.weloopx.data.models.Watchface;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.dt */
class dt implements OnItemClickListener {
    final /* synthetic */ dr f8457a;

    dt(dr drVar) {
        this.f8457a = drVar;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        dm.m10462a(this.f8457a.getChildFragmentManager(), (Watchface) view.getTag());
    }
}
