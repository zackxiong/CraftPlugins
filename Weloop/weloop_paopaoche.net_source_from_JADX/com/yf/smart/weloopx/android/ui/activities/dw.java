package com.yf.smart.weloopx.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.update.UmengUpdateAgent;
import com.umeng.update.UpdateResponse;

/* compiled from: ProGuard */
class dw implements OnClickListener {
    final /* synthetic */ UpdateResponse f7930a;
    final /* synthetic */ MainActivity f7931b;

    dw(MainActivity mainActivity, UpdateResponse updateResponse) {
        this.f7931b = mainActivity;
        this.f7930a = updateResponse;
    }

    public void onClick(View view) {
        UmengUpdateAgent.startDownload(this.f7931b, this.f7930a);
        this.f7931b.f7513v.cancel();
        this.f7931b.m9473q();
    }
}
