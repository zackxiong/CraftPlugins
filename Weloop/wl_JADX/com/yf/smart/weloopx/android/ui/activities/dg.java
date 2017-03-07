package com.yf.smart.weloopx.android.ui.activities;

import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
class dg implements Runnable {
    final /* synthetic */ int f7898a;
    final /* synthetic */ FriendSearchActivity f7899b;

    dg(FriendSearchActivity friendSearchActivity, int i) {
        this.f7899b = friendSearchActivity;
        this.f7898a = i;
    }

    public void run() {
        ProGuard.m8292a("FriendSearchActivity \u5c06\u8981\u663e\u793a\u7684\u6570\u636e\u7684\u5927\u5c0f  = " + this.f7899b.f7476j.size());
        this.f7899b.f7477k = new com.yf.smart.weloopx.android.ui.p144a.ProGuard(this.f7899b, this.f7899b.f7476j);
        this.f7899b.f7474h.setAdapter(this.f7899b.f7477k);
        this.f7899b.f7474h.setSelection(this.f7898a);
        this.f7899b.m9434d();
    }
}
