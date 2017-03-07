package com.yf.smart.weloopx.android.ui.activities;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.p038b.p039a.p048d.p049a.ProGuard;
import com.yf.smart.weloopx.data.models.MsgNotiNumServerResult;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class ds extends ProGuard<String> {
    final /* synthetic */ MainActivity f7925a;

    ds(MainActivity mainActivity) {
        this.f7925a = mainActivity;
    }

    public void m9839b() {
    }

    public void m9836a(long j, long j2, boolean z) {
    }

    public void m9838a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        String str = (String) proGuard.f2767a;
        if (com.yf.smart.weloopx.p143f.ProGuard.m11274d(str) && com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            MsgNotiNumServerResult msgNotiNumServerResult = (MsgNotiNumServerResult) new Gson().fromJson((String) proGuard.f2767a, MsgNotiNumServerResult.class);
            if (msgNotiNumServerResult != null && !TextUtils.isEmpty(msgNotiNumServerResult.getCount())) {
                this.f7925a.f7495B = Integer.parseInt(msgNotiNumServerResult.getCount());
                if (this.f7925a.f7495B > 0) {
                    this.f7925a.f7497D.setCompoundDrawablesWithIntrinsicBounds(null, this.f7925a.getResources().getDrawable(R.drawable.icon_my_msg), null, null);
                } else {
                    this.f7925a.f7497D.setCompoundDrawablesWithIntrinsicBounds(null, this.f7925a.getResources().getDrawable(R.drawable.icon_discover), null, null);
                }
            }
        }
    }

    public void m9837a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        com.yf.gattlib.p117p.ProGuard.m8297b("MainActivity Get friend request failed = " + str);
    }
}
