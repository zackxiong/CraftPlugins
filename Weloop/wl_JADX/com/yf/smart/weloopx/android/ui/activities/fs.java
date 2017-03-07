package com.yf.smart.weloopx.android.ui.activities;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yf.smart.weloopx.data.models.RemindersModel;

/* compiled from: ProGuard */
class fs implements OnItemClickListener {
    final /* synthetic */ RemindersActivity f8047a;

    fs(RemindersActivity remindersActivity) {
        this.f8047a = remindersActivity;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f8047a.m9541a((RemindersModel) this.f8047a.f7556g.getItem(i));
    }
}
