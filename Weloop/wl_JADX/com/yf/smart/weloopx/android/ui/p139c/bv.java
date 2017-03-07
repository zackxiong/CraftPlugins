package com.yf.smart.weloopx.android.ui.p139c;

import android.content.AsyncTaskLoader;
import android.content.Context;
import com.yf.smart.weloopx.data.models.RankingUser;
import com.yf.smart.weloopx.p140b.ProGuard;
import java.util.List;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.bv */
class bv extends AsyncTaskLoader<List<RankingUser>> {
    final /* synthetic */ bu f8320a;

    bv(bu buVar, Context context) {
        this.f8320a = buVar;
        super(context);
    }

    public /* synthetic */ Object loadInBackground() {
        return m10337a();
    }

    public List<RankingUser> m10337a() {
        return ProGuard.m10660a().m10676b(this.f8320a.f8319a.getArguments().getInt(com.umeng.update.ProGuard.f5475c));
    }

    protected void onStartLoading() {
        forceLoad();
    }
}
