package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import com.yf.smart.weloopx.android.ui.p144a.ProGuard;
import com.yf.smart.weloopx.dist.R;
import it.sephiroth.android.library.widget.CenterHListView;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.co */
public abstract class co extends ProGuard {
    CenterHListView f8356a;
    TextView f8357b;
    TextView f8358c;
    TextView f8359d;
    TextView f8360e;
    TextView f8361f;
    ImageView f8362g;
    TextView f8363h;
    SeekBar f8364i;
    ProgressBar f8365j;
    LinearLayout f8366k;
    LinearLayout f8367l;
    TextView f8368m;
    TextView f8369n;
    TextView f8370o;
    TextView f8371p;
    TextView f8372q;
    TextView f8373r;
    TextView f8374s;
    protected ProGuard f8375t;
    protected ProGuard f8376u;
    protected ProGuard f8377v;
    protected ProGuard.ProGuard f8378w;
    private int f8379x;
    private CenterHListView.ProGuard f8380y;
    private com.yf.lib.p135a.ProGuard f8381z;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.co.a */
    public interface ProGuard {
        boolean m9607a();
    }

    protected abstract void m10381a();

    protected abstract void m10382a(ListAdapter listAdapter, int i);

    protected abstract void m10383b();

    protected abstract void m10384d();

    public co() {
        this.f8380y = new cp(this);
        this.f8378w = new cq(this);
        this.f8381z = new cs(this);
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f8375t = (ProGuard) m9823c();
        this.f8379x = getResources().getDisplayMetrics().widthPixels;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.ft_statistics_base, null);
        m10380a(inflate);
        m10381a();
        if (this.f8375t.m9607a()) {
            this.f8356a.setAdapter(this.f8377v);
        } else {
            this.f8356a.setAdapter(this.f8376u);
        }
        com.yf.lib.p135a.ProGuard.m8510a().m8511a("statistics_changed", this.f8381z);
        return inflate;
    }

    private void m10380a(View view) {
        this.f8356a = (CenterHListView) view.findViewById(R.id.statistics_detail);
        this.f8357b = (TextView) view.findViewById(R.id.ws_tv_average_daiy_calories);
        this.f8358c = (TextView) view.findViewById(R.id.ws_tv_average_daiy_calories_msg);
        this.f8359d = (TextView) view.findViewById(R.id.ws_tv_average_daiy_state);
        this.f8360e = (TextView) view.findViewById(R.id.ws_tv_average_daiy_state_msg);
        this.f8361f = (TextView) view.findViewById(R.id.ws_tv_cur_time);
        this.f8362g = (ImageView) view.findViewById(R.id.ws_iv_mark);
        this.f8363h = (TextView) view.findViewById(R.id.ws_tv_mark);
        this.f8364i = (SeekBar) view.findViewById(R.id.ws_sb);
        this.f8365j = (ProgressBar) view.findViewById(R.id.ws_pb);
        this.f8366k = (LinearLayout) view.findViewById(R.id.sw_ll_week_sleep);
        this.f8367l = (LinearLayout) view.findViewById(R.id.sw_ll_week_sport);
        this.f8368m = (TextView) view.findViewById(R.id.sw_sleep_tv_awake_time);
        this.f8369n = (TextView) view.findViewById(R.id.sw_sleep_tv_shallow_time);
        this.f8370o = (TextView) view.findViewById(R.id.sw_sleep_tv_deep_time);
        this.f8371p = (TextView) view.findViewById(R.id.sw_sport_tv_activity_point);
        this.f8372q = (TextView) view.findViewById(R.id.sw_sport_tv_calories);
        this.f8373r = (TextView) view.findViewById(R.id.sw_sport_tv_distance);
        this.f8374s = (TextView) view.findViewById(R.id.sw_sport_tv_steps);
        Typeface a = com.yf.smart.weloopx.android.ui.ProGuard.m9227a(getActivity(), "fonts/dincond_bold.otf");
        this.f8357b.setTypeface(a);
        this.f8359d.setTypeface(a);
        this.f8361f.setTypeface(a);
        this.f8365j.setVisibility(8);
        this.f8368m.setTypeface(a);
        this.f8369n.setTypeface(a);
        this.f8370o.setTypeface(a);
        this.f8371p.setTypeface(a);
        this.f8372q.setTypeface(a);
        this.f8373r.setTypeface(a);
        this.f8374s.setTypeface(a);
        this.f8356a.setOnCenterItemListener(this.f8380y);
    }

    public void onDestroyView() {
        com.yf.lib.p135a.ProGuard.m8510a().m8513b("statistics_changed", this.f8381z);
        super.onDestroyView();
    }
}
