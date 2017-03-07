package com.yf.smart.weloopx.android.ui.activities;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.yf.smart.weloopx.android.ui.p139c.am;
import com.yf.smart.weloopx.android.ui.p139c.cu;
import com.yf.smart.weloopx.android.ui.p139c.cv;
import com.yf.smart.weloopx.android.ui.widget.SlidingTabLayout;
import com.yf.smart.weloopx.dist.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ProGuard */
public class StatisticsActivity2 extends Activity implements OnClickListener, com.yf.smart.weloopx.android.ui.p139c.am.ProGuard, com.yf.smart.weloopx.android.ui.p139c.co.ProGuard {
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f7620a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558782)
    Button f7621b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f7622c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558716)
    SlidingTabLayout f7623d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558429)
    ViewPager f7624e;
    private String f7625f;
    private List<ProGuard> f7626g;
    private boolean f7627h;
    private com.yf.smart.weloopx.android.ui.widget.ProGuard f7628i;

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.StatisticsActivity2.a */
    private class ProGuard extends android.support.v13.app.ProGuard {
        final /* synthetic */ StatisticsActivity2 f7614a;
        private Fragment[] f7615b;

        public ProGuard(StatisticsActivity2 statisticsActivity2, FragmentManager fragmentManager) {
            this.f7614a = statisticsActivity2;
            super(fragmentManager);
            this.f7615b = new Fragment[statisticsActivity2.f7626g.size()];
        }

        public Fragment m9604a(int i) {
            if (this.f7615b[i] == null) {
                try {
                    this.f7615b[i] = (Fragment) ((ProGuard) this.f7614a.f7626g.get(i)).f7618c.newInstance();
                } catch (Throwable e) {
                    com.yf.gattlib.p117p.ProGuard.m8294a(this.f7614a.f7625f, e);
                } catch (Throwable e2) {
                    com.yf.gattlib.p117p.ProGuard.m8294a(this.f7614a.f7625f, e2);
                }
            }
            return this.f7615b[i];
        }

        public int m9605b() {
            return this.f7615b.length;
        }
    }

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.StatisticsActivity2.b */
    public static class ProGuard {
        public final int f7616a;
        public final int f7617b;
        public final Class<? extends Fragment> f7618c;
        public final boolean f7619d;

        public ProGuard(int i, int i2, Class<? extends Fragment> cls, boolean z) {
            this.f7616a = i;
            this.f7617b = i2;
            this.f7618c = cls;
            this.f7619d = z;
        }
    }

    public StatisticsActivity2() {
        this.f7625f = "StatisticsActivity";
        this.f7626g = new ArrayList();
        this.f7627h = true;
        this.f7628i = new gi(this);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_statistics2);
        com.p038b.p039a.ProGuard.m4086a(this);
        m9610b();
        m9611c();
    }

    private void m9610b() {
        m9613d();
    }

    private void m9611c() {
        this.f7626g.add(new ProGuard(0, R.string.amount_exericise, cu.class, false));
        this.f7626g.add(new ProGuard(0, R.string.sleep_time, cv.class, false));
        com.yf.smart.weloopx.p149d.ProGuard.m11006b().m11009a(com.yf.smart.weloopx.p149d.ProGuard.activity_statistics_tab_fragment, 0, this.f7626g);
        this.f7622c.setText(getString(R.string.week_title));
        this.f7620a.setVisibility(0);
        this.f7620a.setOnClickListener(this);
        this.f7621b.setVisibility(0);
        this.f7621b.setBackgroundResource(R.drawable.btn_month_data);
        this.f7621b.setOnClickListener(this);
        this.f7624e.setAdapter(new ProGuard(this, getFragmentManager()));
        this.f7623d.m10577a(this.f7624e, this.f7628i);
    }

    private void m9613d() {
        am.m10208a(getFragmentManager(), com.yf.smart.weloopx.p145g.ProGuard.m11348a("yyyy-MM-dd"), 3);
    }

    public void m9615a(int i, String str) {
        com.yf.gattlib.p117p.ProGuard.m8293a(this.f7625f, i + "," + str);
        com.yf.lib.p135a.ProGuard.m8510a().m8512a("statistics_changed", new Object[0]);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.at_btn_left:
                finish();
            case R.id.at_btn_right:
                m9614e();
            default:
        }
    }

    private void m9614e() {
        this.f7627h = !this.f7627h;
        if (this.f7627h) {
            this.f7622c.setText(R.string.week_title);
            this.f7621b.setBackgroundResource(R.drawable.btn_month_data);
        } else {
            this.f7622c.setText(getString(R.string.month_title));
            this.f7621b.setBackgroundResource(R.drawable.btn_week_data);
        }
        com.yf.lib.p135a.ProGuard.m8510a().m8512a("statistics_changed", new Object[0]);
    }

    public boolean m9616a() {
        return this.f7627h;
    }
}
