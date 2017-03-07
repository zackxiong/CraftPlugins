package com.yf.smart.weloopx.android.ui.p139c;

import com.yf.smart.weloopx.data.models.WatchfaceListResult;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.du */
class du implements Runnable {
    final /* synthetic */ WatchfaceListResult f8458a;
    final /* synthetic */ dr f8459b;

    du(dr drVar, WatchfaceListResult watchfaceListResult) {
        this.f8459b = drVar;
        this.f8458a = watchfaceListResult;
    }

    public void run() {
        this.f8459b.f8455e.clear();
        this.f8459b.f8455e.addAll(this.f8458a.getDataList());
        this.f8459b.f8453c.notifyDataSetChanged();
    }
}
