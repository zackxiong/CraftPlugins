package cn.sharesdk.twitter;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.webkit.WebView;
import cn.sharesdk.framework.authorize.C0005b;
import cn.sharesdk.framework.authorize.C0016g;
import cn.sharesdk.framework.utils.C0064R;

/* renamed from: cn.sharesdk.twitter.b */
public class C0091b extends C0005b {
    public C0091b(C0016g c0016g) {
        super(c0016g);
    }

    public void m3329a(String str) {
        String a = C0094e.m3330a(this.a.m2920a().getPlatform()).m3331a(str);
        if (a != null && a.length() > 0) {
            String[] split = a.split("&");
            Bundle bundle = new Bundle();
            for (String str2 : split) {
                if (str2 != null) {
                    String[] split2 = str2.split("=");
                    if (split2.length >= 2) {
                        bundle.putString(split2[0], split2[1]);
                    }
                }
            }
            if (bundle == null || bundle.size() <= 0) {
                if (this.c != null) {
                    this.c.onError(new Throwable());
                }
            } else if (this.c != null) {
                this.c.onComplete(bundle);
            }
        } else if (this.c != null) {
            this.c.onError(new Throwable());
        }
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (this.b != null && str.startsWith(this.b)) {
            webView.stopLoading();
            this.a.finish();
            new C0093d(this, String.valueOf(C0064R.urlToBundle(str).get("oauth_verifier"))).start();
        }
        super.onPageStarted(webView, str, bitmap);
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (this.b == null || !str.startsWith(this.b)) {
            return super.shouldOverrideUrlLoading(webView, str);
        }
        webView.stopLoading();
        this.a.finish();
        new C0092c(this, String.valueOf(C0064R.urlToBundle(str).get("oauth_verifier"))).start();
        return true;
    }
}
