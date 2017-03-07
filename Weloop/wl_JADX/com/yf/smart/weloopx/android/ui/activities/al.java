package com.yf.smart.weloopx.android.ui.activities;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.yf.gattlib.client.p113b.as;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class al implements OnCheckedChangeListener {
    final /* synthetic */ ProGuard f7796a;

    al(ProGuard proGuard) {
        this.f7796a = proGuard;
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        byte c = this.f7796a.f8130F.m7854c();
        this.f7796a.m10024b(this.f7796a.m9825d(R.string.synchronizing));
        new as(z, c).m7492b(new am(this));
    }
}
