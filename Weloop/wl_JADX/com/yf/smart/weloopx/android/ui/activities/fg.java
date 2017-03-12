package com.yf.smart.weloopx.android.ui.activities;

import android.webkit.WebView;
import android.webkit.WebViewClient;

/* compiled from: ProGuard */
class fg extends WebViewClient {
    final /* synthetic */ ProblemDiagnosisActivity f8031a;

    fg(ProblemDiagnosisActivity problemDiagnosisActivity) {
        this.f8031a = problemDiagnosisActivity;
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!this.f8031a.m9526a(str)) {
            webView.loadUrl(str);
        }
        return true;
    }
}
