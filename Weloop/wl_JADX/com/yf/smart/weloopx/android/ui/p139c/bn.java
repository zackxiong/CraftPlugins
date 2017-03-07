package com.yf.smart.weloopx.android.ui.p139c;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yf.smart.weloopx.data.models.Friendmodel;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.bn */
class bn implements OnItemClickListener {
    final /* synthetic */ bl f8297a;

    bn(bl blVar) {
        this.f8297a = blVar;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        try {
            dc.m10417a(this.f8297a.getChildFragmentManager(), Integer.parseInt(((Friendmodel) this.f8297a.f8284f.getItem(i - 1)).getUserId()), 4007, false, this.f8297a.f8292n, true);
        } catch (Exception e) {
        }
    }
}
