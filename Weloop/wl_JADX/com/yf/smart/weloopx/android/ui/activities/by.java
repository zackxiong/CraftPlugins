package com.yf.smart.weloopx.android.ui.activities;

import android.graphics.drawable.ColorDrawable;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.p146c.ProGuard;

/* compiled from: ProGuard */
class by implements Runnable {
    final /* synthetic */ ProGuard f7854a;

    by(ProGuard proGuard) {
        this.f7854a = proGuard;
    }

    public void run() {
        if (!this.f7854a.f8131G.m10711o()) {
            this.f7854a.f8173y = ProGuard.NULL;
            this.f7854a.m10042e(this.f7854a.m10082m());
        } else if (this.f7854a.f8161m != null) {
            this.f7854a.f8173y = ProGuard.m10901a(ProGuard.m10914e(this.f7854a.f8131G.m10707k()));
            this.f7854a.f8161m.setText(this.f7854a.f8173y.m10903b());
            this.f7854a.f8162n.setText(this.f7854a.m9820a(R.string.id_prefix, this.f7854a.f8131G.m10728g()));
            if (this.f7854a.f8131G.m10730i()) {
                this.f7854a.f8160l.setImageResource(R.drawable.bt_linked);
            } else {
                this.f7854a.f8160l.setImageResource(R.drawable.bt_unlinked);
            }
            if (this.f7854a.f8173y != ProGuard.NULL) {
                this.f7854a.f8159k.setImageResource(this.f7854a.f8173y.m10904c());
            } else {
                this.f7854a.f8159k.setImageDrawable(new ColorDrawable(0));
            }
            this.f7854a.m10042e(this.f7854a.m10082m());
            this.f7854a.m10094o();
        }
    }
}
