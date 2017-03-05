package com.yf.smart.weloopx.activitys;

import com.google.gson.Gson;
import com.p038b.p039a.p048d.p049a.ProGuard;
import com.yf.smart.weloopx.data.models.UserData2;

/* compiled from: ProGuard */
class aa extends ProGuard<String> {
    final /* synthetic */ ResetPassword f7076a;

    aa(ResetPassword resetPassword) {
        this.f7076a = resetPassword;
    }

    public void m8960b() {
    }

    public void m8957a(long j, long j2, boolean z) {
    }

    public void m8959a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        String str = (String) proGuard.f2767a;
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7076a.f7018j + " A.2 Third-party login result  = " + str);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11274d(str) && com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            UserData2 userData2 = (UserData2) new Gson().fromJson((String) proGuard.f2767a, UserData2.class);
            userData2.setOpenId(this.f7076a.f7024p);
            this.f7076a.f7027s.m11311b(this.f7076a, this.f7076a.f7024p);
            this.f7076a.f7027s.m11304a(userData2);
            return;
        }
        this.f7076a.finish();
    }

    public void m8958a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7076a.f7018j + " A.3 Third login error = " + str);
        this.f7076a.finish();
    }
}
