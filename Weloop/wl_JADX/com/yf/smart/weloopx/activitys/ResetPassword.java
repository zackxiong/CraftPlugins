package com.yf.smart.weloopx.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.baidu.location.LocationClientOption;
import com.google.gson.Gson;
import com.yf.smart.weloopx.data.models.UserData;
import com.yf.smart.weloopx.data.models.UserData2;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class ResetPassword extends com.yf.smart.weloopx.android.ui.activities.ProGuard implements OnClickListener {
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558677)
    Button f7009a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558660)
    Button f7010b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558635)
    EditText f7011c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558647)
    EditText f7012d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f7013e;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558782)
    Button f7014f;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f7015g;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558678)
    TextView f7016h;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558653)
    TextView f7017i;
    private final String f7018j;
    private final int f7019k;
    private final int f7020l;
    private int f7021m;
    private ProGuard f7022n;
    private String f7023o;
    private String f7024p;
    private boolean f7025q;
    private boolean f7026r;
    private com.yf.smart.weloopx.p145g.ProGuard f7027s;
    private String f7028t;
    private String f7029u;
    private String f7030w;
    private String f7031x;
    private String f7032y;

    /* renamed from: com.yf.smart.weloopx.activitys.ResetPassword.a */
    class ProGuard extends CountDownTimer {
        final /* synthetic */ ResetPassword f7008a;

        public ProGuard(ResetPassword resetPassword, long j, long j2) {
            this.f7008a = resetPassword;
            super(j, j2);
        }

        public void onFinish() {
            this.f7008a.f7009a.setClickable(true);
            this.f7008a.f7009a.setText(R.string.send_check_code);
        }

        public void onTick(long j) {
            this.f7008a.f7009a.setClickable(false);
            this.f7008a.f7009a.setText("(" + (j / 1000) + ")" + this.f7008a.getResources().getString(R.string.send_again_check_code));
        }
    }

    public ResetPassword() {
        this.f7018j = getClass().getName();
        this.f7019k = 120000;
        this.f7020l = LocationClientOption.MIN_SCAN_SPAN;
        this.f7021m = 1;
        this.f7022n = new ProGuard(this, 120000, 1000);
        this.f7023o = "";
        this.f7024p = "";
        this.f7025q = false;
        this.f7026r = false;
        this.f7028t = "";
        this.f7029u = "";
        this.f7030w = "";
        this.f7031x = "";
        this.f7032y = "";
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_reset_password);
        com.p038b.p039a.ProGuard.m4086a(this);
        m8889a(getIntent().getExtras());
        m8893b();
        if (this.f7025q) {
            m8904e();
        }
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10658a(this);
    }

    private void m8889a(Bundle bundle) {
        this.f7027s = new com.yf.smart.weloopx.p145g.ProGuard();
        if (bundle != null) {
            this.f7023o = bundle.getString("jumpType");
            this.f7024p = bundle.getString("OPEN_ID");
            this.f7028t = bundle.getString("NICK_NAME");
            this.f7029u = bundle.getString("SEX");
            this.f7030w = bundle.getString("HEAD_PIC_URL");
            this.f7025q = bundle.getBoolean("IS_INIT", false);
            this.f7026r = bundle.getBoolean("IS_BIND_OLD_PHONE_ACCOUNT", false);
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f7018j + " \u63a5\u6536\u5230\u7684\u5934\u50cf\u5730\u5740 =  " + this.f7030w + ", \u6027\u522b = " + this.f7029u);
        }
        this.f7027s.m11311b(this, this.f7024p);
    }

    private void m8893b() {
        this.f7014f.setVisibility(8);
        this.f7013e.setOnClickListener(this);
        this.f7014f.setOnClickListener(this);
        this.f7010b.setOnClickListener(this);
        this.f7009a.setOnClickListener(this);
        m8794d("");
        if (this.f7025q) {
            this.f7015g.setText(getString(R.string.bind_phone));
            this.f7016h.setVisibility(0);
            this.f7014f.setText(getString(R.string.ignore_bind));
            this.f7014f.setVisibility(0);
            this.f7010b.setText(getResources().getString(R.string.sure));
        } else {
            this.f7015g.setText(this.f7023o.equals("forgetPwd") ? R.string.loss_pwd : R.string.reset_pwd);
            this.f7016h.setVisibility(8);
        }
        this.f7017i.setOnClickListener(new ProGuard(this));
    }

    public void m8912a() {
        if (m8797g()) {
            this.f7031x = this.f7011c.getText().toString().trim();
            this.f7022n.start();
            this.v.m10231e(getString(R.string.get_check_code));
            com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), this.f7018j);
            com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10776a(this.f7031x, "2", new ProGuard(this), this.f7025q);
            return;
        }
        m8792b(R.string.net_unuse);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_send:
                if (TextUtils.isEmpty(this.f7012d.getText())) {
                    m8792b(R.string.pls_input_vertify_code);
                } else if (this.f7025q) {
                    m8900d();
                } else {
                    m8897c();
                }
            case R.id.btn_verifycode:
                if (!this.f7027s.m11306a((Context) this)) {
                    m8792b(R.string.network_is_invalid);
                } else if (TextUtils.isEmpty(this.f7011c.getText())) {
                    m8792b(R.string.please_input_right_phonenum);
                } else {
                    m8912a();
                }
            case R.id.at_btn_left:
                finish();
            case R.id.at_btn_right:
                Intent intent = new Intent(this, RegisterPhoneActivity1.class);
                intent.putExtra("IS_WEIXIN_LOGIN", true);
                intent.putExtra("set_target", true);
                intent.putExtra("NICK_NAME", this.f7028t);
                intent.putExtra("SEX", this.f7029u);
                intent.putExtra("HEAD_PIC_URL", this.f7030w);
                startActivity(intent);
            default:
        }
    }

    private void m8891a(String str) {
        m8792b(R.string.code_wrong);
        this.f7011c.setText("");
        this.f7012d.setText("");
        this.f7011c.requestFocus();
    }

    private void m8897c() {
        if (m8797g()) {
            UserData userData = new UserData();
            userData.setAccount(this.f7011c.getText().toString());
            userData.setCheckCode(this.f7012d.getText().toString());
            this.v.m10231e(getString(R.string.checking));
            com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), this.f7018j);
            com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10766a(userData, new ProGuard(this));
            return;
        }
        m8792b(R.string.net_unuse);
    }

    private void m8900d() {
        if (m8797g()) {
            CharSequence trim = this.f7012d.getText().toString().trim();
            if (TextUtils.isEmpty(trim) || !this.f7032y.equals(trim) || TextUtils.isEmpty(this.f7032y)) {
                m8795e(getString(R.string.checkcode_error));
                return;
            }
            com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
            proGuard.m4068a("openId", this.f7024p);
            proGuard.m4068a("mobile", this.f7031x);
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f7018j + " \u7ed1\u5b9a\u7684openId  = " + this.f7024p + ", \u624b\u673a\u53f7 = " + this.f7031x);
            this.v.m10231e(getString(R.string.binding));
            new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11236G(), proGuard, new ProGuard(this));
            return;
        }
        m8792b(R.string.net_unuse);
    }

    private void m8895b(String str) {
        UserData2 userData2 = (UserData2) new Gson().fromJson(str, UserData2.class);
        userData2.setOpenId(this.f7024p);
        userData2.setMobile(this.f7031x);
        this.f7027s.m11302a((Context) this, this.f7031x);
        this.f7027s.m11311b(this, this.f7024p);
        this.f7027s.m11304a(userData2);
        if (TextUtils.isEmpty(userData2.getHeadPicUrl())) {
            Intent intent = new Intent();
            intent.setClass(this, RegisterPhoneActivity0.class);
            intent.putExtra("OPEN_ID", this.f7024p);
            intent.putExtra("PHONE_NUM", this.f7031x);
            intent.putExtra("IS_INIT", this.f7025q);
            intent.putExtra("NICK_NAME", this.f7028t);
            intent.putExtra("SEX", this.f7029u);
            intent.putExtra("HEAD_PIC_URL", this.f7030w);
            startActivity(intent);
        }
        finish();
    }

    private void m8904e() {
        if (m8797g()) {
            com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
            proGuard.m4068a("openId", this.f7024p);
            proGuard.m4068a("clientType", "1");
            proGuard.m4068a("userType", "0");
            proGuard.m4068a("channelId", "");
            proGuard.m4068a("deviceToken", "");
            proGuard.m4068a("longitude", "");
            proGuard.m4068a("latitude", "");
            com.p038b.p039a.ProGuard proGuard2 = new com.p038b.p039a.ProGuard();
            m8796f();
            proGuard2.m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11231B(), proGuard, new aa(this));
            return;
        }
        m8792b(R.string.net_unuse);
    }
}
