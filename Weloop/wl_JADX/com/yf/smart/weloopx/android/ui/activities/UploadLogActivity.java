package com.yf.smart.weloopx.android.ui.activities;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.DialogFragment;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import com.yf.smart.weloopx.android.ui.p139c.az;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.p143f.ProGuard.ProGuard;

/* compiled from: ProGuard */
public class UploadLogActivity extends Activity implements OnClickListener, ProGuard {
    private final String f7762a;
    private final int f7763b;
    private com.yf.smart.weloopx.p143f.ProGuard f7764c;
    private boolean f7765d;
    private EditText f7766e;
    private DialogFragment f7767f;

    public UploadLogActivity() {
        this.f7762a = UploadLogActivity.class.getSimpleName();
        this.f7763b = 2002;
        this.f7765d = false;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.upload_log);
        m9764a();
        m9761d();
    }

    protected void onDestroy() {
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        m9762e();
        return false;
    }

    public void m9764a() {
        findViewById(R.id.ul_btn_confirm).setOnClickListener(this);
        findViewById(R.id.ul_iv_back).setOnClickListener(this);
        this.f7766e = (EditText) findViewById(R.id.ul_et_content);
    }

    private void m9761d() {
        this.f7764c = new com.yf.smart.weloopx.p143f.ProGuard(this, this);
    }

    private void m9759a(String str, int i) {
        AlertDialog create = new Builder(this).create();
        create.show();
        Window window = create.getWindow();
        window.setContentView(R.layout.recover_view);
        TextView textView = (TextView) window.findViewById(R.id.rv_tv_sure);
        TextView textView2 = (TextView) window.findViewById(R.id.rv_tv_cancel);
        TextView textView3 = (TextView) window.findViewById(R.id.rv_tv_msg);
        textView.setTextColor(getResources().getColor(R.color.upload_log_txt));
        textView2.setTextColor(getResources().getColor(R.color.upload_log_txt));
        if (!TextUtils.isEmpty(str)) {
            textView3.setText(str);
        }
        textView.setOnClickListener(new hd(this, i, create));
        textView2.setOnClickListener(new he(this, create));
    }

    private void m9757a(int i) {
        switch (i) {
            case 2002:
                finish();
            default:
        }
    }

    public void m9766b() {
        this.f7767f = az.m10243a(getFragmentManager(), getString(R.string.sending_feedback), false);
    }

    public void m9767c() {
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f7767f);
        m9760b(R.string.upload_failed);
    }

    public void m9765a(String str) {
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f7767f);
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7762a + "Upload log file msg = " + str);
        this.f7765d = true;
        m9760b(R.string.upload_success);
        finish();
    }

    private void m9760b(int i) {
        runOnUiThread(new hf(this, i));
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ul_iv_back:
                m9762e();
            case R.id.ul_btn_confirm:
                m9763f();
            default:
        }
    }

    private void m9762e() {
        if (this.f7765d) {
            finish();
        } else {
            m9759a(getResources().getString(R.string.confirm_upload), 2002);
        }
    }

    private void m9763f() {
        this.f7764c.m11224a(this.f7766e.getText().toString().trim());
    }
}
