package com.yf.smart.weloopx.android.ui.activities;

import com.p038b.p039a.p048d.p049a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class eh extends ProGuard<String> {
    final /* synthetic */ String f7948a;
    final /* synthetic */ String f7949b;
    final /* synthetic */ boolean f7950c;
    final /* synthetic */ MessageNotification f7951d;

    eh(MessageNotification messageNotification, String str, String str2, boolean z) {
        this.f7951d = messageNotification;
        this.f7948a = str;
        this.f7949b = str2;
        this.f7950c = z;
    }

    public void m9853b() {
    }

    public void m9850a(long j, long j2, boolean z) {
    }

    public void m9852a(com.p038b.p039a.p048d.ProGuard<String> proGuard) {
        String str = (String) proGuard.f2767a;
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7951d.f7522e + " Del friend request or msgnoti  result  = " + str);
        if (com.yf.smart.weloopx.p143f.ProGuard.m11274d(str) && com.yf.smart.weloopx.p143f.ProGuard.m11271a(str)) {
            if (!this.f7951d.f7526i.m11094a(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10778b(), this.f7948a, this.f7949b)) {
                com.yf.gattlib.p117p.ProGuard.m8292a(this.f7951d.f7522e + " \u5220\u9664/\u5ffd\u7565\u6d88\u606f\u540e\u5904\u7406\u672c\u5730\u6570\u636e\u5e93\u5931\u8d25");
            } else if (this.f7950c) {
                this.f7951d.m8795e(this.f7951d.getString(R.string.del_success));
            } else {
                this.f7951d.m8795e(this.f7951d.getString(R.string.already_ignore));
            }
            this.f7951d.m9509h();
            this.f7951d.m8796f();
            return;
        }
        this.f7951d.m8796f();
        this.f7951d.m8795e(this.f7951d.getString(R.string.handle_failed));
    }

    public void m9851a(com.p038b.p039a.p047c.ProGuard proGuard, String str) {
        com.yf.gattlib.p117p.ProGuard.m8297b(this.f7951d.f7522e + " Del friend requst failed = " + str);
        this.f7951d.m8795e(this.f7951d.getString(R.string.del_friend_failed));
    }
}
