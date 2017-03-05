package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.google.gson.Gson;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.yf.smart.weloopx.android.ui.p144a.ProGuard;
import com.yf.smart.weloopx.data.models.Friendmodel;
import com.yf.smart.weloopx.data.models.Friendmodels;
import com.yf.smart.weloopx.dist.R;
import java.util.ArrayList;
import java.util.Collection;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.bl */
public class bl extends ProGuard {
    public static String f8279a;
    public static boolean f8280b;
    private static String f8281c;
    private PullToRefreshListView f8282d;
    private ListView f8283e;
    private ProGuard f8284f;
    private com.yf.gattlib.p110c.ProGuard f8285g;
    private TextView f8286h;
    private int f8287i;
    private com.yf.smart.weloopx.data.ProGuard f8288j;
    private ArrayList<Friendmodel> f8289k;
    private aw f8290l;
    private boolean f8291m;
    private String f8292n;
    private com.handmark.pulltorefresh.library.ProGuard.ProGuard<ListView> f8293o;
    private com.p038b.p039a.p048d.ProGuard f8294p;
    private BroadcastReceiver f8295q;

    public bl() {
        this.f8287i = 1;
        this.f8289k = new ArrayList();
        this.f8291m = true;
        this.f8292n = "";
        this.f8293o = new bm(this);
        this.f8295q = new bs(this);
    }

    static {
        f8279a = "ACTION_DEL_FRIEND";
        f8281c = "RankingFriendFragment";
        f8280b = false;
    }

    public static bl m10282a() {
        Bundle bundle = new Bundle();
        bl blVar = new bl();
        blVar.setArguments(bundle);
        return blVar;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        m10294e();
        m10290b(getResources().getString(R.string.downloading));
        m10305j();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.ranking_list, null);
        m10284a(inflate);
        m10289b(inflate);
        m10296f();
        return inflate;
    }

    public void onStart() {
        super.onStart();
    }

    public void onResume() {
        super.onResume();
        this.f8289k.clear();
        this.f8287i = 1;
        m10307a(false);
    }

    public void onPause() {
        super.onPause();
        m10308b();
    }

    public void onDetach() {
        com.yf.gattlib.p108a.ProGuard.m7347a().m7358b(this.f8295q);
        m10308b();
        super.onDetach();
    }

    private void m10294e() {
        this.f8288j = new com.yf.smart.weloopx.data.ProGuard(getActivity());
        this.f8285g = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q();
    }

    private void m10284a(View view) {
        this.f8286h = (TextView) view.findViewById(R.id.rl_tv_no_friend);
    }

    private void m10289b(View view) {
        this.f8282d = (PullToRefreshListView) view.findViewById(R.id.pull_list);
        this.f8282d.setMode(com.handmark.pulltorefresh.library.ProGuard.ProGuard.BOTH);
        this.f8282d.setOnRefreshListener(this.f8293o);
        this.f8282d.getLoadingLayoutProxy().setPullLabel("");
        this.f8282d.getLoadingLayoutProxy().setLastUpdatedLabel(this.f8285g.getString("KEY_RANK_TIME_LABEL", ""));
        this.f8283e = (ListView) this.f8282d.getRefreshableView();
    }

    private void m10296f() {
        this.f8284f = new ProGuard(getActivity(), this.f8289k);
        this.f8283e.setAdapter(this.f8284f);
        this.f8283e.setOnItemClickListener(new bn(this));
    }

    private void m10299g() {
        this.f8282d.post(new bo(this));
    }

    public void m10307a(boolean z) {
        com.yf.gattlib.p117p.ProGuard.m8292a(f8281c + " \u5f00\u59cb\u83b7\u5f97\u597d\u53cb\u4fe1\u606f");
        if (z) {
            this.f8287i = 1;
        }
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("accessToken", com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        int i = this.f8287i;
        this.f8287i = i + 1;
        proGuard.m4068a("pageNum", String.valueOf(i));
        proGuard.m4068a("pageSize", "50");
        this.f8294p = new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11264x(), proGuard, new bp(this, z));
    }

    private void m10301h() {
        this.f8289k.clear();
        this.f8289k.addAll(this.f8289k.size(), this.f8288j.m11074a(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10778b(), true));
        m10283a(0);
    }

    private void m10286a(String str, boolean z) {
        if (this.f8291m || z) {
            this.f8289k.clear();
        }
        int size = this.f8289k.size();
        Friendmodels friendmodels = (Friendmodels) new Gson().fromJson(str, Friendmodels.class);
        this.f8292n = friendmodels.getUserId();
        Collection userList = friendmodels.getUserList();
        this.f8288j.m11075a(userList, com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10778b(), this.f8291m, friendmodels.getUserId());
        this.f8289k.addAll(this.f8289k.size(), userList);
        m10283a(size);
    }

    private void m10283a(int i) {
        m9821a(new bq(this, i));
    }

    private void m10290b(String str) {
        this.f8290l = new aw();
        this.f8290l.m10231e(str);
    }

    private void m10302i() {
        m9821a(new br(this));
    }

    public void m10308b() {
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f8290l);
        if (this.f8294p != null) {
            this.f8294p.m4060a();
        }
    }

    private void m10305j() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(f8279a);
        com.yf.gattlib.p108a.ProGuard.m7347a().m7359b(this.f8295q, intentFilter);
    }
}
