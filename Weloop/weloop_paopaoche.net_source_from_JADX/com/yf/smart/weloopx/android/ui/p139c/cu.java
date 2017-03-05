package com.yf.smart.weloopx.android.ui.p139c;

import android.widget.ListAdapter;
import com.yf.smart.weloopx.android.ui.p144a.ProGuard;
import com.yf.smart.weloopx.data.models.CalorieStatistics;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.cu */
public class cu extends co {
    protected void m10388a() {
        this.v = new ProGuard(getActivity(), getLoaderManager());
        this.v.m9155a(this.w);
        this.v.m9159c();
        this.u = new ProGuard(getActivity(), getLoaderManager());
        this.u.m9155a(this.w);
        this.u.m9159c();
        this.k.setVisibility(8);
        this.l.setVisibility(0);
        this.i.setProgressDrawable(getResources().getDrawable(R.drawable.seekbar_sport));
        this.c.setText(getString(R.string.average_daily_calories));
        this.g.setBackgroundResource(R.drawable.run_icon_new);
    }

    protected void m10390b() {
    }

    protected void m10391d() {
    }

    protected void m10389a(ListAdapter listAdapter, int i) {
        com.yf.smart.weloopx.android.ui.p147b.ProGuard proGuard = (com.yf.smart.weloopx.android.ui.p147b.ProGuard) listAdapter.getItem(i);
        CalorieStatistics d = proGuard.m10149d();
        double calorieSum = proGuard.m10150e().getCalorieSum();
        double calorieAvg = d.getCalorieAvg();
        double calorieSum2 = d.getCalorieSum();
        double calorieGoalSum = d.getCalorieGoalSum();
        this.b.setText(String.valueOf((int) calorieAvg));
        this.d.setText(com.yf.smart.weloopx.p145g.ProGuard.m11344a(calorieSum2, calorieSum));
        this.f.setText(getString(R.string.cur_complete) + com.yf.smart.weloopx.p145g.ProGuard.m11346b(calorieSum2, calorieGoalSum));
        this.i.setMax((int) calorieGoalSum);
        this.i.setProgress((int) calorieSum2);
        if (this.t.m9607a()) {
            this.e.setText(getString(R.string.compare_last_week));
            this.h.setText(getString(R.string.sport_week));
        } else {
            this.e.setText(getString(R.string.compare_last_month));
            this.h.setText(getString(R.string.sport_month));
        }
        int activePointSum = d.getActivePointSum();
        calorieSum = d.getDistanceSum() / 1000.0d;
        int stepCountSum = d.getStepCountSum();
        this.p.setText(String.valueOf(activePointSum));
        this.q.setText(String.valueOf((int) calorieSum2));
        this.r.setText(String.format("%.1f", new Object[]{Double.valueOf(calorieSum)}));
        this.s.setText(String.valueOf(stepCountSum));
    }
}
