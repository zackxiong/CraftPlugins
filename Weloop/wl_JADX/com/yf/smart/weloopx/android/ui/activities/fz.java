package com.yf.smart.weloopx.android.ui.activities;

import com.p038b.p039a.p048d.p049a.ProGuard;
import com.yf.smart.weloopx.data.models.ServerRunInfoResponse;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class fz extends ProGuard<String> {
    final /* synthetic */ RunningInfoListActivity f8054a;

    fz(RunningInfoListActivity runningInfoListActivity) {
        this.f8054a = runningInfoListActivity;
    }

    public void m9923b() {
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.f8054a.v, this.f8054a.getFragmentManager(), "RunningInfoListActivity");
    }

    public void m9920a(long j, long j2, boolean z) {
    }

    public void m9922a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        if (this.f8054a.f7605m > 1) {
            this.f8054a.f7606n = this.f8054a.f7603k.size();
        }
        String str = (String) proGuard.f2767a;
        com.yf.gattlib.p117p.ProGuard.m8292a("RunningInfoListActivity \u83b7\u5f97\u8dd1\u6b65\u4fe1\u606f\u6210\u529f\u8fd4\u56de = " + str);
        if (!com.yf.smart.weloopx.p143f.ProGuard.m11274d(str)) {
            this.f8054a.m9571a((int) R.string.get_train_list_failed);
        } else if (com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            ServerRunInfoResponse serverRunInfoResponse = (ServerRunInfoResponse) this.f8054a.f7601i.fromJson(str, ServerRunInfoResponse.class);
            this.f8054a.f7603k = serverRunInfoResponse.runinfo;
            this.f8054a.f7602j.m11115a(serverRunInfoResponse.runinfo);
            this.f8054a.f7603k = this.f8054a.f7602j.m11114a(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10781c(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c()));
            this.f8054a.m9579d();
        } else {
            this.f8054a.m9571a((int) R.string.get_train_list_failed);
        }
        this.f8054a.m9580e();
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f8054a.v);
    }

    public void m9921a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        this.f8054a.m9571a((int) R.string.get_train_list_failed);
        this.f8054a.m9580e();
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f8054a.v);
    }
}
