package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.text.TextUtils;
import com.yf.smart.weloopx.activitys.RegisterPhoneActivity1;
import com.yf.smart.weloopx.activitys.TargetSetting;
import com.yf.smart.weloopx.activitys.UserInfoSetting;
import com.yf.smart.weloopx.data.models.UserData;
import com.yf.smart.weloopx.data.models.UserProfileResult;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.event.InvalidAccessTokenEvent;
import com.yf.smart.weloopx.p140b.p141b.ProGuard;

/* compiled from: ProGuard */
class dt extends ProGuard {
    final /* synthetic */ MainActivity f7927a;

    dt(MainActivity mainActivity) {
        this.f7927a = mainActivity;
    }

    public void m9844a(UserProfileResult userProfileResult) {
        UserData e = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10785e(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        int stature = e.getStature();
        int weight = e.getWeight();
        CharSequence birthday = e.getBirthday();
        int calorieValue = e.getCalorieValue();
        Intent intent;
        if (stature == 0 || weight == 0 || TextUtils.isEmpty(birthday)) {
            this.f7927a.m9451b((int) R.string.user_info_is_not_complete);
            intent = new Intent();
            intent.putExtra("set_target", true);
            intent.setClass(this.f7927a, UserInfoSetting.class);
            this.f7927a.startActivity(intent);
        } else if (calorieValue == 0) {
            this.f7927a.m9451b((int) R.string.user_info_is_not_complete);
            intent = new Intent(this.f7927a, TargetSetting.class);
            intent.putExtra("to_main", true);
            this.f7927a.startActivity(intent);
        }
    }

    public void m9845b(String str) {
        if (com.yf.smart.weloopx.p143f.ProGuard.m11276f(str)) {
            com.yf.lib.p135a.ProGuard.m8508a().m8614c(new InvalidAccessTokenEvent());
        } else if ("Internal Server Error".equals(str)) {
            UserData e = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10785e(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
            CharSequence headPicAddress = e.getHeadPicAddress();
            CharSequence nickname = e.getNickname();
            int sex = e.getSex();
            if (TextUtils.isEmpty(headPicAddress) || TextUtils.isEmpty(nickname) || sex == 2) {
                this.f7927a.m9451b((int) R.string.user_info_is_not_complete);
                Intent intent = new Intent(this.f7927a, RegisterPhoneActivity1.class);
                intent.putExtra("set_target", true);
                this.f7927a.startActivity(intent);
            }
        }
    }
}
