package com.yf.smart.weloopx.android.ui.activities;

import com.p038b.p039a.p048d.p049a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class gc extends ProGuard<String> {
    final /* synthetic */ RunningInfoListActivity f8058a;

    gc(RunningInfoListActivity runningInfoListActivity) {
        this.f8058a = runningInfoListActivity;
    }

    public void m9929b() {
        this.f8058a.v.m10231e(this.f8058a.getString(R.string.deleteing));
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.f8058a.v, this.f8058a.getFragmentManager(), "RunningInfoListActivity");
    }

    public void m9926a(long j, long j2, boolean z) {
    }

    public void m9928a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        String str = (String) proGuard.f2767a;
        com.yf.gattlib.p117p.ProGuard.m8292a("RunningInfoListActivity \u5220\u9664\u8dd1\u6b65\u6570\u636e\u6210\u529f\u8fd4\u56de = " + str);
        if (!com.yf.smart.weloopx.p143f.ProGuard.m11274d(str)) {
            this.f8058a.m9571a((int) R.string.del_failed);
        } else if (com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            this.f8058a.f7602j.m11118c(this.f8058a.f7608p);
            this.f8058a.f7603k = this.f8058a.f7602j.m11114a(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10781c(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c()));
            this.f8058a.m9579d();
        } else {
            this.f8058a.m9571a((int) R.string.del_failed);
        }
        this.f8058a.m8796f();
    }

    public void m9927a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        this.f8058a.m9571a((int) R.string.del_failed);
        this.f8058a.m8796f();
    }
}
