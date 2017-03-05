package com.yf.smart.weloopx.android.ui.activities;

import android.animation.Animator;
import android.app.Activity;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.yf.smart.weloopx.android.ui.p139c.ProGuard;
import com.yf.smart.weloopx.android.ui.widget.SlidingTabLayout;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class fp extends ProGuard {
    private SlidingTabLayout f8041a;
    private ViewPager f8042b;
    private String f8043c;
    private com.yf.smart.weloopx.android.ui.widget.ProGuard f8044d;

    public fp() {
        this.f8043c = "RankingFragment";
        this.f8044d = new fr(this);
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8043c + " onAttach");
    }

    public void onResume() {
        super.onResume();
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8043c + " onResume");
    }

    public void onStart() {
        super.onStart();
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8043c + " onStart");
    }

    public Animator onCreateAnimator(int i, boolean z, int i2) {
        return super.onCreateAnimator(i, z, i2);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8043c + " onCreate");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8043c + " onCreateView()");
        View inflate = layoutInflater.inflate(R.layout.ranking, null);
        ((TextView) inflate.findViewById(R.id.at_tv_title)).setText(R.string.ranking);
        inflate.findViewById(R.id.at_btn_left).setVisibility(8);
        this.f8041a = (SlidingTabLayout) inflate.findViewById(R.id.sliding_tabs);
        this.f8042b = (ViewPager) inflate.findViewById(R.id.viewpager);
        this.f8042b.setAdapter(new com.yf.smart.weloopx.android.ui.p144a.ProGuard(getChildFragmentManager()));
        this.f8041a.m10577a(this.f8042b, this.f8044d);
        Button button = (Button) inflate.findViewById(R.id.at_btn_right);
        button.setVisibility(0);
        button.setBackgroundResource(R.drawable.add_friend);
        button.setOnClickListener(new fq(this));
        return inflate;
    }
}
