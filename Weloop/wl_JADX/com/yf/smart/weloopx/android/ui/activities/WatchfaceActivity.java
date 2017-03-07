package com.yf.smart.weloopx.android.ui.activities;

import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yf.smart.weloopx.android.ui.p139c.dr;
import com.yf.smart.weloopx.android.ui.widget.SlidingTabLayout;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class WatchfaceActivity extends ProGuard {
    private SlidingTabLayout f7774a;
    private ViewPager f7775b;
    private int[] f7776c;
    private com.yf.smart.weloopx.android.ui.widget.ProGuard f7777d;

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.WatchfaceActivity.a */
    private class ProGuard extends com.yf.smart.weloopx.android.ui.widget.ProGuard {
        final /* synthetic */ WatchfaceActivity f7768a;
        private int f7769b;
        private int f7770c;
        private int f7771d;
        private int f7772e;

        private ProGuard(WatchfaceActivity watchfaceActivity) {
            this.f7768a = watchfaceActivity;
            this.f7769b = watchfaceActivity.getResources().getColor(R.color.ranking_subtitle_focused_color);
            this.f7770c = watchfaceActivity.getResources().getColor(R.color.ranking_subtitle_default_color);
            this.f7771d = watchfaceActivity.getResources().getColor(R.color.ranking_subtitle_focused_bg_color);
            this.f7772e = watchfaceActivity.getResources().getColor(R.color.ranking_subtitle_default_bg_color);
        }

        public int m9771a(int i) {
            return this.f7769b;
        }

        public int m9773b(int i) {
            return 0;
        }

        public void m9772a(int i, View view, boolean z) {
            ((TextView) view).setTextColor(z ? this.f7769b : this.f7770c);
            view.setBackgroundColor(z ? this.f7771d : this.f7772e);
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(this.f7768a).inflate(R.layout.ranking_sub_title, viewGroup);
            }
            TextView textView = (TextView) viewGroup.getChildAt(i);
            textView.setText(this.f7768a.f7776c[i]);
            textView.setTextColor(this.f7770c);
            textView.setBackgroundColor(this.f7772e);
            return view;
        }
    }

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.WatchfaceActivity.b */
    private class ProGuard extends android.support.v13.app.ProGuard {
        final /* synthetic */ WatchfaceActivity f7773a;

        public ProGuard(WatchfaceActivity watchfaceActivity, FragmentManager fragmentManager) {
            this.f7773a = watchfaceActivity;
            super(fragmentManager);
        }

        public Fragment m9774a(int i) {
            return dr.m10477a(this.f7773a.f7776c[i]);
        }

        public int m9775b() {
            return this.f7773a.f7776c.length;
        }
    }

    public WatchfaceActivity() {
        this.f7776c = new int[]{R.string.watchface_type_top, R.string.watchface_type_latest, R.string.watchface_type_number, R.string.watchface_type_icon, R.string.watchface_type_pointer};
    }

    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        setContentView(R.layout.activity_watchface);
        ((TextView) findViewById(R.id.at_tv_title)).setText(R.string.watchface_title);
        findViewById(R.id.at_back).setOnClickListener(new hh(this));
        findViewById(R.id.at_edit).setVisibility(8);
        this.f7774a = (SlidingTabLayout) findViewById(R.id.sliding_tabs);
        this.f7775b = (ViewPager) findViewById(R.id.viewpager);
        this.f7775b.setAdapter(new ProGuard(this, getFragmentManager()));
        this.f7777d = new ProGuard();
        this.f7774a.m10577a(this.f7775b, this.f7777d);
    }
}
