package com.baidu.lbsapi.auth;

import java.util.Hashtable;

/* renamed from: com.baidu.lbsapi.auth.j */
class C0441j implements Runnable {
    final /* synthetic */ int f3751a;
    final /* synthetic */ boolean f3752b;
    final /* synthetic */ String f3753c;
    final /* synthetic */ String f3754d;
    final /* synthetic */ Hashtable f3755e;
    final /* synthetic */ LBSAuthManager f3756f;

    C0441j(LBSAuthManager lBSAuthManager, int i, boolean z, String str, String str2, Hashtable hashtable) {
        this.f3756f = lBSAuthManager;
        this.f3751a = i;
        this.f3752b = z;
        this.f3753c = str;
        this.f3754d = str2;
        this.f3755e = hashtable;
    }

    public void run() {
        if (C0427a.f3727a) {
            C0427a.m5446a("status = " + this.f3751a + "; forced = " + this.f3752b + "checkAK = " + this.f3756f.checkAkChanged(this.f3753c));
        }
        if (this.f3751a == LBSAuthManager.CODE_UNAUTHENTICATE || this.f3752b || this.f3751a == -1 || this.f3756f.checkAkChanged(this.f3753c)) {
            if (C0427a.f3727a) {
                C0427a.m5446a("authenticate sendAuthRequest");
            }
            String[] b = C0429b.m5453b(LBSAuthManager.mContext);
            if (C0427a.f3727a) {
                C0427a.m5446a("authStrings.length:" + b.length);
            }
            if (b == null || b.length <= 1) {
                this.f3756f.sendAuthRequest(this.f3752b, this.f3754d, this.f3755e, this.f3753c);
                return;
            }
            if (C0427a.f3727a) {
                C0427a.m5446a("more sha1 auth");
            }
            this.f3756f.sendAuthRequests(this.f3752b, this.f3754d, this.f3755e, b, this.f3753c);
        } else if (LBSAuthManager.CODE_AUTHENTICATING == this.f3751a) {
            if (C0427a.f3727a) {
                C0427a.m5446a("authenticate wait  ");
            }
            LBSAuthManager.mThreadLooper.m5488b();
            this.f3756f.callbackToMainThread(null, this.f3753c);
        } else {
            if (C0427a.f3727a) {
                C0427a.m5446a("authenticate else  ");
            }
            this.f3756f.callbackToMainThread(null, this.f3753c);
        }
    }
}
