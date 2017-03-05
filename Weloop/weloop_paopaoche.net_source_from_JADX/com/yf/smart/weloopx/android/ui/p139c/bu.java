package com.yf.smart.weloopx.android.ui.p139c;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.Loader;
import android.os.Bundle;
import com.yf.gattlib.p117p.ProGuard;
import com.yf.smart.weloopx.data.models.RankingUser;
import java.util.List;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.bu */
class bu implements LoaderCallbacks<List<RankingUser>> {
    final /* synthetic */ bt f8319a;

    bu(bt btVar) {
        this.f8319a = btVar;
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        m10336a(loader, (List) obj);
    }

    public Loader<List<RankingUser>> onCreateLoader(int i, Bundle bundle) {
        return new bv(this, this.f8319a.getActivity());
    }

    public void m10336a(Loader<List<RankingUser>> loader, List<RankingUser> list) {
        this.f8319a.m10333g();
        ProGuard.m8292a(bt.f8308a + " \u4e0b\u8f7d\u540e\u7684\u6392\u884c\u6570\u636e = " + list.size());
        if (this.f8319a.f8314g && (list == null || list.size() == 0)) {
            this.f8319a.f8314g = false;
            this.f8319a.m10330f();
            return;
        }
        this.f8319a.f8313f.m10314a(list);
    }

    public void onLoaderReset(Loader<List<RankingUser>> loader) {
        this.f8319a.f8313f.m10314a(null);
        ProGuard.m8292a(bt.f8308a + " \u4e0b\u8f7d\u6392\u884c onLoaderReset");
    }
}
