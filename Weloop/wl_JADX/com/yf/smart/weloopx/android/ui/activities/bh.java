package com.yf.smart.weloopx.android.ui.activities;

import android.widget.TextView;
import com.yf.gattlib.p117p.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class bh implements Runnable {
    final /* synthetic */ ProGuard f7832a;

    bh(ProGuard proGuard) {
        this.f7832a = proGuard;
    }

    public void run() {
        hg hgVar = (hg) this.f7832a.m9823c();
        this.f7832a.f8151a = hgVar.m9441i();
        if (this.f7832a.f8151a == null) {
            hgVar = (hg) this.f7832a.m9823c();
            this.f7832a.f8151a = hgVar.m9441i();
        }
        if (this.f7832a.f8151a != null) {
            Object obj = this.f7832a.f8153e + " \u663e\u793a\u624b\u73af\u6709\u56fa\u4ef6\u66f4\u65b0 canUpgrade = " + this.f7832a.f8151a.m2794d();
            ProGuard.m8292a((String) obj);
            ProGuard.m8245a(obj);
        }
        com.yf.smart.weloopx.android.ui.widget.ProGuard a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(this.f7832a.f8154f);
        a.f8640a.setText(this.f7832a.m9825d(R.string.firmware_upgrade));
        String str = "";
        if (this.f7832a.f8151a != null) {
            str = this.f7832a.f8151a.m2791b();
        }
        if ("V 2.19".compareToIgnoreCase(str) > 0) {
            this.f7832a.f8150Z.setVisibility(8);
        } else {
            this.f7832a.f8150Z.setVisibility(0);
        }
        if ("V 2.16".compareToIgnoreCase(str) > 0) {
            this.f7832a.f8149Y.setVisibility(8);
        } else {
            this.f7832a.f8149Y.setVisibility(0);
        }
        if (!com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10711o() || this.f7832a.f8151a == null) {
            a.f8641b.setVisibility(8);
            return;
        }
        int i;
        a.f8641b.setBackgroundResource(R.drawable.new_version);
        TextView textView = a.f8641b;
        if (this.f7832a.f8151a.m2794d()) {
            i = 0;
        } else {
            i = 8;
        }
        textView.setVisibility(i);
    }
}
