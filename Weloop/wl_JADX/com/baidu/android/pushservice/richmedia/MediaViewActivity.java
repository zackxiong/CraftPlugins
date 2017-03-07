package com.baidu.android.pushservice.richmedia;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.baidu.android.pushservice.C0192a;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;

public class MediaViewActivity extends Activity {
    public WebView f3429a;
    private RelativeLayout f3430b;
    private WebChromeClient f3431c;
    private WebViewClient f3432d;

    public MediaViewActivity() {
        this.f3431c = new C0342j(this);
        this.f3432d = new C0343k(this);
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        getWindow().requestFeature(1);
        LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1, 0.0f);
        this.f3430b = new RelativeLayout(this);
        this.f3430b.setLayoutParams(layoutParams);
        this.f3430b.setGravity(1);
        this.f3429a = new WebView(this);
        this.f3429a.requestFocusFromTouch();
        this.f3429a.setLongClickable(true);
        WebSettings settings = this.f3429a.getSettings();
        settings.setCacheMode(1);
        settings.setDatabaseEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(true);
        settings.setAppCacheEnabled(true);
        settings.setJavaScriptEnabled(true);
        settings.setLightTouchEnabled(true);
        settings.setDefaultTextEncodingName("utf-8");
        this.f3429a.setWebChromeClient(this.f3431c);
        this.f3429a.setWebViewClient(this.f3432d);
        if (C0192a.m4341b()) {
            C0385a.m5311b("MediaViewActivity", "uri=" + intent.getData().toString());
        }
        this.f3429a.loadUrl(intent.getData().toString());
        this.f3430b.addView(this.f3429a);
        setContentView(this.f3430b);
        if (this.f3430b == null || this.f3429a == null) {
            C0385a.m5313d("MediaViewActivity", "Set up Layout error.");
            finish();
        }
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        if (C0192a.m4341b()) {
            C0385a.m5311b("MediaViewActivity", "uri=" + intent.getData().toString());
        }
        this.f3429a.loadUrl(intent.getData().toString());
    }

    public void onPause() {
        super.onPause();
    }

    public void onResume() {
        super.onResume();
    }
}
