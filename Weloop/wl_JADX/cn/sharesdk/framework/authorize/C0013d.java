package cn.sharesdk.framework.authorize;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

/* renamed from: cn.sharesdk.framework.authorize.d */
class C0013d extends WebChromeClient {
    final /* synthetic */ TextView f1933a;
    final /* synthetic */ int f1934b;
    final /* synthetic */ RegisterView f1935c;

    C0013d(RegisterView registerView, TextView textView, int i) {
        this.f1935c = registerView;
        this.f1933a = textView;
        this.f1934b = i;
    }

    public void onProgressChanged(WebView webView, int i) {
        super.onProgressChanged(webView, i);
        LayoutParams layoutParams = (LayoutParams) this.f1933a.getLayoutParams();
        layoutParams.width = (this.f1934b * i) / 100;
        this.f1933a.setLayoutParams(layoutParams);
        if (i <= 0 || i >= 100) {
            this.f1933a.setVisibility(8);
        } else {
            this.f1933a.setVisibility(0);
        }
    }
}
