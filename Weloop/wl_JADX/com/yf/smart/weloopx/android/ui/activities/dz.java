package com.yf.smart.weloopx.android.ui.activities;

import com.umeng.update.UmengUpdateAgent;
import com.umeng.update.UmengUpdateListener;
import com.umeng.update.UpdateResponse;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* compiled from: ProGuard */
class dz implements UmengUpdateListener {
    final /* synthetic */ dy f7935a;

    dz(dy dyVar) {
        this.f7935a = dyVar;
    }

    public void onUpdateReturned(int i, UpdateResponse updateResponse) {
        try {
            boolean isIgnore = UmengUpdateAgent.isIgnore(this.f7935a.f7934a, updateResponse);
            switch (i) {
                case ProGuard.styleable.View_android_theme /*0*/:
                    this.f7935a.f7934a.m9453c(updateResponse.version);
                    if (this.f7935a.f7934a.f7500G || !isIgnore) {
                        this.f7935a.f7934a.m9444a(updateResponse);
                        return;
                    } else {
                        this.f7935a.f7934a.m9473q();
                        return;
                    }
                default:
                    this.f7935a.f7934a.m9473q();
                    return;
            }
        } catch (Exception e) {
            com.yf.gattlib.p117p.ProGuard.m8292a("MainActivity Not net error");
            this.f7935a.f7934a.m9473q();
        }
        com.yf.gattlib.p117p.ProGuard.m8292a("MainActivity Not net error");
        this.f7935a.f7934a.m9473q();
    }
}
