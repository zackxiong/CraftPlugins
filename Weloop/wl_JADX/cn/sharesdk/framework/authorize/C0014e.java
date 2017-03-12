package cn.sharesdk.framework.authorize;

import android.content.Intent;

/* renamed from: cn.sharesdk.framework.authorize.e */
public class C0014e extends C0011a {
    protected SSOListener f1936b;
    private C0002f f1937c;

    public void m2922a(SSOListener sSOListener) {
        this.f1936b = sSOListener;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        this.f1937c.m2868a(i, i2, intent);
    }

    public void onCreate() {
        this.f1937c = this.a.getSSOProcessor(this);
        if (this.f1937c == null) {
            finish();
            AuthorizeListener authorizeListener = this.a.getAuthorizeListener();
            if (authorizeListener != null) {
                authorizeListener.onError(new Throwable("Failed to start SSO for " + this.a.getPlatform().getName()));
                return;
            }
            return;
        }
        this.f1937c.m2867a(32973);
        this.f1937c.m2866a();
    }

    protected void onNewIntent(Intent intent) {
        this.f1937c.m2869a(intent);
    }
}
