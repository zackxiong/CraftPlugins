package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.p038b.p039a.ProGuard;
import com.yf.smart.weloopx.data.models.RankingUser;
import com.yf.smart.weloopx.dist.R;
import java.util.List;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.bt */
public class bt extends ProGuard {
    private static String f8308a;
    private int f8309b;
    private int[] f8310c;
    private PullToRefreshListView f8311d;
    private ListView f8312e;
    private ProGuard f8313f;
    private boolean f8314g;
    private boolean f8315h;
    private ProGuard f8316i;
    private com.yf.gattlib.p110c.ProGuard f8317j;
    private int f8318k;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.bt.a */
    private class ProGuard extends BaseAdapter {
        final /* synthetic */ bt f8305a;
        private List<RankingUser> f8306b;
        private int f8307c;

        private ProGuard(bt btVar) {
            this.f8305a = btVar;
            this.f8307c = 0;
        }

        public void m10314a(List<RankingUser> list) {
            this.f8306b = list;
            notifyDataSetChanged();
        }

        public int getCount() {
            if (this.f8306b == null) {
                return 0;
            }
            return this.f8306b.size();
        }

        public Object getItem(int i) {
            return this.f8306b.get(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            RankingUser rankingUser = (RankingUser) this.f8306b.get(i);
            if (view == null) {
                view = LayoutInflater.from(this.f8305a.getActivity()).inflate(R.layout.ranking_item, null);
            }
            com.yf.smart.weloopx.android.ui.widget.ProGuard a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(view);
            if (i >= 3 || this.f8305a.getArguments().getInt(com.umeng.update.ProGuard.f5475c) != 1) {
                a.f8643d.setText((i + 1) + ".");
                a.f8643d.setBackgroundColor(0);
            } else {
                a.f8643d.setText("");
                a.f8643d.setBackgroundResource(this.f8305a.f8310c[i]);
            }
            a.f8640a.setText(rankingUser.getNickname());
            a.f8641b.setText(this.f8305a.m9825d(R.string.this_week) + this.f8305a.m10321b(String.valueOf(rankingUser.getCalorie())) + this.f8305a.getResources().getString(R.string.item_calories));
            view.setTag(rankingUser);
            this.f8305a.f8316i.m3884a(a.f8644e, rankingUser.getHeadPicUrl());
            return view;
        }
    }

    public bt() {
        this.f8309b = 1;
        this.f8310c = new int[]{R.drawable.number_one, R.drawable.number_two, R.drawable.number_three};
    }

    static {
        f8308a = "RankingListFragment";
    }

    public static bt m10315a(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt(com.umeng.update.ProGuard.f5475c, i);
        bt btVar = new bt();
        btVar.setArguments(bundle);
        return btVar;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    public void onStart() {
        super.onStart();
    }

    public void onResume() {
        super.onResume();
        m10330f();
    }

    public void onPause() {
        super.onPause();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        m10322b();
        m10327d();
        View inflate = layoutInflater.inflate(R.layout.ranking_list, null);
        m10318a(inflate);
        return inflate;
    }

    private void m10322b() {
        this.f8316i = com.yf.smart.weloopx.p143f.ProGuard.m11184a();
        this.f8313f = new ProGuard();
        this.f8317j = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q();
        this.f8314g = true;
        this.f8315h = false;
        this.f8318k = getArguments().getInt(com.umeng.update.ProGuard.f5475c);
    }

    private void m10327d() {
        getLoaderManager().initLoader(0, null, new bu(this));
    }

    private void m10318a(View view) {
        this.f8311d = (PullToRefreshListView) view.findViewById(R.id.pull_list);
        if (this.f8318k == 0) {
            this.f8311d.setMode(com.handmark.pulltorefresh.library.ProGuard.ProGuard.PULL_FROM_END);
        }
        this.f8311d.setOnRefreshListener(new bw(this));
        this.f8311d.setRefreshing(true);
        this.f8311d.getLoadingLayoutProxy().setLastUpdatedLabel(this.f8317j.getString("KEY_RANK_TIME_LABEL", ""));
        this.f8312e = (ListView) this.f8311d.getRefreshableView();
        this.f8312e.setAdapter(this.f8313f);
        this.f8312e.setOnItemClickListener(new bx(this));
    }

    private void m10329e() {
        if (isAdded()) {
            getLoaderManager().getLoader(0).forceLoad();
        }
    }

    private void m10330f() {
        if (!this.f8315h && isAdded()) {
            this.f8315h = true;
            com.yf.smart.weloopx.p140b.ProGuard.m10660a().m10665a(this.f8318k, new by(this));
        }
    }

    private void m10333g() {
        m9821a(new bz(this));
    }

    private String m10321b(String str) {
        try {
            str = String.valueOf((int) Math.rint(Double.parseDouble(str)));
        } catch (Exception e) {
        }
        return str;
    }
}
