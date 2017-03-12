package com.yf.smart.weloopx.dist.wxapi;

import android.content.Intent;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.yf.smart.weloopx.activitys.RegisterPhoneActivity1;
import com.yf.smart.weloopx.android.ui.activities.MainActivity;
import com.yf.smart.weloopx.data.models.ServerResult;
import com.yf.smart.weloopx.data.models.UserData2;
import com.yf.smart.weloopx.dist.R;

/* renamed from: com.yf.smart.weloopx.dist.wxapi.b */
class ProGuard extends com.p038b.p039a.p048d.p049a.ProGuard<String> {
    final /* synthetic */ String f8902a;
    final /* synthetic */ WXEntryActivity f8903b;

    ProGuard(WXEntryActivity wXEntryActivity, String str) {
        this.f8903b = wXEntryActivity;
        this.f8902a = str;
    }

    public void m11166b() {
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.f8903b.v, this.f8903b.getFragmentManager(), this.f8903b.f8894f);
    }

    public void m11163a(long j, long j2, boolean z) {
    }

    public void m11165a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        this.f8903b.m8796f();
        String str = (String) proGuard.f2767a;
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8903b.f8894f + " \u6839\u541bOpenID\u83b7\u5f97\u7684\u4e2a\u4eba\u4fe1\u606f\u7ed3\u679c  = " + str);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11274d(str)) {
            Gson gson = new Gson();
            if (com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
                UserData2 userData2 = (UserData2) gson.fromJson((String) proGuard.f2767a, UserData2.class);
                if (userData2 != null) {
                    userData2.setOpenId(this.f8902a);
                    this.f8903b.f8900l.m11302a(this.f8903b, userData2.getMobile());
                    this.f8903b.f8900l.m11311b(this.f8903b, this.f8902a);
                    this.f8903b.f8900l.m11304a(userData2);
                    Intent intent = new Intent();
                    if (TextUtils.isEmpty(userData2.getHeadPicUrl())) {
                        intent.setClass(this.f8903b, RegisterPhoneActivity1.class);
                    } else {
                        intent.setClass(this.f8903b, MainActivity.class);
                    }
                    intent.putExtra("IS_WEIXIN_LOGIN", true);
                    this.f8903b.startActivity(intent);
                    return;
                }
                this.f8903b.m11155g(this.f8903b.getString(R.string.login_error));
                return;
            }
            ServerResult serverResult = (ServerResult) gson.fromJson(str, ServerResult.class);
            if (serverResult == null || !serverResult.getResult().equals("1029")) {
                this.f8903b.m11155g(this.f8903b.getString(R.string.login_error));
                return;
            } else {
                this.f8903b.m11142a(this.f8903b.f8899k.getOpenid(), this.f8903b.f8899k.getAccess_token());
                return;
            }
        }
        this.f8903b.m11155g(this.f8903b.getString(R.string.login_error));
    }

    public void m11164a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8903b.f8894f + " A.3 Third login error = " + str);
        this.f8903b.m11155g(this.f8903b.getString(R.string.login_error));
    }
}
