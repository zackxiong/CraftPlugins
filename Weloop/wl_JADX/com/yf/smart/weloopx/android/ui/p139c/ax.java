package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.app.FragmentManager;
import android.text.TextUtils;
import com.yf.smart.weloopx.android.ui.ProGuard;
import com.yf.smart.weloopx.data.models.UserData;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.ax */
public class ax extends ProGuard {
    private UserData f8226b;
    private ProGuard f8227c;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.ax.a */
    public interface ProGuard {
        void m10232a(String str);

        void b_();
    }

    public static void m10234a(FragmentManager fragmentManager) {
        ProGuard.m10544a(new ax(), fragmentManager, "logouting");
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        m10200c(getString(R.string.logouting));
        this.f8226b = new UserData();
        this.f8226b.setAccessToken(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        if (TextUtils.isEmpty(this.f8226b.getAccessToken())) {
            m10168b((int) R.string.no_login);
            return;
        }
        com.yf.smart.weloopx.p145g.ProGuard proGuard = new com.yf.smart.weloopx.p145g.ProGuard();
        proGuard.m11302a(getActivity(), "");
        proGuard.m11311b(getActivity(), "");
        this.f8227c = (ProGuard) m10171c();
        com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10768a(this.f8226b, new ay(this));
    }
}
