package com.baidu.android.pushservice;

import com.baidu.android.pushservice.p068b.C0196b.C0198a;

/* renamed from: com.baidu.android.pushservice.o */
class C0328o extends C0198a {
    final /* synthetic */ IPushLightappListener f3397a;
    final /* synthetic */ PushLightapp f3398b;

    C0328o(PushLightapp pushLightapp, IPushLightappListener iPushLightappListener) {
        this.f3398b = pushLightapp;
        this.f3397a = iPushLightappListener;
    }

    public void m5093a(int i, String str) {
    }

    public void m5094b(int i, String str) {
        if (this.f3397a != null) {
            this.f3397a.onSubscribeResult(i, str);
        }
    }

    public void m5095c(int i, String str) {
    }
}
