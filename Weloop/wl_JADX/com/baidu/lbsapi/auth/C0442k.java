package com.baidu.lbsapi.auth;

import com.baidu.lbsapi.auth.C0432c.C0430a;

/* renamed from: com.baidu.lbsapi.auth.k */
class C0442k implements C0430a<String> {
    final /* synthetic */ String f3757a;
    final /* synthetic */ LBSAuthManager f3758b;

    C0442k(LBSAuthManager lBSAuthManager, String str) {
        this.f3758b = lBSAuthManager;
        this.f3757a = str;
    }

    public void m5484a(String str) {
        this.f3758b.callbackToMainThread(str, this.f3757a);
    }
}
