package com.yf.smart.weloopx.android.ui.activities;

import android.webkit.WebView;
import android.webkit.WebViewClient;

/* compiled from: ProGuard */
class ej extends WebViewClient {
    final /* synthetic */ MoreProductActivity f7953a;

    ej(MoreProductActivity moreProductActivity) {
        this.f7953a = moreProductActivity;
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!this.f7953a.m9517a(str)) {
            this.f7953a.f7531d.setProgress(0);
            this.f7953a.f7531d.setVisibility(0);
            webView.loadUrl(str);
        }
        return true;
    }
}
