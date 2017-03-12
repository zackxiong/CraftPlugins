package cn.sharesdk.framework.authorize;

import android.app.Instrumentation;
import cn.sharesdk.framework.utils.C0071e;

/* renamed from: cn.sharesdk.framework.authorize.i */
class C0018i extends Thread {
    final /* synthetic */ C0017h f1944a;

    C0018i(C0017h c0017h) {
        this.f1944a = c0017h;
    }

    public void run() {
        try {
            new Instrumentation().sendKeyDownUpSync(4);
        } catch (Throwable th) {
            C0071e.m3269c(th);
            AuthorizeListener authorizeListener = this.f1944a.f1943a.a.getAuthorizeListener();
            if (authorizeListener != null) {
                authorizeListener.onCancel();
            }
            this.f1944a.f1943a.finish();
        }
    }
}
