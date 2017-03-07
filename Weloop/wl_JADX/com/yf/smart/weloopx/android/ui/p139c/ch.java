package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.app.FragmentManager;
import com.yf.gattlib.client.p113b.ao;
import com.yf.smart.weloopx.android.ui.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.ch */
public class ch extends ck {
    public static void m10375a(FragmentManager fragmentManager) {
        ProGuard.m10544a(new ch(), fragmentManager, "motion");
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        m10362a(new String[]{getString(R.string.state_nite), getString(R.string.state_on), getString(R.string.state_off)});
        m10365d(getString(R.string.motion_display_tommy));
        m10363c("motion");
        m10364d((int) com.yf.gattlib.client.ProGuard.m7829a().m7854c());
    }

    protected void m10377e() {
        if (m10370h().getCheckedItemPosition() == com.yf.gattlib.client.ProGuard.m7829a().m7854c()) {
            super.m10366e();
        } else {
            m10368f();
        }
    }

    public void m10376a(String str, boolean z) {
        if (z) {
            int checkedItemPosition = m10370h().getCheckedItemPosition();
            m10367e(getString(R.string.synchronizing));
            new ao((byte) checkedItemPosition).m7492b(new ci(this, checkedItemPosition));
            return;
        }
        m10167b();
    }
}
