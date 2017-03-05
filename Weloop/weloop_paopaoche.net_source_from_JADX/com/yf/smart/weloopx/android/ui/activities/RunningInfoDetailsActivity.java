package com.yf.smart.weloopx.android.ui.activities;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import com.p038b.p039a.p056g.p057a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class RunningInfoDetailsActivity extends ProGuard implements OnClickListener {
    @ProGuard(a = 2131558782)
    Button f7581a;
    @ProGuard(a = 2131558781)
    Button f7582b;
    @ProGuard(a = 2131558766)
    TextView f7583c;
    @ProGuard(a = 2131558679)
    WebView f7584d;
    private final String f7585e;
    private View f7586f;
    private String f7587g;
    private String f7588h;
    private com.yf.smart.weloopx.p145g.ProGuard f7589i;
    private com.yf.smart.weloopx.view.ProGuard f7590j;
    private boolean f7591k;
    private OnClickListener f7592l;

    public RunningInfoDetailsActivity() {
        this.f7585e = "RunningInfoDetailsActivity";
        this.f7587g = "";
        this.f7588h = "";
        this.f7591k = false;
        this.f7592l = new fy(this);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        this.f7586f = View.inflate(this, R.layout.activity_running_detail, null);
        setContentView(this.f7586f);
        com.p038b.p039a.ProGuard.m4086a(this);
        m9564b();
        m9562a();
    }

    private void m9562a() {
        CharSequence string;
        this.f7582b.setOnClickListener(this);
        this.f7581a.setVisibility(this.f7591k ? 8 : 0);
        this.f7581a.setText(getString(R.string.share));
        this.f7581a.setOnClickListener(this);
        this.f7581a.setBackgroundResource(R.drawable.btn_bg_wechat_share);
        this.f7581a.setPadding(this.f7589i.m11296a((Context) this, 5.0f), 0, this.f7589i.m11296a((Context) this, 5.0f), 0);
        TextView textView = this.f7583c;
        if (this.f7591k) {
            string = getString(R.string.warranty);
        } else {
            string = getString(R.string.running_training);
        }
        textView.setText(string);
        this.f7590j = new com.yf.smart.weloopx.view.ProGuard(this, this.f7592l);
        m8794d(getString(R.string.load_me_fragment_dlg));
        WebSettings settings = this.f7584d.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(1);
        if (m8797g()) {
            com.yf.gattlib.p117p.ProGuard.m8292a("RunningInfoDetailsActivity \u8dd1\u6b65\u8be6\u60c5\u754c\u9762\u4e2d\u7684url = " + this.f7587g);
            if (!TextUtils.isEmpty(this.f7587g)) {
                this.f7584d.loadUrl(this.f7587g);
            }
            this.f7584d.setWebViewClient(new fx(this));
            return;
        }
        m8792b(R.string.net_unuse);
        finish();
    }

    private void m9564b() {
        this.f7589i = new com.yf.smart.weloopx.p145g.ProGuard();
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f7587g = extras.getString("URL");
            this.f7588h = extras.getString("DISTANCE", "");
            this.f7591k = extras.getBoolean("ACTICATION_TERMS", false);
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.at_btn_left:
                finish();
            case R.id.at_btn_right:
                this.f7590j.showAtLocation(this.f7586f, 81, 0, 0);
            default:
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (this.v == null || !this.v.isVisible()) {
                finish();
            } else {
                m8796f();
            }
        }
        return super.onKeyDown(i, keyEvent);
    }
}
