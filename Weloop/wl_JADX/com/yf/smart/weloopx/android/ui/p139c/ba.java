package com.yf.smart.weloopx.android.ui.p139c;

import android.app.DialogFragment;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.tencent.mm.sdk.modelbase.BaseResp.ErrCode;
import com.yf.smart.weloopx.android.ui.activities.di;
import com.yf.smart.weloopx.android.ui.p139c.cw.ProGuard;
import com.yf.smart.weloopx.android.ui.widget.SmoothCircularProgressBar;
import com.yf.smart.weloopx.data.models.Activity;
import com.yf.smart.weloopx.data.models.DailyGain;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.event.ActivityDataChangedEvent;
import com.yf.smart.weloopx.event.InvalidAccessTokenEvent;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.ba */
public class ba extends ProGuard implements ProGuard {
    private PullToRefreshListView f8233a;
    private ListView f8234b;
    private RelativeLayout f8235c;
    private SmoothCircularProgressBar f8236d;
    private View f8237e;
    private TextView f8238f;
    private TextView f8239g;
    private TextView f8240h;
    private TextView f8241i;
    private TextView f8242j;
    private DialogFragment f8243k;
    private ProgressBar f8244l;
    private TextView f8245m;
    private Button f8246n;
    private ProGuard f8247o;
    private String f8248p;
    private DailyGain f8249q;
    private List<Activity> f8250r;
    private com.yf.gattlib.p110c.ProGuard f8251s;
    private com.yf.smart.weloopx.p145g.ProGuard f8252t;
    private String f8253u;
    private String f8254v;
    private String f8255w;
    private com.handmark.pulltorefresh.library.ProGuard.ProGuard<ListView> f8256x;
    private com.yf.smart.weloopx.p140b.ProGuard f8257y;
    private com.yf.gattlib.p118d.ProGuard.ProGuard f8258z;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.ba.a */
    public interface ProGuard {
        void m9826a();
    }

    public ba() {
        this.f8253u = "";
        this.f8254v = "";
        this.f8256x = new bc(this);
        this.f8258z = new be(this);
    }

    public static ba m10246a(String str, boolean z, boolean z2) {
        Bundle bundle = new Bundle();
        bundle.putString("happen_date", str);
        bundle.putBoolean("has_before", z);
        bundle.putBoolean("has_after", z2);
        ba baVar = new ba();
        baVar.setArguments(bundle);
        return baVar;
    }

    public void m10274b(String str) {
        this.f8248p = str;
    }

    public void onAttach(android.app.Activity activity) {
        super.onAttach(activity);
        Log.e("OneDailyFragment", " onAttach() happenDate " + this.f8248p);
        this.f8252t = new com.yf.smart.weloopx.p145g.ProGuard();
        this.f8251s = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q();
        this.f8257y = com.yf.smart.weloopx.p140b.ProGuard.m10712a();
        this.f8257y.m10718a(this.f8258z);
        this.f8253u = this.f8251s.getString("KEY_GOAL_TIME_LABEL", "");
    }

