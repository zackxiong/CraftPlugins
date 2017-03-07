package com.yf.smart.weloopx.android.ui.activities;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.yf.smart.weloopx.android.ui.ProGuard;

/* compiled from: ProGuard */
class fx extends WebViewClient {
    final /* synthetic */ RunningInfoDetailsActivity f8052a;

    fx(RunningInfoDetailsActivity runningInfoDetailsActivity) {
        this.f8052a = runningInfoDetailsActivity;
    }

    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        ProGuard.m10543a(this.f8052a.v);
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        ProGuard.m10544a(this.f8052a.v, this.f8052a.getFragmentManager(), "RunningInfoDetailsActivity");
    }
}
