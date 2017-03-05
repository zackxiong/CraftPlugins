package com.yf.smart.weloopx.android.ui.activities;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.p038b.p039a.p048d.p049a.ProGuard;
import com.yf.smart.weloopx.data.models.MsgNotiNumServerResult;

/* compiled from: ProGuard */
class ev extends ProGuard<String> {
    final /* synthetic */ el f8016a;

    ev(el elVar) {
        this.f8016a = elVar;
    }

    public void m9911b() {
    }

    public void m9908a(long j, long j2, boolean z) {
    }

    public void m9910a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        String str = (String) proGuard.f2767a;
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8016a.f7979b + " \u662f\u5426\u6709\u6d88\u606f\u901a\u77e5   = " + str);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11274d(str) && com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            MsgNotiNumServerResult msgNotiNumServerResult = (MsgNotiNumServerResult) new Gson().fromJson((String) proGuard.f2767a, MsgNotiNumServerResult.class);
            if (msgNotiNumServerResult == null || TextUtils.isEmpty(msgNotiNumServerResult.getCount())) {
                com.yf.gattlib.p117p.ProGuard.m8297b(this.f8016a.f7979b + " YOU WEN TI");
                return;
            }
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f8016a.f7979b + " \u8981\u663e\u793a\u7684\u6d88\u606f\u901a\u77e5\u6570\u91cf = " + msgNotiNumServerResult.getCount());
            this.f8016a.m9821a(new ew(this, msgNotiNumServerResult));
        }
    }

    public void m9909a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        com.yf.gattlib.p117p.ProGuard.m8297b(this.f8016a.f7979b + " Get friend request failed = " + str);
    }
}
