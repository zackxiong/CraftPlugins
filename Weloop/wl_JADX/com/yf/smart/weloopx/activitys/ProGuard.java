package com.yf.smart.weloopx.activitys;

import android.content.Intent;
import com.google.gson.Gson;
import com.yf.smart.weloopx.data.models.ReturnHeadPicUrlModel;
import com.yf.smart.weloopx.dist.R;

/* renamed from: com.yf.smart.weloopx.activitys.o */
class ProGuard extends com.yf.smart.weloopx.p140b.p141b.ProGuard {
    final /* synthetic */ String f7104a;
    final /* synthetic */ String f7105b;
    final /* synthetic */ RegisterPhoneActivity1 f7106c;

    ProGuard(RegisterPhoneActivity1 registerPhoneActivity1, String str, String str2) {
        this.f7106c = registerPhoneActivity1;
        this.f7104a = str;
        this.f7105b = str2;
    }

    public void m9012a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        super.m9010a(proGuard, str);
        this.f7106c.m8796f();
        this.f7106c.m8858a(this.f7106c.getString(R.string.response_timeout));
        com.yf.gattlib.p117p.ProGuard.m8297b("RegisterPhoneActivity1 \u4e0a\u4f20\u5931\u8d25 msg = " + str);
    }

    public void m9013a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        com.yf.gattlib.p117p.ProGuard.m8297b("RegisterPhoneActivity1 \u4e0a\u4f20success result = " + ((String) proGuard.f2767a) + ", \u4fdd\u5b58\u7684nickname = " + this.f7104a + ", accessToken = " + this.f7105b);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11271a((String) proGuard.f2767a)) {
            com.yf.gattlib.p117p.ProGuard.m8297b("RegisterPhoneActivity1 &&&&& accountInfo Save user info");
            this.f7106c.f6968q.setHeadPicAddress(((ReturnHeadPicUrlModel) new Gson().fromJson((String) proGuard.f2767a, ReturnHeadPicUrlModel.class)).getHeadPicUrl());
            com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10764a(this.f7106c.f6968q);
            Intent intent = new Intent();
            intent.putExtra("set_target", this.f7106c.f6964m);
            intent.putExtra(this.f7106c.f6962k, this.f7106c.f6963l);
            intent.setClass(this.f7106c, UserInfoSetting.class);
            this.f7106c.startActivity(intent);
            if (!this.f7106c.f6964m) {
                this.f7106c.finish();
            }
        } else {
            this.f7106c.m8792b(R.string.sync_status_upload_fail_check_net);
        }
        this.f7106c.m8854i();
    }
}
