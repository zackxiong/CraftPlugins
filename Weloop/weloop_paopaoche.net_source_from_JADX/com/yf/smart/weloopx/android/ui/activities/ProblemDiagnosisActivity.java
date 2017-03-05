package com.yf.smart.weloopx.android.ui.activities;

import android.app.DialogFragment;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebSettings.LayoutAlgorithm;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import com.todddavies.components.progressbar.ProgressWheel2;
import com.yf.gattlib.view.ProGuard;
import com.yf.smart.weloopx.android.ui.p139c.ae;
import com.yf.smart.weloopx.android.ui.p139c.ca;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class ProblemDiagnosisActivity extends ProGuard implements ProGuard, ca.ProGuard {
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558643)
    WebView f7538a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f7539b;
    protected int f7540c;
    private final String f7541d;
    private com.yf.gattlib.client.p113b.ProGuard f7542e;
    private int f7543f;
    private TextView f7544g;
    private ProgressWheel2 f7545h;
    private View f7546i;
    private int f7547j;
    private View f7548k;
    private com.yf.gattlib.client.p113b.p114a.ProGuard f7549l;

    public ProblemDiagnosisActivity() {
        this.f7541d = "ProblemDiagnosisActivity";
        this.f7540c = 0;
        this.f7547j = 0;
        this.f7549l = new fj(this);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_problem_diagnosis);
        com.p038b.p039a.ProGuard.m4086a(this);
        String stringExtra = getIntent().getStringExtra("device_type");
        com.yf.gattlib.p117p.ProGuard.m8292a("ProblemDiagnosisActivitydevice type = " + stringExtra);
        WebSettings settings = this.f7538a.getSettings();
        settings.setLayoutAlgorithm(LayoutAlgorithm.SINGLE_COLUMN);
        settings.setJavaScriptEnabled(true);
        settings.setBuiltInZoomControls(true);
        settings.setSupportZoom(true);
        settings.setCacheMode(-1);
        this.f7538a.loadUrl(com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11241a(stringExtra));
        this.f7538a.setWebViewClient(new fg(this));
        this.f7539b.setOnClickListener(new fh(this));
        m9528b();
    }

    private boolean m9526a(String str) {
        if (str.contains("weloopopen=restartdevice")) {
            com.yf.gattlib.p117p.ProGuard.m8292a("ProblemDiagnosisActivity \u91cd\u542f\u8bbe\u5907");
            ca.m10346a(getFragmentManager(), false);
            return true;
        } else if (str.contains("weloopopen=feedback")) {
            com.yf.gattlib.p117p.ProGuard.m8292a("ProblemDiagnosisActivity \u53cd\u9988");
            startActivity(new Intent(this, UploadLogActivity.class));
            return true;
        } else if (!str.contains("weloopopen=repairfont")) {
            return false;
        } else {
            com.yf.gattlib.p117p.ProGuard.m8292a("ProblemDiagnosisActivity \u4fee\u590d\u5b57\u5e93");
            if (this.f7548k.getVisibility() == 0) {
                return true;
            }
            m9530c();
            return true;
        }
    }

    public void m9537a(boolean z, boolean z2) {
        if (z2 && z) {
            m9523a();
        }
    }

    private void m9523a() {
        runOnUiThread(new fi(this));
    }

    private void m9528b() {
        this.f7544g = (TextView) findViewById(R.id.tv_percent_number);
        this.f7544g.setText("0");
        this.f7544g.setTypeface(Typeface.createFromAsset(getAssets(), "fonts/din-light.otf"));
        this.f7545h = (ProgressWheel2) findViewById(R.id.progressbar);
        this.f7545h.setProgress(0);
        this.f7545h.setVisibility(0);
        this.f7546i = findViewById(R.id.lt_percent);
        this.f7548k = findViewById(R.id.layout_Frame);
    }

    private void m9530c() {
        this.f7543f = com.yf.gattlib.p110c.ProGuard.m7423d();
        this.f7542e = new com.yf.gattlib.client.p113b.ProGuard(this.f7549l, this.f7543f).m7498f();
    }

    private void m9531d() {
        runOnUiThread(new fo(this));
    }

    public void onBackPressed() {
        if (this.f7548k.getVisibility() == 0) {
            m9536h();
        }
    }

    private void m9534e() {
        if (this.f7542e != null) {
            this.f7542e.m7501i();
            this.f7542e = null;
        }
    }

    private void m9536h() {
        m9524a(ae.m10182a((int) R.string.recover_exit_message), "ProblemDiagnosisActivity");
    }

    private void m9524a(DialogFragment dialogFragment, String str) {
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        beginTransaction.add(dialogFragment, str);
        beginTransaction.commitAllowingStateLoss();
    }

    public boolean m9538a(String str, ProGuard proGuard) {
        switch (proGuard.m8506a()) {
            case 36866:
                m9534e();
                finish();
                break;
        }
        return true;
    }
}
