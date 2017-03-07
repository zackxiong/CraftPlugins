package com.yf.smart.weloopx.android.ui.activities;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.LayoutAlgorithm;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class MoreProductActivity extends ProGuard implements OnClickListener {
    private WebView f7528a;
    private Button f7529b;
    private TextView f7530c;
    private ProgressBar f7531d;

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.MoreProductActivity.a */
    private class ProGuard extends WebChromeClient {
        final /* synthetic */ MoreProductActivity f7527a;

        private ProGuard(MoreProductActivity moreProductActivity) {
            this.f7527a = moreProductActivity;
        }

        public void onProgressChanged(WebView webView, int i) {
            this.f7527a.f7531d.setProgress(i);
            if (i == 100) {
                this.f7527a.f7531d.setVisibility(8);
            }
            super.onProgressChanged(webView, i);
        }
    }

    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        setContentView(R.layout.more_product);
        if (!m8797g()) {
            m8792b(R.string.net_unuse);
            finish();
        }
        String stringExtra = getIntent().getStringExtra("url");
        CharSequence stringExtra2 = getIntent().getStringExtra("title");
        this.f7530c = (TextView) findViewById(R.id.at_tv_title);
        this.f7530c.setText(stringExtra2);
        this.f7529b = (Button) findViewById(R.id.at_btn_left);
        this.f7529b.setOnClickListener(this);
        this.f7528a = (WebView) findViewById(R.id.more_webview);
        this.f7531d = (ProgressBar) findViewById(R.id.more_pb);
        WebSettings settings = this.f7528a.getSettings();
        settings.setLayoutAlgorithm(LayoutAlgorithm.SINGLE_COLUMN);
        settings.setJavaScriptEnabled(true);
        settings.setBuiltInZoomControls(true);
        settings.setSupportZoom(true);
        settings.setCacheMode(-1);
        this.f7528a.setWebChromeClient(new ProGuard());
        this.f7528a.loadUrl(stringExtra);
        this.f7528a.setWebViewClient(new ej(this));
    }

    private boolean m9517a(String str) {
        if (str.contains("weloopopen=restartdevice")) {
            com.yf.gattlib.p117p.ProGuard.m8292a("MoreProductActivity \u91cd\u542f\u8bbe\u5907");
            return true;
        } else if (str.contains("weloopopen=feedback")) {
            return true;
        } else {
            return false;
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !this.f7528a.canGoBack()) {
            return super.onKeyDown(i, keyEvent);
        }
        this.f7528a.goBack();
        return true;
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.at_btn_left:
                finish();
            default:
        }
    }

    protected void onDestroy() {
        this.f7528a.removeAllViews();
        super.onDestroy();
    }
}
