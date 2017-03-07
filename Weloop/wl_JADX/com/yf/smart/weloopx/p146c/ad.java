package com.yf.smart.weloopx.p146c;

import com.yf.gattlib.client.p113b.p114a.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.c.ad */
class ad implements ProGuard {
    final /* synthetic */ ProGuard f8700a;

    ad(ProGuard proGuard) {
        this.f8700a = proGuard;
    }

    public void m10832a() {
        this.f8700a.m10942c("SyncDeviceDataUtil 11. onGetCaloriesTimeout");
        this.f8700a.m10926a(-1, 0, "");
    }

    public void m10834b() {
        this.f8700a.m10942c("SyncDeviceDataUtil 8. \u5f00\u59cb\u8bfb\u53d6\u603b\u6b65\u6570onGetCaloriesStart");
    }

    public void m10833a(com.yf.gattlib.client.p113b.p115b.ProGuard proGuard) {
        this.f8700a.f8769o = proGuard;
        if (proGuard != null) {
            this.f8700a.m10942c("SyncDeviceDataUtil 9. onGetCalories calorie = " + proGuard.f5788b + ", distance = " + proGuard.f5789c + ", stepCount = " + proGuard.f5787a);
        }
    }

    public void m10835c() {
        this.f8700a.m10942c("SyncDeviceDataUtil 10. onGetCaloriesFinish ");
        this.f8700a.f8760e.postDelayed(new ae(this), 1000);
    }

    public void m10836d() {
        this.f8700a.m10942c("SyncDeviceDataUtil 12. onGetCaloriesFail");
        this.f8700a.m10926a(-1, 0, "");
    }
}
