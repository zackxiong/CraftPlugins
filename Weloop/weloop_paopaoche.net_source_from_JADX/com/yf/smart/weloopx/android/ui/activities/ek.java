package com.yf.smart.weloopx.android.ui.activities;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.yf.smart.weloopx.android.ui.ProGuard;

/* compiled from: ProGuard */
class ek extends WebChromeClient {
    final /* synthetic */ MsgDetailActivity f7954a;

    ek(MsgDetailActivity msgDetailActivity) {
        this.f7954a = msgDetailActivity;
    }

    public void onProgressChanged(WebView webView, int i) {
        if (i == 100) {
            ProGuard.m10543a(this.f7954a.v);
        }
    }
}
