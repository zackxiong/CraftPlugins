package com.yf.smart.weloopx.android.ui.activities;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.p038b.p039a.p048d.p049a.ProGuard;
import com.yf.smart.weloopx.data.models.CheckAccessTokenModel;

/* compiled from: ProGuard */
class ge extends ProGuard<String> {
    final /* synthetic */ SplashScreenActivity f8060a;

    ge(SplashScreenActivity splashScreenActivity) {
        this.f8060a = splashScreenActivity;
    }

    public void m9933b() {
    }

    public void m9930a(long j, long j2, boolean z) {
    }

    public void m9932a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        String str = (String) proGuard.f2767a;
        if (!com.yf.smart.weloopx.p143f.ProGuard.m11274d(str)) {
            this.f8060a.m9597h();
        } else if (com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            Object tokenIsValid = ((CheckAccessTokenModel) new Gson().fromJson(str, CheckAccessTokenModel.class)).getTokenIsValid();
            if (TextUtils.isEmpty(tokenIsValid) || !tokenIsValid.equals("Y")) {
                this.f8060a.m9603c();
            } else {
                this.f8060a.m9598i();
            }
        } else {
            this.f8060a.m9598i();
        }
    }

    public void m9931a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        this.f8060a.m9598i();
    }
}
