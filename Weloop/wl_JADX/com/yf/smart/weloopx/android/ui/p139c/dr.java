package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshGridView;
import com.yf.smart.weloopx.android.ui.p139c.dm.ProGuard;
import com.yf.smart.weloopx.data.models.Watchface;
import com.yf.smart.weloopx.data.models.WatchfaceListResult;
import com.yf.smart.weloopx.dist.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.dr */
public class dr extends ProGuard implements ProGuard, dp.ProGuard {
    private GridView f8451a;
    private PullToRefreshGridView f8452b;
    private ProGuard f8453c;
    private int f8454d;
    private List<Watchface> f8455e;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.dr.a */
    private class ProGuard extends BaseAdapter {
        final /* synthetic */ dr f8450a;

        private ProGuard(dr drVar) {
            this.f8450a = drVar;
        }

        public int getCount() {
            return this.f8450a.f8455e.size();
        }

        public Object getItem(int i) {
            return this.f8450a.f8455e.get(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(this.f8450a.getActivity()).inflate(R.layout.watchface_item, null);
            }
            Watchface watchface = (Watchface) this.f8450a.f8455e.get(i);
            ((TextView) view.findViewById(R.id.watchface_author)).setText(watchface.getWatchName());
            com.yf.smart.weloopx.p143f.ProGuard.m11186b().m3884a((ImageView) view.findViewById(R.id.watchface_img), watchface.getWatchfaceImageURL());
            view.setTag(watchface);
            return view;
        }
    }

    public dr() {
        this.f8455e = new ArrayList();
    }

    public static dr m10477a(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("1", i);
        dr drVar = new dr();
        drVar.setArguments(bundle);
        return drVar;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f8454d = getArguments().getInt("1");
        this.f8453c = new ProGuard();
        m10478a();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.watch_fragment, viewGroup, false);
        this.f8452b = (PullToRefreshGridView) inflate.findViewById(R.id.pull_grid);
        this.f8452b.setMode(com.handmark.pulltorefresh.library.ProGuard.ProGuard.PULL_FROM_START);
        this.f8452b.setOnPullEventListener(new ds(this));
        this.f8451a = (GridView) this.f8452b.getRefreshableView();
        this.f8451a.setAdapter(this.f8453c);
        this.f8451a.setOnItemClickListener(new dt(this));
        return inflate;
    }

    public void m10482a(int i, Watchface watchface) {
        if (i == 0) {
            ProGuard.m10488a(getChildFragmentManager(), watchface.getWatchNo());
        }
    }

    private void m10478a() {
        dp.m10468a(getChildFragmentManager(), this.f8454d);
    }

    public void m10483a(int i, String str, WatchfaceListResult watchfaceListResult) {
        if (i != 0) {
            m9822a(m9825d(R.string.error_getwatchface));
        } else if (watchfaceListResult == null || watchfaceListResult.getDataList() == null) {
            m9824c(R.string.no_watchface);
        } else {
            m9821a(new du(this, watchfaceListResult));
        }
    }
}
