package com.yf.smart.weloopx.android.ui.p139c;

import com.p038b.p039a.p048d.p049a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.dg */
class dg extends ProGuard<String> {
    final /* synthetic */ dc f8435a;

    dg(dc dcVar) {
        this.f8435a = dcVar;
    }

    public void m10455b() {
    }

    public void m10452a(long j, long j2, boolean z) {
    }

    public void m10454a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        String str = (String) proGuard.f2767a;
        com.yf.gattlib.p117p.ProGuard.m8292a("UserProfileFragment \u540c\u610f\u597d\u53cb\u7ed3\u679c result  = " + str);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11274d(str) && com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            this.f8435a.f8423q = true;
            if (this.f8435a.isAdded()) {
                this.f8435a.a_(this.f8435a.getString(R.string.add_success));
            }
            this.f8435a.m10166a(new dh(this));
        } else if (this.f8435a.isAdded()) {
            this.f8435a.a_(this.f8435a.getString(R.string.handle_failed));
        }
    }

    public void m10453a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        com.yf.gattlib.p117p.ProGuard.m8297b("UserProfileFragment Accept friend requst failed = " + str);
        if (this.f8435a.isAdded()) {
            this.f8435a.a_(this.f8435a.getActivity().getString(R.string.handle_failed));
        }
    }
}
