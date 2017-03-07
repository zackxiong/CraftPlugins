package com.yf.smart.weloopx.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.update.UmengUpdateAgent;
import com.umeng.update.UpdateResponse;
import com.yf.smart.weloopx.p145g.ProGuard;

/* compiled from: ProGuard */
class dx implements OnClickListener {
    final /* synthetic */ UpdateResponse f7932a;
    final /* synthetic */ MainActivity f7933b;

    dx(MainActivity mainActivity, UpdateResponse updateResponse) {
        this.f7933b = mainActivity;
        this.f7932a = updateResponse;
    }

    public void onClick(View view) {
        ProGuard.f8971a = this.f7932a;
        String str = new String(ProGuard.f8971a.new_md5);
        ProGuard.f8971a.new_md5 = "";
        UmengUpdateAgent.ignoreUpdate(this.f7933b, ProGuard.f8971a);
        this.f7933b.f7513v.cancel();
        this.f7933b.m9473q();
    }
}
