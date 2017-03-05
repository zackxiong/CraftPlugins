package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.app.FragmentManager;
import com.yf.gattlib.client.p113b.al;
import com.yf.smart.weloopx.android.ui.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.ce */
public class ce extends ck {
    public static void m10371a(FragmentManager fragmentManager) {
        ProGuard.m10544a(new ce(), fragmentManager, "back_light");
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        m10362a(new String[]{getString(R.string.state_nite), getString(R.string.state_on), getString(R.string.state_off)});
        m10365d(getString(R.string.back_light));
        m10363c("back_light");
        m10364d((int) com.yf.gattlib.client.ProGuard.m7829a().m7849b());
    }

    protected void m10373e() {
        if (m10370h().getCheckedItemPosition() == com.yf.gattlib.client.ProGuard.m7829a().m7849b()) {
            super.m10366e();
        } else {
            m10368f();
        }
    }

    public void m10372a(String str, boolean z) {
        if (z) {
            int checkedItemPosition = m10370h().getCheckedItemPosition();
            m10367e(getString(R.string.synchronizing));
            new al((byte) checkedItemPosition).m7492b(new cf(this, checkedItemPosition));
            return;
        }
        m10167b();
    }
}
