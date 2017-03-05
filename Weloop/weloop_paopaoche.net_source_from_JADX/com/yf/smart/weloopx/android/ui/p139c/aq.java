package com.yf.smart.weloopx.android.ui.p139c;

import android.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import com.yf.smart.weloopx.android.ui.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.aq */
public class aq extends ProGuard {
    public static boolean m10225a(FragmentManager fragmentManager) {
        if (!aq.m10226e()) {
            return false;
        }
        ProGuard.m10544a(new aq(), fragmentManager, "fet");
        return true;
    }

    private static boolean m10226e() {
        if (com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10730i() && com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8082l()) {
            return true;
        }
        return false;
    }

    protected View m10227a() {
        View inflate = LayoutInflater.from(getActivity()).inflate(R.layout.firmware_exception_tip, null);
        inflate.findViewById(R.id.ad_tv_ok).setOnClickListener(new ar(this));
        return inflate;
    }
}
