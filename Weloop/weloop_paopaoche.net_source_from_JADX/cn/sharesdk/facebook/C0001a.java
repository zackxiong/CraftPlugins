package cn.sharesdk.facebook;

import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.utils.C0071e;
import com.baidu.android.pushservice.PushConstants;

/* renamed from: cn.sharesdk.facebook.a */
class C0001a implements AuthorizeListener {
    final /* synthetic */ C0008d f1897a;
    final /* synthetic */ Facebook f1898b;

    C0001a(Facebook facebook, C0008d c0008d) {
        this.f1898b = facebook;
        this.f1897a = c0008d;
    }

    public void onCancel() {
        if (this.f1898b.listener != null) {
            this.f1898b.listener.onCancel(this.f1898b, 1);
        }
    }

    public void onComplete(Bundle bundle) {
        String string = bundle.getString("oauth_token");
        int i = bundle.getInt("oauth_token_expires");
        if (i == 0) {
            try {
                i = Integer.parseInt(String.valueOf(bundle.get("expires_in")));
            } catch (Throwable th) {
                C0071e.m3269c(th);
                i = 0;
            }
        }
        if (TextUtils.isEmpty(string)) {
            string = bundle.getString(PushConstants.EXTRA_ACCESS_TOKEN);
        }
        this.f1898b.db.putToken(string);
        this.f1898b.db.putExpiresIn((long) i);
        this.f1897a.m2888a(string, String.valueOf(i));
        this.f1898b.afterRegister(1, null);
    }

    public void onError(Throwable th) {
        if (this.f1898b.listener != null) {
            this.f1898b.listener.onError(this.f1898b, 1, th);
        }
    }
}
