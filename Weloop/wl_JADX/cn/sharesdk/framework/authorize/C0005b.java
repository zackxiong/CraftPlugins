package cn.sharesdk.framework.authorize;

import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import cn.sharesdk.framework.C0004m;

/* renamed from: cn.sharesdk.framework.authorize.b */
public abstract class C0005b extends C0004m {
    protected C0016g f1904a;
    protected String f1905b;
    protected AuthorizeListener f1906c;

    public C0005b(C0016g c0016g) {
        this.f1904a = c0016g;
        AuthorizeHelper a = c0016g.m2920a();
        this.f1905b = a.getRedirectUri();
        this.f1906c = a.getAuthorizeListener();
    }

    public String m2877a() {
        return "AuthClient";
    }

    public void onReceivedError(WebView webView, int i, String str, String str2) {
        webView.stopLoading();
        AuthorizeListener authorizeListener = this.f1904a.m2920a().getAuthorizeListener();
        this.f1904a.finish();
        if (authorizeListener != null) {
            authorizeListener.onError(new Throwable(str + " (" + i + "): " + str2));
        }
    }

    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        sslErrorHandler.proceed();
    }
}
