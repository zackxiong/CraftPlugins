package com.baidu.lbsapi.auth;

import com.baidu.lbsapi.auth.C0437f.C0435a;

/* renamed from: com.baidu.lbsapi.auth.l */
class C0443l implements C0435a<String> {
    final /* synthetic */ String f3759a;
    final /* synthetic */ LBSAuthManager f3760b;

    C0443l(LBSAuthManager lBSAuthManager, String str) {
        this.f3760b = lBSAuthManager;
        this.f3759a = str;
    }

    public void m5486a(String str) {
        this.f3760b.callbackToMainThread(str, this.f3759a);
    }
}
