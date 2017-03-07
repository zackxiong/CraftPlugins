package com.baidu.android.pushservice;

import com.baidu.android.pushservice.p068b.C0196b.C0198a;

/* renamed from: com.baidu.android.pushservice.r */
class C0331r extends C0198a {
    final /* synthetic */ IPushLightappListener f3404a;
    final /* synthetic */ PushLightapp f3405b;

    C0331r(PushLightapp pushLightapp, IPushLightappListener iPushLightappListener) {
        this.f3405b = pushLightapp;
        this.f3404a = iPushLightappListener;
    }

    public void m5102a(int i, String str) {
    }

    public void m5103b(int i, String str) {
    }

    public void m5104c(int i, String str) {
        if (this.f3404a != null) {
            this.f3404a.onUnbindLightResult(i, str);
        }
    }
}
