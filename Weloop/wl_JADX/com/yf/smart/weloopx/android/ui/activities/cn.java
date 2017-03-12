package com.yf.smart.weloopx.android.ui.activities;

import android.text.TextUtils;
import com.yf.gattlib.p125j.ProGuard;

/* compiled from: ProGuard */
class cn implements ProGuard {
    final /* synthetic */ DfuActivity f7876a;

    cn(DfuActivity dfuActivity) {
        this.f7876a = dfuActivity;
    }

    public void m9808a() {
        this.f7876a.f7419r.m2789a(this.f7876a.f7422u, "V 1.00");
        if (TextUtils.isEmpty(this.f7876a.f7419r.m2787a())) {
            this.f7876a.runOnUiThread(new co(this));
        } else if (this.f7876a.f7419r.m2794d()) {
            this.f7876a.m9343l();
        } else {
            this.f7876a.m9337i();
        }
    }
}
