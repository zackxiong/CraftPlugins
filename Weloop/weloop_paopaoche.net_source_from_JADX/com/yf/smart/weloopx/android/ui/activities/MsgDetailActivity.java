package com.yf.smart.weloopx.android.ui.activities;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import com.p038b.p039a.p056g.p057a.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class MsgDetailActivity extends ProGuard implements OnClickListener {
    @ProGuard(a = 2131558782)
    Button f7532a;
    @ProGuard(a = 2131558781)
    Button f7533b;
    @ProGuard(a = 2131558766)
    TextView f7534c;
    @ProGuard(a = 2131558641)
    WebView f7535d;
    private String f7536e;
    private String f7537f;

    public MsgDetailActivity() {
        this.f7536e = "MsgDetailActivity";
        this.f7537f = "";
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_msg_detail);
        com.p038b.p039a.ProGuard.m4086a(this);
        m9518a();
        m9519b();
    }

    private void m9518a() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f7537f = extras.getString("URL");
        }
    }

    private void m9519b() {
        m8794d("\u52a0\u8f7d\u4e2d");
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), this.f7536e);
        this.f7532a.setVisibility(8);
        this.f7533b.setOnClickListener(this);
        this.f7534c.setText(getString(R.string.msg_noti));
        this.f7535d.loadUrl(this.f7537f);
        this.f7535d.getSettings().setJavaScriptEnabled(true);
        this.f7535d.setWebChromeClient(new ek(this));
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.at_btn_left:
                finish();
            default:
        }
    }
}
