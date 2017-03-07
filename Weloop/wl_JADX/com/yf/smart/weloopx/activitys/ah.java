package com.yf.smart.weloopx.activitys;

import android.app.DialogFragment;
import android.content.Intent;
import com.yf.smart.weloopx.android.ui.p139c.da;
import com.yf.smart.weloopx.data.models.UserData;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.p140b.p141b.ProGuard;

/* compiled from: ProGuard */
class ah extends ProGuard {
    final /* synthetic */ DialogFragment f7085a;
    final /* synthetic */ UserData f7086b;
    final /* synthetic */ UserInfoSetting f7087c;

    ah(UserInfoSetting userInfoSetting, DialogFragment dialogFragment, UserData userData) {
        this.f7087c = userInfoSetting;
        this.f7085a = dialogFragment;
        this.f7086b = userData;
    }

    public void m8975a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f7085a);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11271a((String) proGuard.f2767a)) {
            if (this.f7087c.f7069s) {
                Intent intent = new Intent(this.f7087c, TargetSetting.class);
                intent.putExtra("to_main", true);
                intent.putExtra(this.f7087c.f7064n, this.f7087c.f7066p);
                this.f7087c.startActivity(intent);
            } else if (!da.m10409a(this.f7087c.getFragmentManager(), this.f7087c.getString(R.string.synchronizing_to_device))) {
                this.f7087c.finish();
            }
            this.f7087c.m8943a(this.f7086b);
            return;
        }
        this.f7087c.m8792b(R.string.set_user_info_error);
    }

    public void m8974a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f7085a);
        this.f7087c.m8792b(R.string.set_user_info_error);
    }
}
