package com.yf.smart.weloopx.android.ui.activities;

import com.yf.smart.weloopx.data.models.MsgNotiNumServerResult;

/* compiled from: ProGuard */
class ew implements Runnable {
    final /* synthetic */ MsgNotiNumServerResult f8017a;
    final /* synthetic */ ev f8018b;

    ew(ev evVar, MsgNotiNumServerResult msgNotiNumServerResult) {
        this.f8018b = evVar;
        this.f8017a = msgNotiNumServerResult;
    }

    public void run() {
        if (!this.f8017a.getCount().equals("0")) {
            this.f8018b.f8016a.f7993p.setTextColor(-65536);
            this.f8018b.f8016a.f7993p.setText(this.f8017a.getCount());
            this.f8018b.f8016a.f7993p.setVisibility(0);
        }
    }
}
