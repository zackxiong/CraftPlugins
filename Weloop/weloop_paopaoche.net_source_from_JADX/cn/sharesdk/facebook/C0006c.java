package cn.sharesdk.facebook;

import android.os.Bundle;
import android.webkit.WebView;
import cn.sharesdk.framework.authorize.C0005b;
import cn.sharesdk.framework.authorize.C0016g;
import cn.sharesdk.framework.utils.C0064R;
import cn.sharesdk.framework.utils.C0071e;
import com.baidu.android.pushservice.PushConstants;

/* renamed from: cn.sharesdk.facebook.c */
public class C0006c extends C0005b {
    public C0006c(C0016g c0016g) {
        super(c0016g);
    }

    protected void m2878a(String str) {
        Bundle urlToBundle = C0064R.urlToBundle(str);
        String string = urlToBundle.getString("error");
        if (string == null) {
            string = urlToBundle.getString("error_type");
        }
        if (string == null) {
            string = urlToBundle.getString(PushConstants.EXTRA_ACCESS_TOKEN);
            String string2 = urlToBundle.getString("expires_in");
            if (this.c != null) {
                int parseInt;
                Bundle bundle = new Bundle();
                bundle.putString("oauth_token", string);
                bundle.putString("oauth_token_secret", "");
                try {
                    parseInt = Integer.parseInt(string2);
                } catch (Throwable th) {
                    C0071e.m3269c(th);
                    parseInt = -1;
                }
                bundle.putInt("oauth_token_expires", parseInt);
                this.c.onComplete(bundle);
            }
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!str.startsWith(this.b)) {
            return super.shouldOverrideUrlLoading(webView, str);
        }
        webView.stopLoading();
        this.a.finish();
        m2878a(str);
        return true;
    }
}
