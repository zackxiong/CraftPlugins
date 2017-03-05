package com.yf.smart.weloopx.android.ui.activities;

import android.app.Activity;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.RelativeSizeSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import com.yf.smart.weloopx.android.ui.p139c.am;
import com.yf.smart.weloopx.android.ui.p139c.am.ProGuard;
import com.yf.smart.weloopx.data.models.CalorieStatistics;
import com.yf.smart.weloopx.data.models.SleepStatistics;
import com.yf.smart.weloopx.dist.R;
import it.sephiroth.android.library.widget.CenterHListView;

/* compiled from: ProGuard */
public class StatisticsActivity extends Activity implements OnClickListener, ProGuard {
    private String f7629A;
    private boolean f7630B;
    private boolean f7631C;
    private Typeface f7632D;
    private com.yf.smart.weloopx.android.ui.p144a.ProGuard f7633E;
    private com.yf.smart.weloopx.android.ui.p144a.ProGuard f7634F;
    private com.yf.smart.weloopx.android.ui.p144a.ProGuard f7635G;
    private com.yf.smart.weloopx.android.ui.p144a.ProGuard f7636H;
    private com.yf.smart.weloopx.android.ui.p144a.ProGuard f7637I;
    private com.yf.smart.weloopx.android.ui.p144a.ProGuard.ProGuard f7638J;
    private CenterHListView.ProGuard f7639K;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f7640a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558690)
    Button f7641b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558688)
    Button f7642c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558782)
    Button f7643d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f7644e;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558705)
    CenterHListView f7645f;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558707)
    TextView f7646g;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558708)
    TextView f7647h;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558709)
    TextView f7648i;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558710)
    TextView f7649j;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558714)
    TextView f7650k;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558711)
    ImageView f7651l;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558713)
    TextView f7652m;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558712)
    SeekBar f7653n;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558715)
    ProgressBar f7654o;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558691)
    View f7655p;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558689)
    View f7656q;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558692)
    LinearLayout f7657r;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558699)
    LinearLayout f7658s;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558693)
    TextView f7659t;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558695)
    TextView f7660u;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558697)
    TextView f7661v;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558700)
    TextView f7662w;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558701)
    TextView f7663x;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558703)
    TextView f7664y;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558704)
    TextView f7665z;

    public StatisticsActivity() {
        this.f7629A = "StatisticsActivity";
        this.f7630B = true;
        this.f7631C = true;
        this.f7638J = new gf(this);
        this.f7639K = new gh(this);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_statistics);
        com.p038b.p039a.ProGuard.m4086a(this);
        m9618a();
        m9621b();
    }

    private void m9618a() {
        com.yf.smart.weloopx.android.ui.p144a.ProGuard proGuard = new com.yf.smart.weloopx.android.ui.p144a.ProGuard(this, getLoaderManager());
        this.f7635G = proGuard;
        this.f7633E = proGuard;
        this.f7635G.m9155a(this.f7638J);
        this.f7635G.m9159c();
        this.f7634F = new com.yf.smart.weloopx.android.ui.p144a.ProGuard(this, getLoaderManager());
        this.f7634F.m9155a(this.f7638J);
        this.f7634F.m9159c();
        this.f7636H = new com.yf.smart.weloopx.android.ui.p144a.ProGuard(this, getLoaderManager());
        this.f7636H.m9155a(this.f7638J);
        this.f7636H.m9159c();
        this.f7637I = new com.yf.smart.weloopx.android.ui.p144a.ProGuard(this, getLoaderManager());
        this.f7637I.m9155a(this.f7638J);
        this.f7637I.m9159c();
        this.f7632D = Typeface.createFromAsset(getAssets(), "fonts/dincond_bold.otf");
        m9626c();
    }

    private void m9621b() {
        this.f7644e.setText(getString(R.string.week_title));
        this.f7641b.setOnClickListener(this);
        this.f7642c.setOnClickListener(this);
        this.f7640a.setVisibility(0);
        this.f7640a.setOnClickListener(this);
        this.f7643d.setVisibility(0);
        this.f7643d.setBackgroundResource(R.drawable.btn_month_data);
        this.f7643d.setOnClickListener(this);
        this.f7646g.setTypeface(this.f7632D);
        this.f7648i.setTypeface(this.f7632D);
        this.f7650k.setTypeface(this.f7632D);
        this.f7654o.setVisibility(8);
        this.f7659t.setTypeface(this.f7632D);
        this.f7660u.setTypeface(this.f7632D);
        this.f7661v.setTypeface(this.f7632D);
        this.f7662w.setTypeface(this.f7632D);
        this.f7663x.setTypeface(this.f7632D);
        this.f7664y.setTypeface(this.f7632D);
        this.f7665z.setTypeface(this.f7632D);
        this.f7645f.setOnCenterItemListener(this.f7639K);
        this.f7653n.setEnabled(false);
    }

    private void m9626c() {
        am.m10208a(getFragmentManager(), com.yf.smart.weloopx.p145g.ProGuard.m11348a("yyyy-MM-dd"), com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10784e());
    }

    public void m9633a(int i, String str) {
        com.yf.gattlib.p117p.ProGuard.m8293a(this.f7629A, i + "," + str);
        m9627d();
        m9630g();
    }

    private void m9627d() {
        if (this.f7631C) {
            this.f7653n.setBackgroundResource(R.drawable.seekbar_sport);
            if (this.f7630B) {
                this.f7633E = this.f7635G;
            } else {
                this.f7633E = this.f7634F;
            }
        } else {
            this.f7653n.setBackgroundResource(R.drawable.seekbar_sleep);
            if (this.f7630B) {
                this.f7633E = this.f7637I;
            } else {
                this.f7633E = this.f7636H;
            }
        }
        int i = getResources().getDisplayMetrics().widthPixels / (this.f7630B ? 16 : 34);
        if (this.f7630B) {
            i = (i * 3) / 2;
        } else {
            i = (i * 5) / 2;
        }
        this.f7645f.setCenterItemLeft(i);
        this.f7645f.setAdapter(this.f7633E);
        this.f7633E.m9160d();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ws_btn_sport:
                m9628e();
            case R.id.ws_btn_sleep:
                m9629f();
            case R.id.at_btn_left:
                finish();
            case R.id.at_btn_right:
                m9632i();
            default:
        }
    }

    private void m9628e() {
        this.f7631C = true;
        m9630g();
        m9627d();
    }

    private void m9629f() {
        this.f7631C = false;
        m9631h();
        m9627d();
    }

    private void m9619a(int i) {
        m9630g();
        com.yf.smart.weloopx.android.ui.p147b.ProGuard proGuard = (com.yf.smart.weloopx.android.ui.p147b.ProGuard) this.f7633E.getItem(i);
        CalorieStatistics d = proGuard.m10149d();
        double calorieSum = proGuard.m10150e().getCalorieSum();
        double calorieAvg = d.getCalorieAvg();
        double calorieSum2 = d.getCalorieSum();
        double calorieGoalSum = d.getCalorieGoalSum();
        this.f7646g.setText(String.valueOf((int) calorieAvg));
        this.f7648i.setText(com.yf.smart.weloopx.p145g.ProGuard.m11344a(calorieSum2, calorieSum));
        this.f7650k.setText(getString(R.string.cur_complete) + com.yf.smart.weloopx.p145g.ProGuard.m11346b(calorieSum2, calorieGoalSum));
        this.f7653n.setMax((int) calorieGoalSum);
        this.f7653n.setProgress((int) calorieSum2);
        this.f7653n.setProgressDrawable(getResources().getDrawable(R.drawable.seekbar_sport));
        if (this.f7630B) {
            this.f7649j.setText(getString(R.string.compare_last_week));
            this.f7652m.setText(getString(R.string.sport_week));
        } else {
            this.f7649j.setText(getString(R.string.compare_last_month));
            this.f7652m.setText(getString(R.string.sport_month));
        }
        int activePointSum = d.getActivePointSum();
        calorieSum = d.getDistanceSum() / 1000.0d;
        int stepCountSum = d.getStepCountSum();
        this.f7662w.setText(String.valueOf(activePointSum));
        this.f7663x.setText(String.valueOf((int) calorieSum2));
        this.f7664y.setText(String.format("%.1f", new Object[]{Double.valueOf(calorieSum)}));
        this.f7665z.setText(String.valueOf(stepCountSum));
    }

    private void m9630g() {
        this.f7657r.setVisibility(8);
        this.f7658s.setVisibility(0);
        this.f7655p.setVisibility(8);
        this.f7656q.setVisibility(0);
        this.f7641b.setTextColor(getResources().getColor(R.color.statis_btn_tv_unchoice));
        this.f7642c.setTextColor(getResources().getColor(R.color.statis_btn_tv_choice));
        this.f7641b.setBackgroundColor(getResources().getColor(R.color.statis_btn_unchoice));
        this.f7642c.setBackgroundColor(getResources().getColor(R.color.statis_btn_choice));
        this.f7647h.setText(getString(R.string.average_daily_calories));
        this.f7651l.setBackgroundResource(R.drawable.run_icon_new);
    }

    private void m9622b(int i) {
        m9631h();
        SleepStatistics f = ((com.yf.smart.weloopx.android.ui.p147b.ProGuard) this.f7633E.getItem(i)).m10151f();
        int wakeSum = (f.getWakeSum() + f.getDeepSleepSum()) + f.getShallowSleepSum();
        int c = com.yf.smart.weloopx.p145g.ProGuard.m11347c((double) wakeSum, (double) f.getSleepGoalSum());
        this.f7646g.setText(m9625c((f.getDeepSleepAvg() + f.getShallowSleepAvg()) + f.getWakeAvg()));
        this.f7648i.setText(com.yf.smart.weloopx.p145g.ProGuard.m11345a((int) Math.round(f.getSleepScoreAvg()), (Context) this));
        this.f7650k.setText(getString(R.string.cur_complete) + c + "%");
        this.f7653n.setMax(100);
        this.f7653n.setProgress(c);
        this.f7653n.setProgressDrawable(getResources().getDrawable(R.drawable.seekbar_sleep));
        if (this.f7630B) {
            this.f7649j.setText(getString(R.string.week_sleep_quilty));
            this.f7652m.setText(getString(R.string.sleep_week));
        } else {
            this.f7649j.setText(getString(R.string.month_sleep_qulity));
            this.f7652m.setText(getString(R.string.sleep_month));
        }
        if (wakeSum > 0) {
            c = (f.getWakeSum() * 100) / wakeSum;
            int deepSleepSum = (f.getDeepSleepSum() * 100) / wakeSum;
            wakeSum = (100 - c) - deepSleepSum;
            this.f7659t.setText(c + "%");
            this.f7660u.setText(wakeSum + "%");
            this.f7661v.setText(deepSleepSum + "%");
            return;
        }
        this.f7659t.setText("0%");
        this.f7660u.setText("0%");
        this.f7661v.setText("0%");
    }

    private SpannableStringBuilder m9625c(int i) {
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

    private void m9631h() {
        this.f7657r.setVisibility(0);
        this.f7658s.setVisibility(8);
        this.f7655p.setVisibility(0);
        this.f7656q.setVisibility(8);
        this.f7641b.setTextColor(getResources().getColor(R.color.statis_btn_tv_choice));
        this.f7642c.setTextColor(getResources().getColor(R.color.statis_btn_tv_unchoice));
        this.f7641b.setBackgroundColor(getResources().getColor(R.color.statis_btn_choice));
        this.f7642c.setBackgroundColor(getResources().getColor(R.color.statis_btn_unchoice));
        this.f7647h.setText(getString(R.string.daily_average_sleep_time));
        this.f7651l.setBackgroundResource(R.drawable.sleep_icon_new);
    }

    private void m9632i() {
        this.f7630B = !this.f7630B;
        m9627d();
        if (this.f7630B) {
            this.f7644e.setText(R.string.week_title);
            this.f7643d.setBackgroundResource(R.drawable.btn_month_data);
            return;
        }
        this.f7644e.setText(getString(R.string.month_title));
        this.f7643d.setBackgroundResource(R.drawable.btn_week_data);
    }
}
