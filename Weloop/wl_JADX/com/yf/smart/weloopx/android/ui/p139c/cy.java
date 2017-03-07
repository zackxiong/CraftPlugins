package com.yf.smart.weloopx.android.ui.p139c;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.yf.smart.weloopx.data.models.CheckAccessTokenModel;
import com.yf.smart.weloopx.data.models.ServerResult;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.p140b.p141b.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.cy */
class cy extends ProGuard {
    final /* synthetic */ cw f8391a;

    cy(cw cwVar) {
        this.f8391a = cwVar;
    }

    public void m10406a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        String str = (String) proGuard.f2767a;
        if (!com.yf.smart.weloopx.p143f.ProGuard.m11274d(str)) {
            com.yf.gattlib.p117p.ProGuard.m8245a("server error check token:\n" + str);
            this.f8391a.m10399a(-1, this.f8391a.m10172c(R.string.check_token_fail_server_error));
        } else if (com.yf.smart.weloopx.p143f.ProGuard.m11271a((String) proGuard.f2767a)) {
            Object tokenIsValid = ((CheckAccessTokenModel) new Gson().fromJson((String) proGuard.f2767a, CheckAccessTokenModel.class)).getTokenIsValid();
            if (TextUtils.isEmpty(tokenIsValid) || !tokenIsValid.equals("N")) {
                this.f8391a.m10404f();
            } else {
                this.f8391a.m10399a(-2, this.f8391a.m10172c(R.string.invalid_token));
            }
        } else {
            this.f8391a.m10400a(-1, this.f8391a.m10172c(R.string.check_token_fail), ServerResult.getMessage(str));
        }
    }

    public void m10405a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        this.f8391a.m10399a(-1, this.f8391a.m10172c(R.string.check_token_fail_check_net));
    }
}
