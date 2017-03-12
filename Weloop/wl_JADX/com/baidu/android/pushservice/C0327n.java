package com.baidu.android.pushservice;

import com.baidu.android.pushservice.p068b.C0196b.C0198a;

/* renamed from: com.baidu.android.pushservice.n */
class C0327n extends C0198a {
    final /* synthetic */ IPushLightappListener f3395a;
    final /* synthetic */ PushLightapp f3396b;

    C0327n(PushLightapp pushLightapp, IPushLightappListener iPushLightappListener) {
        this.f3396b = pushLightapp;
        this.f3395a = iPushLightappListener;
    }

    public void m5090a(int i, String str) {
    }

    public void m5091b(int i, String str) {
        if (this.f3395a != null) {
            this.f3395a.onSubscribeResult(i, str);
        }
    }

    public void m5092c(int i, String str) {
    }
}
