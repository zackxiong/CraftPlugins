package com.yf.smart.weloopx.android.ui.p144a;

import android.app.LoaderManager;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yf.smart.weloopx.android.ui.widget.ChartView;
import com.yf.smart.weloopx.dist.R;
import java.util.List;

/* renamed from: com.yf.smart.weloopx.android.ui.a.e */
public class ProGuard extends ProGuard {
    public ProGuard(Context context, LoaderManager loaderManager) {
        super(context, loaderManager);
    }

    public void m9164a(String str, List<com.yf.smart.weloopx.android.ui.p147b.ProGuard> list) {
        for (int i = -com.yf.smart.weloopx.p145g.ProGuard.m11374a(str); i <= 1; i++) {
            com.yf.smart.weloopx.android.ui.p147b.ProGuard proGuard = new com.yf.smart.weloopx.android.ui.p147b.ProGuard();
            proGuard.m10138a(com.yf.smart.weloopx.p145g.ProGuard.m11373a(i));
            proGuard.m10142a(com.yf.smart.weloopx.p145g.ProGuard.m11379d(i));
            proGuard.m10139a(com.yf.smart.weloopx.p145g.ProGuard.m11377b(i));
            proGuard.m10144b(com.yf.smart.weloopx.p145g.ProGuard.m11377b(i - 1));
            proGuard.m10146b(com.yf.smart.weloopx.p145g.ProGuard.m11376a(m9158b(), i));
            proGuard.m10141a(com.yf.smart.weloopx.p145g.ProGuard.m11382g(i));
            list.add(proGuard);
        }
    }

    public void m9165a(List<com.yf.smart.weloopx.android.ui.p147b.ProGuard> list) {
        super.m9157a((List) list);
    }

    public int m9163a() {
        return (com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10778b() + "CalorieWeek").hashCode();
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(m9158b()).inflate(R.layout.statistics_item, null);
        com.yf.smart.weloopx.android.ui.p147b.ProGuard proGuard = (com.yf.smart.weloopx.android.ui.p147b.ProGuard) getItem(i);
        ((TextView) inflate.findViewById(R.id.label)).setText(proGuard.m10143b());
        com.yf.smart.weloopx.android.ui.widget.ProGuard.m10595b(m9158b(), (ChartView) inflate.findViewById(R.id.chart), proGuard.m10152g(), 1700.0f, proGuard.m10148c(), proGuard.m10137a());
        return inflate;
    }
}
