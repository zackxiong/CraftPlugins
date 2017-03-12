package com.yf.smart.weloopx.android.ui.activities;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.yf.smart.weloopx.android.ui.p139c.ProGuard;
import com.yf.smart.weloopx.android.ui.p139c.ba;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class di extends ProGuard implements OnClickListener, ba.ProGuard {
    public static boolean f7902e;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f7903a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558782)
    Button f7904b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f7905c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558784)
    View f7906d;
    private ViewPager f7907f;
    private View f7908g;
    private com.yf.smart.weloopx.p145g.ProGuard f7909h;
    private boolean f7910i;
    private com.yf.smart.weloopx.android.ui.p144a.ProGuard f7911j;
    private String f7912k;
    private BroadcastReceiver f7913l;

    public di() {
        this.f7910i = false;
        this.f7913l = new dk(this);
    }

    static {
        f7902e = false;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7912k = com.yf.smart.weloopx.p145g.ProGuard.m11348a("yyyy-MM-dd");
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        com.yf.gattlib.p117p.ProGuard.m8292a("GoalFragment onAttach");
        this.f7909h = new com.yf.smart.weloopx.p145g.ProGuard();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        com.yf.gattlib.p117p.ProGuard.m8292a("GoalFragment onCreateView()");
        this.f7908g = layoutInflater.inflate(R.layout.goal, null);
        com.p038b.p039a.ProGuard.m4087a((Object) this, this.f7908g);
        this.f7903a.setVisibility(this.f7910i ? 0 : 8);
        this.f7903a.setBackgroundResource(R.drawable.btn_running_training);
        this.f7903a.setCompoundDrawables(null, null, null, null);
        this.f7903a.setText("");
        this.f7903a.setWidth(this.f7909h.m11296a(getActivity(), 30.0f));
        this.f7903a.setOnClickListener(this);
        this.f7904b.setVisibility(0);
        this.f7904b.setBackgroundResource(R.drawable.btn_static);
        this.f7904b.setOnClickListener(this);
        this.f7905c.setText(getResources().getString(R.string.sport_goal));
        this.f7911j = new com.yf.smart.weloopx.android.ui.p144a.ProGuard(getChildFragmentManager());
        this.f7907f = (ViewPager) this.f7908g.findViewById(R.id.everypagerday);
        this.f7907f.setAdapter(this.f7911j);
        this.f7907f.setCurrentItem(this.f7907f.getAdapter().m66b() - 1);
        com.yf.lib.p135a.ProGuard.m8508a().m8608a((Object) this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.yf.weloopx.runtrain.new");
        getActivity().registerReceiver(this.f7913l, intentFilter);
        return this.f7908g;
    }

    public void onDestroyView() {
        com.yf.lib.p135a.ProGuard.m8508a().m8611b((Object) this);
        super.onDestroyView();
    }

    @com.yf.lib.squareup.otto.ProGuard
    public void onNewDayEvent(com.yf.smart.weloopx.event.ProGuard proGuard) {
        m9821a(new dj(this));
    }

    public void onResume() {
        int i = 0;
        super.onResume();
        com.yf.gattlib.p117p.ProGuard.m8292a("GoalFragment onResume()");
        this.f7910i = com.yf.smart.weloopx.p146c.ProGuard.m10913d();
        this.f7903a.setVisibility(this.f7910i ? 0 : 8);
        View view = this.f7906d;
        if (!(com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().getBoolean("KEY_IS_HAVE_NEW_RUNNING_TRAIN", false) && this.f7910i)) {
            i = 8;
        }
        view.setVisibility(i);
        if (!com.yf.smart.weloopx.p145g.ProGuard.m11367a(this.f7912k)) {
            this.f7912k = com.yf.smart.weloopx.p145g.ProGuard.m11348a("yyyy-MM-dd");
            com.yf.lib.p135a.ProGuard.m8508a().m8614c(new com.yf.smart.weloopx.event.ProGuard());
        }
    }

    public void onDetach() {
        super.onDetach();
        if (isAdded()) {
            getActivity().unregisterReceiver(this.f7913l);
        }
    }

    public void onDestroy() {
        super.onDestroy();
    }

    public void onStart() {
        super.onStart();
        com.yf.gattlib.p117p.ProGuard.m8292a("GoalFragment onStart");
    }

    public void m9829a() {
        this.f7907f.setCurrentItem(this.f7907f.getAdapter().m66b() - 1);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.at_btn_left:
                com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().m7414a("KEY_IS_HAVE_NEW_RUNNING_TRAIN", false);
                Intent intent = new Intent("android.download.upload.locationinfo");
                intent.putExtra("DATE", com.yf.smart.weloopx.p145g.ProGuard.m11348a("yyyy-MM-dd"));
                intent.putExtra("IS_CUR_DATE", false);
                com.yf.gattlib.p108a.ProGuard.m7347a().m7362c(intent);
                startActivity(new Intent(this.f7908g.getContext(), RunningInfoListActivity.class));
                this.f7906d.setVisibility(8);
            case R.id.at_btn_right:
                startActivity(new Intent(this.f7908g.getContext(), StatisticsActivity2.class));
            default:
        }
    }
}
