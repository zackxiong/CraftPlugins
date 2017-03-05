package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.text.SpannableStringBuilder;
import android.text.style.RelativeSizeSpan;
import android.widget.ListAdapter;
import com.yf.smart.weloopx.android.ui.p144a.ProGuard;
import com.yf.smart.weloopx.data.models.SleepStatistics;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.cv */
public class cv extends co {
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    protected void m10393a() {
        this.u = new ProGuard(getActivity(), getLoaderManager());
        this.u.m9155a(this.w);
        this.u.m9159c();
        this.v = new ProGuard(getActivity(), getLoaderManager());
        this.v.m9155a(this.w);
        this.v.m9159c();
        this.k.setVisibility(0);
        this.l.setVisibility(8);
        this.c.setText(getString(R.string.daily_average_sleep_time));
        this.g.setBackgroundResource(R.drawable.sleep_icon_new);
    }

    protected void m10395b() {
    }

    protected void m10396d() {
    }

    protected void m10394a(ListAdapter listAdapter, int i) {
        SleepStatistics f = ((com.yf.smart.weloopx.android.ui.p147b.ProGuard) listAdapter.getItem(i)).m10151f();
        int wakeSum = (f.getWakeSum() + f.getDeepSleepSum()) + f.getShallowSleepSum();
        int c = com.yf.smart.weloopx.p145g.ProGuard.m11347c((double) wakeSum, (double) f.getSleepGoalSum());
        this.b.setText(m10392a((f.getDeepSleepAvg() + f.getShallowSleepAvg()) + f.getWakeAvg()));
        this.d.setText(com.yf.smart.weloopx.p145g.ProGuard.m11345a((int) Math.round(f.getSleepScoreAvg()), getActivity()));
        this.f.setText(getString(R.string.cur_complete) + c + "%");
        this.i.setMax(100);
        this.i.setProgress(c);
        this.i.setProgressDrawable(getResources().getDrawable(R.drawable.seekbar_sleep));
        if (this.t.m9607a()) {
            this.e.setText(getString(R.string.week_sleep_quilty));
            this.h.setText(getString(R.string.sleep_week));
        } else {
            this.e.setText(getString(R.string.month_sleep_qulity));
            this.h.setText(getString(R.string.sleep_month));
        }
        if (wakeSum > 0) {
            c = (f.getWakeSum() * 100) / wakeSum;
            int deepSleepSum = (f.getDeepSleepSum() * 100) / wakeSum;
            wakeSum = (100 - c) - deepSleepSum;
            this.m.setText(c + "%");
            this.n.setText(wakeSum + "%");
            this.o.setText(deepSleepSum + "%");
            return;
        }
        this.m.setText("0%");
        this.n.setText("0%");
        this.o.setText("0%");
    }

    private SpannableStringBuilder m10392a(int i) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i2 = i / 60;
        if (i2 > 0) {
            spannableStringBuilder.append("" + i2);
            i2 = spannableStringBuilder.length();
            spannableStringBuilder.append(getString(R.string.hour_str));
            spannableStringBuilder.setSpan(new RelativeSizeSpan(0.34f), i2, spannableStringBuilder.length(), 0);
        }
        spannableStringBuilder.append("" + (i % 60));
        i2 = spannableStringBuilder.length();
        spannableStringBuilder.append(getString(R.string.minute_str));
        spannableStringBuilder.setSpan(new RelativeSizeSpan(0.34f), i2, spannableStringBuilder.length(), 0);
        return spannableStringBuilder;
    }
}
