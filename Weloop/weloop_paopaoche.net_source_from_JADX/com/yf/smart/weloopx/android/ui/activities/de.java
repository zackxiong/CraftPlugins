package com.yf.smart.weloopx.android.ui.activities;

import com.p038b.p039a.p048d.p049a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class de extends ProGuard<String> {
    final /* synthetic */ boolean f7895a;
    final /* synthetic */ FriendSearchActivity f7896b;

    de(FriendSearchActivity friendSearchActivity, boolean z) {
        this.f7896b = friendSearchActivity;
        this.f7895a = z;
    }

    public void m9818b() {
        this.f7896b.runOnUiThread(new df(this));
    }

    public void m9815a(long j, long j2, boolean z) {
    }

    public void m9817a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        String str = (String) proGuard.f2767a;
        com.yf.gattlib.p117p.ProGuard.m8292a("FriendSearchActivity Query search result = " + str);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11274d(str) && com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            this.f7896b.m9431b(str, this.f7895a);
        } else {
            this.f7896b.m8795e(this.f7896b.getString(R.string.search_failed));
        }
        this.f7896b.m8796f();
    }

    public void m9816a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        com.yf.gattlib.p117p.ProGuard.m8297b("FriendSearchActivity Query search failed = " + str);
        this.f7896b.m8796f();
    }
}
