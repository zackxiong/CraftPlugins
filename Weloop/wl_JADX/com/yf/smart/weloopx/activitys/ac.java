package com.yf.smart.weloopx.activitys;

import android.app.DialogFragment;
import android.content.Intent;
import com.yf.smart.weloopx.android.ui.p139c.da;
import com.yf.smart.weloopx.data.models.DailyGain;
import com.yf.smart.weloopx.data.models.UserData;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.event.InvalidAccessTokenEvent;
import com.yf.smart.weloopx.p140b.p141b.ProGuard;

/* compiled from: ProGuard */
class ac extends ProGuard {
    final /* synthetic */ DialogFragment f7078a;
    final /* synthetic */ UserData f7079b;
    final /* synthetic */ TargetSetting f7080c;

    ac(TargetSetting targetSetting, DialogFragment dialogFragment, UserData userData) {
        this.f7080c = targetSetting;
        this.f7078a = dialogFragment;
        this.f7079b = userData;
    }

    public void m8967b(String str) {
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f7078a);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            com.yf.gattlib.p117p.ProGuard.m8297b("TargetSetting \u8bbe\u7f6e\u5b8c\u6210\u7f51\u7edc\u7aef\u7684\u8fd0\u52a8\u76ee\u6807\u540e\uff0c\u4fdd\u5b58\u672c\u5730\u4fe1\u606f");
            com.yf.gattlib.p108a.ProGuard.m7368a().m7375e().m7362c(new Intent("com.yf.weloopx.newtarget"));
            com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10764a(this.f7079b);
            DailyGain b = com.yf.smart.weloopx.p140b.ProGuard.m10660a().m10675b(this.f7080c.m8925e());
            b.setCalorieGoal((double) this.f7080c.f7046n);
            com.yf.smart.weloopx.p140b.ProGuard.m10660a().m10669a(b);
            if (!com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10730i()) {
                this.f7080c.m8919i();
            } else if (!da.m10409a(this.f7080c.getFragmentManager(), this.f7080c.getString(R.string.synchronizing_to_device))) {
                this.f7080c.m8919i();
            }
        }
    }

    public void m8968c(String str) {
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f7078a);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11276f(str)) {
            com.yf.lib.p135a.ProGuard.m8508a().m8614c(new InvalidAccessTokenEvent());
        }
    }
}
