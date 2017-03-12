package com.yf.smart.weloopx.android.ui.activities;

import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.yf.gattlib.p117p.ProGuard;

/* compiled from: ProGuard */
class cu implements OnClickListener {
    final /* synthetic */ DfuActivity f7883a;

    cu(DfuActivity dfuActivity) {
        this.f7883a = dfuActivity;
    }

    public void onClick(View view) {
        ProGuard.m8293a("DfuActivity", "Upgrade button pressed");
        if (this.f7883a.f7427z.m7985c()) {
            this.f7883a.m9339j();
            if (TextUtils.isEmpty(this.f7883a.f7391B)) {
                new DfuActivity.ProGuard(null).execute((Object[]) new Void[0]);
                return;
            } else {
                this.f7883a.m9361u();
                return;
            }
        }
        this.f7883a.f7413l.m7942k();
        this.f7883a.f7413l.m7933b();
        this.f7883a.m9343l();
    }
}
