package cn.sharesdk.framework.authorize;

import android.os.Message;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.utils.C0066b;
import cn.sharesdk.framework.utils.UIHandler;

/* renamed from: cn.sharesdk.framework.authorize.j */
class C0019j extends Thread {
    final /* synthetic */ C0016g f1945a;

    C0019j(C0016g c0016g) {
        this.f1945a = c0016g;
    }

    public void run() {
        Message message = new Message();
        message.what = 2;
        if ("none".equals(C0066b.m3214a(this.f1945a.activity).m3235n())) {
            message.arg1 = 1;
            UIHandler.sendMessage(message, this.f1945a);
            return;
        }
        if (ShareSDK.isRemoveCookieOnAuthorize()) {
            CookieSyncManager.createInstance(this.f1945a.activity);
            CookieManager.getInstance().removeAllCookie();
        }
        message.obj = this.f1945a.a.getAuthorizeUrl();
        UIHandler.sendMessage(message, this.f1945a);
    }
}
