package com.yf.smart.weloopx.android.ui.activities;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.yf.gattlib.p108a.ProGuard;
import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class ex implements OnCheckedChangeListener {
    final /* synthetic */ el f8019a;

    ex(el elVar) {
        this.f8019a = elVar;
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            ah.m10189a(this.f8019a.getChildFragmentManager(), "auto_sync", this.f8019a.m9825d(R.string.auto_sync_msg), (int) R.layout.confirm_gray_dialog1, true, false);
            return;
        }
        ProGuard.m7368a().m7387q().m7414a("KEY_AUTO_SYNC_DATA", false);
        this.f8019a.f7976U.f8647h.setCheckedFromCode(false);
        com.yf.smart.weloopx.p146c.ProGuard.m10923a().m10966e();
    }
}
