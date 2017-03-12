package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yf.smart.weloopx.android.ui.ProGuard;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.event.CustomStatisticsEvent;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.am */
public class am extends ProGuard {
    private ProGuard f8213b;
    private int f8214c;
    private String f8215d;
    private Handler f8216e;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.am.a */
    public interface ProGuard {
        void m9606a(int i, String str);
    }

    public static void m10208a(FragmentManager fragmentManager, String str, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("x", str);
        bundle.putInt("y", i);
        DialogFragment amVar = new am();
        amVar.setArguments(bundle);
        ProGuard.m10544a(amVar, fragmentManager, "xx");
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f8216e = new Handler();
        m10200c(getString(R.string.downloading_statistics));
        this.f8215d = getArguments().getString("x");
        this.f8214c = getArguments().getInt("y");
        this.f8213b = (ProGuard) m10171c();
        m10211e();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        com.yf.lib.p135a.ProGuard.m8508a().m8608a((Object) this);
        return onCreateView;
    }

    public void onDestroyView() {
        com.yf.lib.p135a.ProGuard.m8508a().m8611b((Object) this);
        super.onDestroyView();
    }

    private void m10211e() {
        com.yf.smart.weloopx.p140b.ProGuard.m10660a().m10670a(this.f8215d, this.f8214c, new an(this));
    }

    private void m10212f() {
        com.yf.smart.weloopx.p140b.ProGuard.m10660a().m10671a(this.f8215d, this.f8214c, new ao(this));
    }

    @com.yf.lib.squareup.otto.ProGuard
    public void onCustomStatistics(CustomStatisticsEvent customStatisticsEvent) {
        m10166a(new ap(this, customStatisticsEvent));
    }
}
