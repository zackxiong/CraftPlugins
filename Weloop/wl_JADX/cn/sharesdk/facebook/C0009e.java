package cn.sharesdk.facebook;

import android.os.Bundle;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.utils.C0071e;

/* renamed from: cn.sharesdk.facebook.e */
class C0009e implements SSOListener {
    final /* synthetic */ AuthorizeListener f1918a;
    final /* synthetic */ C0008d f1919b;

    C0009e(C0008d c0008d, AuthorizeListener authorizeListener) {
        this.f1919b = c0008d;
        this.f1918a = authorizeListener;
    }

    public void onCancel() {
        this.f1918a.onCancel();
    }

    public void onComplete(Bundle bundle) {
        this.f1918a.onComplete(bundle);
    }

    public void onFailed(Throwable th) {
        C0071e.m3269c(th);
        this.f1919b.m2880b(this.f1918a);
    }
}
