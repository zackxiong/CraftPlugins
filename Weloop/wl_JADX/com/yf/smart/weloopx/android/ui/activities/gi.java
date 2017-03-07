package com.yf.smart.weloopx.android.ui.activities;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yf.smart.weloopx.android.ui.widget.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class gi extends ProGuard {
    final /* synthetic */ StatisticsActivity2 f8064a;

    gi(StatisticsActivity2 statisticsActivity2) {
        this.f8064a = statisticsActivity2;
    }

    public int m9937a(int i) {
        return this.f8064a.getResources().getColor(R.color.ranking_subtitle_focused_color);
    }

    public int m9939b(int i) {
        return 0;
    }

    public void m9938a(int i, View view, boolean z) {
        ((TextView) view).setTextColor(this.f8064a.getResources().getColor(z ? R.color.ranking_subtitle_focused_color : R.color.ranking_subtitle_default_color));
        view.setBackgroundColor(this.f8064a.getResources().getColor(z ? R.color.ranking_subtitle_focused_bg_color : R.color.ranking_subtitle_default_bg_color));
        if (z) {
            StatisticsActivity2.ProGuard proGuard = (StatisticsActivity2.ProGuard) this.f8064a.f7626g.get(i);
            if (proGuard.f7616a != 0) {
                this.f8064a.f7622c.setText(proGuard.f7616a);
            } else {
                this.f8064a.f7622c.setText(this.f8064a.f7627h ? R.string.week_title : R.string.month_title);
            }
            if (proGuard.f7619d) {
                this.f8064a.f7621b.setVisibility(8);
                return;
            }
            this.f8064a.f7621b.setVisibility(0);
            this.f8064a.f7621b.setBackgroundResource(this.f8064a.f7627h ? R.drawable.btn_month_data : R.drawable.btn_week_data);
        }
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.f8064a).inflate(R.layout.ranking_sub_title, viewGroup);
        }
        TextView textView = (TextView) viewGroup.getChildAt(i);
        textView.setText(((StatisticsActivity2.ProGuard) this.f8064a.f7626g.get(i)).f7617b);
        textView.setBackgroundColor(this.f8064a.getResources().getColor(R.color.ranking_subtitle_default_bg_color));
        return view;
    }
}