    public void onDetach() {
        super.onDetach();
        com.yf.lib.p135a.ProGuard.m8508a().m8611b((Object) this);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!(bundle == null || TextUtils.isEmpty(bundle.getString("happenDate")))) {
            this.f8248p = bundle.getString("happenDate");
        }
        Log.e("OneDailyFragment", " onCreate() happenDate " + this.f8248p);
        this.f8255w = com.yf.smart.weloopx.p145g.ProGuard.m11348a("yyyy-MM-dd");
    }

    @com.yf.lib.squareup.otto.ProGuard
    public void onActivityDataChanged(ActivityDataChangedEvent activityDataChangedEvent) {
        com.yf.gattlib.p117p.ProGuard.m8292a("OneDailyFragment \u6807\u7b7e\u754c\u9762 onActivityDataChanged, happenDate = " + this.f8248p);
        if (1 == activityDataChangedEvent.activityId) {
            m9821a(new bb(this));
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        com.yf.gattlib.p117p.ProGuard.m8292a("OneDailyFragment OneDailyFragment onCreateView happenDate " + this.f8248p);
        Log.e("OneDailyFragment", " onCreateView() happenDate " + this.f8248p);
        View inflate = layoutInflater.inflate(R.layout.daily_view, null);
        this.f8233a = (PullToRefreshListView) inflate.findViewById(R.id.dv_lv);
        this.f8233a.m6716a(true, false).setPullLabel(m9825d(R.string.pull_to_refresh_pull_label));
        this.f8233a.m6716a(true, false).setReleaseLabel(m9825d(R.string.pull_to_refresh_release_label));
        this.f8233a.m6716a(true, false).setRefreshingLabel(m9825d(R.string.pull_to_refresh_refreshing_label) + "\n" + this.f8253u);
        this.f8233a.getLoadingLayoutProxy().setLastUpdatedLabel(this.f8253u);
        this.f8234b = (ListView) this.f8233a.getRefreshableView();
        this.f8244l = (ProgressBar) inflate.findViewById(R.id.daily_pb);
        m10249a(layoutInflater);
        this.f8233a.setOnRefreshListener(this.f8256x);
        return inflate;
    }

    public void onDestroyView() {
        Log.e("OneDailyFragment", " onDestroyView()");
        super.onDestroyView();
    }

    public void onResume() {
        com.yf.gattlib.p117p.ProGuard.m8292a("OneDailyFragment onResume() happenDate = " + this.f8248p);
        Log.e("OneDailyFragment", " onResume() happenDate =" + this.f8248p);
        com.yf.lib.p135a.ProGuard.m8508a().m8608a((Object) this);
        this.f8249q = com.yf.smart.weloopx.p140b.ProGuard.m10660a().m10675b(this.f8248p);
        this.f8250r = com.yf.smart.weloopx.p140b.ProGuard.m10660a().m10661a(this.f8248p);
        m10273b();
        m10260f();
        m10270a();
        super.onResume();
    }

    private void m10249a(LayoutInflater layoutInflater) {
        com.yf.gattlib.p117p.ProGuard.m8292a("OneDailyFragment addListHeaderView()");
        View inflate = layoutInflater.inflate(R.layout.daily_view_header, null);
        this.f8237e = inflate;
        this.f8235c = (RelativeLayout) inflate.findViewById(R.id.dvh_rl_war);
        this.f8234b.addHeaderView(inflate);
        this.f8245m = (TextView) inflate.findViewById(R.id.txttime);
        this.f8236d = (SmoothCircularProgressBar) inflate.findViewById(R.id.circleProgressBar);
        this.f8238f = (TextView) inflate.findViewById(R.id.txtvalue);
        this.f8239g = (TextView) inflate.findViewById(R.id.txtpedometervalue);
        this.f8242j = (TextView) inflate.findViewById(R.id.goal_tv_activity_score);
        this.f8240h = (TextView) inflate.findViewById(R.id.goal_tv_distance);
        this.f8241i = (TextView) inflate.findViewById(R.id.goal_tv_steps);
        this.f8247o = (ProGuard) m9823c();
        Button button = (Button) inflate.findViewById(R.id.btndailyleft);
        if (getArguments().getBoolean("has_before", true)) {
            button.setVisibility(8);
        } else {
            button.setVisibility(8);
        }
        this.f8246n = (Button) inflate.findViewById(R.id.btndailyright);
    }

    private void m10256d() {
        if (isAdded()) {
            new com.yf.smart.weloopx.data.ProGuard(getActivity()).m11128e(com.yf.gattlib.p117p.ProGuard.m8238e());
        }
    }

    private String m10257e() {
        Context activity = getActivity();
        if (activity == null) {
            return this.f8251s.getString("KEY_GOAL_TIME_LABEL", "");
        }
        String str = getString(R.string.last_time_update) + DateUtils.formatDateTime(activity, System.currentTimeMillis(), 524305);
        this.f8251s.m7413a("KEY_GOAL_TIME_LABEL", str);
        return str;
    }

    private void m10260f() {
        if (this.f8240h != null) {
            DailyGain dailyGain = this.f8249q;
            if (dailyGain == null) {
                this.f8242j.setText("0%");
                this.f8240h.setText("0.0");
                this.f8241i.setText("0");
                this.f8238f.setText("0");
                this.f8239g.setText("0");
                this.f8236d.setProgress(0);
                this.f8237e.invalidate();
                return;
            }
            int stepCount = dailyGain.getStepCount();
            double distance = dailyGain.getDistance();
            double calorie = dailyGain.getCalorie();
            double calorieGoal = dailyGain.getCalorieGoal();
            this.f8240h.setText(String.format("%.1f", new Object[]{Double.valueOf(distance / 1000.0d)}));
            this.f8241i.setText(String.valueOf(stepCount));
            this.f8238f.setText("" + Math.round(calorie));
            this.f8239g.setText("" + Math.round(calorieGoal));
            stepCount = (int) Math.round((100.0d * calorie) / calorieGoal);
            com.yf.gattlib.p117p.ProGuard.m8298b("OneDailyFragment", dailyGain.getHappenDate() + ": calories, caloriesTarget=" + calorie + ", " + calorieGoal + ", progress=" + stepCount);
            this.f8236d.setProgress(stepCount);
            this.f8242j.setText(stepCount + "%");
            this.f8236d.invalidate();
        }
    }

    public void m10270a() {
        if (this.f8250r == null) {
            this.f8250r = new ArrayList();
        }
        m10261g();
        ListAdapter proGuard = new com.yf.smart.weloopx.android.ui.p144a.ProGuard(getActivity(), this.f8250r);
        if (proGuard.getCount() != 0 || di.f7902e) {
            this.f8235c.setVisibility(8);
        } else {
            this.f8235c.setVisibility(0);
        }
        this.f8233a.setAdapter(proGuard);
    }

    private void m10261g() {
        List arrayList = new ArrayList();
        Activity activity = null;
        for (Activity activity2 : this.f8250r) {
            Activity activity22;
            if (activity22.getType() != 1) {
                if (activity != null) {
                    arrayList.add(activity);
                    activity = null;
                }
                arrayList.add(activity22);
                activity22 = activity;
            } else if (activity != null) {
                if (com.yf.smart.weloopx.p145g.ProGuard.m11364a(activity.getStartTime(), activity22.getEndTime()) <= 2) {
                    activity.composeActivity(activity22);
                    activity22 = activity;
                } else {
                    arrayList.add(activity);
                }
            }
            activity = activity22;
        }
        if (activity != null) {
            arrayList.add(activity);
        }
        this.f8250r = arrayList;
    }

    private void m10251a(DailyGain dailyGain, List<Activity> list) {
        com.yf.gattlib.p117p.ProGuard.m8292a("OneDailyFragment resetData() ");
        this.f8249q = dailyGain;
        this.f8250r = list;
        m10260f();
        di.f7902e = true;
        m10273b();
        m10270a();
    }

    private void m10264h() {
        if (!m10268j()) {
            m10265i();
        } else if (com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8072c()) {
            m9824c(R.string.please_upgrade_first);
            m10265i();
        } else {
            boolean equals = this.f8248p.equals(com.yf.smart.weloopx.p145g.ProGuard.m11348a("yyyy-MM-dd"));
            com.yf.gattlib.p117p.ProGuard.m8292a("OneDailyFragment isCurDate = " + equals);
            if (!equals || com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10711o()) {
                Log.e("SyncData", "\u54cd\u5e94\u540c\u6b65\u539f\u59cb\u6570\u636e\u64cd\u4f5c........." + this.f8248p);
                this.f8243k = cw.m10397a(getChildFragmentManager(), this.f8248p);
                return;
            }
            if (com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8078h()) {
                m9824c(R.string.device_uniit_wati);
            } else {
                m9824c(R.string.disconnect_str);
            }
            m10265i();
        }
    }

    private void m10265i() {
        com.yf.gattlib.p117p.ProGuard.m8292a("OneDailyFragment \u505c\u6b62\u8df3\u52a8\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01");
        if (!com.yf.smart.weloopx.p145g.ProGuard.m11367a(this.f8255w)) {
            this.f8255w = com.yf.smart.weloopx.p145g.ProGuard.m11348a("yyyy-MM-dd");
            com.yf.lib.p135a.ProGuard.m8508a().m8614c(new com.yf.smart.weloopx.event.ProGuard());
        }
        if (this.f8233a != null) {
            this.f8233a.post(new bd(this));
        }
    }

    public void m10272a(int i, String str) {
        switch (i) {
            case ErrCode.ERR_USER_CANCEL /*-2*/:
                com.yf.lib.p135a.ProGuard.m8508a().m8614c(new InvalidAccessTokenEvent());
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                m10251a(com.yf.smart.weloopx.p140b.ProGuard.m10660a().m10675b(this.f8248p), com.yf.smart.weloopx.p140b.ProGuard.m10660a().m10661a(this.f8248p));
                break;
        }
        m10265i();
        this.f8233a.getLoadingLayoutProxy().setLastUpdatedLabel(this.f8254v);
        double b = com.yf.smart.weloopx.p145g.ProGuard.m11351b(this.f8248p);
        com.yf.gattlib.p117p.ProGuard.m8292a("OneDailyFragment happendate = " + this.f8248p + " \u8ddd\u79bb\u4eca\u5929\u76f8\u5dee = " + b);
        if (b <= 7.0d && this.f8247o != null) {
            this.f8247o.m9826a();
        }
    }

    private boolean m10268j() {
        if (!isAdded() || this.f8252t.m11306a(getActivity())) {
            return true;
        }
        m9824c(R.string.net_aviable);
        return false;
    }

    public void m10271a(int i, int i2) {
        m9821a(new bf(this, i, i2));
    }

    public void m10273b() {
        if (com.yf.smart.weloopx.p145g.ProGuard.m11367a(this.f8248p)) {
            this.f8245m.setText(R.string.today);
            this.f8246n.setVisibility(8);
        } else if (com.yf.smart.weloopx.p145g.ProGuard.m11370b(this.f8248p)) {
            this.f8245m.setText(R.string.yesterday);
            this.f8246n.setVisibility(0);
            this.f8246n.setOnClickListener(new bg(this));
        } else {
            this.f8245m.setText(this.f8248p);
            this.f8246n.setVisibility(0);
            this.f8246n.setOnClickListener(new bh(this));
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        Log.e("OneDailyFragment", " onActivityCreated()");
    }

    public void onStart() {
        super.onStart();
        Log.e("OneDailyFragment", " onStart() happenDate " + this.f8248p);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Log.e("OneDailyFragment", " onActivityResult() ");
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Log.e("OneDailyFragment", " onConfigurationChanged() ");
    }

    public void onDestroy() {
        Log.e("OneDailyFragment", " onDestroy() ");
        super.onDestroy();
    }

    public void onPause() {
        super.onPause();
        Log.e("OneDailyFragment", " onPause() ");
    }

    public void onSaveInstanceState(Bundle bundle) {
        Log.e("OneDailyFragment", " onSaveInstanceState() happenDate = " + this.f8248p);
        if (!TextUtils.isEmpty(this.f8248p)) {
            Log.e("OneDailyFragment", " onSaveInstanceState isSave");
            bundle.putString("happenDate", this.f8248p);
        }
        super.onSaveInstanceState(bundle);
    }

    public void onStop() {
        super.onStop();
        Log.e("OneDailyFragment", " onStop() ");
    }

    public void onViewStateRestored(Bundle bundle) {
        super.onViewStateRestored(bundle);
        Log.e("OneDailyFragment", " onViewStateRestored() ");
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Log.e("OneDailyFragment", " onViewCreated() ");
    }
}
