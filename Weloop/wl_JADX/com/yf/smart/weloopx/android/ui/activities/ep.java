package com.yf.smart.weloopx.android.ui.activities;

import android.text.TextUtils;
import com.yf.smart.weloopx.data.models.UserProfileResult;
import com.yf.smart.weloopx.event.InvalidAccessTokenEvent;
import com.yf.smart.weloopx.p140b.p141b.ProGuard;

/* compiled from: ProGuard */
class ep extends ProGuard {
    final /* synthetic */ el f8008a;

    ep(el elVar) {
        this.f8008a = elVar;
    }

    public void m9906a(UserProfileResult userProfileResult) {
        this.f8008a.m9895o();
        this.f8008a.f7980c = userProfileResult;
        this.f8008a.m9897p();
    }

    public void m9907b(String str) {
        this.f8008a.m9895o();
        if (com.yf.smart.weloopx.p143f.ProGuard.m11276f(str)) {
            com.yf.lib.p135a.ProGuard.m8508a().m8614c(new InvalidAccessTokenEvent());
        } else if (!TextUtils.isEmpty(str)) {
            String a = com.yf.smart.weloopx.p143f.ProGuard.m11269a(com.yf.smart.weloopx.p143f.ProGuard.m11275e(str), this.f8008a.getActivity());
            if (!TextUtils.isEmpty(a)) {
                this.f8008a.m9822a(a);
            }
        }
    }
}
