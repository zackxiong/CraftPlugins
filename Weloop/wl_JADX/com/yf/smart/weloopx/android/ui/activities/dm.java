package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.yf.smart.weloopx.activitys.RegisterStart;
import com.yf.smart.weloopx.data.models.CheckAccessTokenModel;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.p140b.p141b.ProGuard;

/* compiled from: ProGuard */
class dm extends ProGuard {
    final /* synthetic */ MainActivity f7917a;

    dm(MainActivity mainActivity) {
        this.f7917a = mainActivity;
    }

    public void m9833a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        String str = (String) proGuard.f2767a;
        if (!com.yf.smart.weloopx.p143f.ProGuard.m11274d(str) && com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            Object tokenIsValid = ((CheckAccessTokenModel) new Gson().fromJson((String) proGuard.f2767a, CheckAccessTokenModel.class)).getTokenIsValid();
            if (!TextUtils.isEmpty(tokenIsValid) && tokenIsValid.equals("N")) {
                com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10779b("");
                this.f7917a.m9451b((int) R.string.invalid_token);
                this.f7917a.startActivity(new Intent(this.f7917a, RegisterStart.class));
                this.f7917a.finish();
            }
        }
    }

    public void m9832a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
    }
}
