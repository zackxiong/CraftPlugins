package com.baidu.android.pushservice;

import com.baidu.android.pushservice.p068b.C0196b.C0198a;

/* renamed from: com.baidu.android.pushservice.q */
class C0330q extends C0198a {
    final /* synthetic */ IPushLightappListener f3402a;
    final /* synthetic */ PushLightapp f3403b;

    C0330q(PushLightapp pushLightapp, IPushLightappListener iPushLightappListener) {
        this.f3403b = pushLightapp;
        this.f3402a = iPushLightappListener;
    }

    public void m5099a(int i, String str) {
        if (this.f3402a != null) {
            this.f3402a.onUnsubscribeResult(i, str);
        }
    }

    public void m5100b(int i, String str) {
    }

    public void m5101c(int i, String str) {
    }
}
