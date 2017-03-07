package cn.sharesdk.twitter;

import android.os.Bundle;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import com.baidu.android.pushservice.PushConstants;

/* renamed from: cn.sharesdk.twitter.a */
class C0090a implements AuthorizeListener {
    final /* synthetic */ C0094e f2139a;
    final /* synthetic */ Twitter f2140b;

    C0090a(Twitter twitter, C0094e c0094e) {
        this.f2140b = twitter;
        this.f2139a = c0094e;
    }

    public void onCancel() {
        if (this.f2140b.listener != null) {
            this.f2140b.listener.onCancel(this.f2140b, 1);
        }
    }

    public void onComplete(Bundle bundle) {
        String string = bundle.getString("oauth_token");
        String string2 = bundle.getString("oauth_token_secret");
        String string3 = bundle.getString(PushConstants.EXTRA_USER_ID);
        String string4 = bundle.getString("screen_name");
        this.f2140b.db.putToken(string);
        this.f2140b.db.putTokenSecret(string2);
        this.f2140b.db.putUserId(string3);
        this.f2140b.db.put("nickname", string4);
        this.f2139a.m3335a(string, string2);
        this.f2140b.afterRegister(1, null);
    }

    public void onError(Throwable th) {
        if (this.f2140b.listener != null) {
            this.f2140b.listener.onError(this.f2140b, 1, th);
        }
    }
}
