package com.yf.smart.weloopx.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.google.gson.Gson;
import com.yf.gattlib.client.p113b.aq;
import com.yf.smart.weloopx.android.ui.activities.MainActivity;
import com.yf.smart.weloopx.android.ui.activities.ProGuard;
import com.yf.smart.weloopx.data.EncryptUtil;
import com.yf.smart.weloopx.data.models.UserData;
import com.yf.smart.weloopx.data.models.UserData2;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class Login extends ProGuard implements OnClickListener {
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558635)
    EditText f6920a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558636)
    EditText f6921b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f6922c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558782)
    Button f6923d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f6924e;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558637)
    Button f6925f;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558638)
    TextView f6926g;
    private String f6927h;
    private String f6928i;
    private String f6929j;
    private String f6930k;
    private boolean f6931l;
    private String f6932m;
    private String f6933n;
    private String f6934o;
    private EncryptUtil f6935p;
    private com.yf.smart.weloopx.p145g.ProGuard f6936q;

    public Login() {
        this.f6927h = "Login";
        this.f6932m = "";
        this.f6933n = "";
        this.f6934o = "";
        this.f6935p = new EncryptUtil();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_login);
        com.p038b.p039a.ProGuard.m4086a(this);
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10658a(this);
        m8804b();
        m8815a();
        m8794d(getString(R.string.logining_to_server));
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getRepeatCount() != 0) {
            return super.onKeyDown(i, keyEvent);
        }
        finish();
        return true;
    }

    public void onBackPressed() {
        m8791a(RegisterStart.class);
        finish();
    }

    private void m8804b() {
        this.f6936q = new com.yf.smart.weloopx.p145g.ProGuard();
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f6931l = extras.getBoolean("wechatBindOldPhone");
            this.f6929j = extras.getString("OPEN_ID");
            this.f6932m = extras.getString("NICK_NAME");
            this.f6933n = extras.getString("SEX");
            this.f6934o = extras.getString("HEAD_PIC_URL");
        }
    }

    public void m8815a() {
        this.f6924e.setText(this.f6931l ? R.string.bind_phone : R.string.login);
        this.f6920a.setHint(this.f6931l ? getString(R.string.input_phone_num) : getString(R.string.phone_num));
        this.f6921b.setHint(this.f6931l ? getString(R.string.input_password) : getString(R.string.password));
        this.f6922c.setOnClickListener(this);
        this.f6925f.setOnClickListener(this);
        this.f6923d.setText(R.string.loss_pwd);
        this.f6923d.setOnClickListener(this);
        this.f6926g.setVisibility(this.f6931l ? 0 : 8);
        CharSequence string = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().getString("lastInputAccount", null);
        if (!TextUtils.isEmpty(string)) {
            this.f6920a.setText(string);
            this.f6921b.requestFocus();
        }
    }

    private void m8802a(String str, String str2) {
        Intent intent = new Intent();
        intent.setClass(this, MainActivity.class);
        intent.putExtra("LOGIN_SUCCESS", true);
        intent.putExtra("login_result", str);
        intent.putExtra("login_msg", str2);
        startActivity(intent);
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10659b();
    }

    public void m8817a(String str) {
        m8792b(R.string.login_error);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.login_btn_login:
                if (this.f6931l) {
                    m8814h();
                } else {
                    m8810d();
                }
            case R.id.at_btn_left:
                finish();
            case R.id.at_btn_right:
                m8807c();
            default:
        }
    }

    private void m8807c() {
        Intent intent = new Intent(this, ResetPassword.class);
        intent.putExtra("jumpType", "forgetPwd");
        intent.putExtra("IS_BIND_OLD_PHONE_ACCOUNT", this.f6931l);
        intent.putExtra("OPEN_ID", this.f6929j);
        intent.putExtra("NICK_NAME", this.f6932m);
        intent.putExtra("SEX", this.f6933n);
        intent.putExtra("HEAD_PIC_URL", this.f6934o);
        startActivity(intent);
    }

    private void m8810d() {
        if (m8797g()) {
            com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), this.f6927h);
            this.f6928i = this.f6920a.getText().toString();
            this.f6930k = this.f6921b.getText().toString();
            String keyString = this.f6935p.keyString();
            String encryptStr = this.f6935p.getEncryptStr(new com.yf.smart.weloopx.p145g.ProGuard().m11300a(this.f6930k, 32), keyString);
            UserData userData = new UserData();
            userData.setAccount(this.f6928i);
            userData.setEncryptedAccount(this.f6935p.getEncryptStr(this.f6928i, keyString));
            userData.setPwd(encryptStr);
            userData.setClientType(1);
            userData.setAppKey(keyString);
            com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10767a(userData, new ProGuard(this));
            return;
        }
        m8792b(R.string.net_unuse);
    }

    public void m8816a(UserData2 userData2) {
        com.yf.gattlib.p117p.ProGuard.m8297b(this.f6927h + " \u624b\u673a\u53f7\u767b\u5f55\u4e4b\u540e\u4fdd\u5b58\u7528\u6237\u4fe1\u606f");
        this.f6936q.m11302a((Context) this, this.f6928i);
        this.f6936q.m11311b(this, userData2.getOpenId());
        this.f6936q.m11304a(userData2);
        Object c = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c();
        if (TextUtils.isEmpty(c)) {
            m8812e();
            return;
        }
        UserData e = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10785e(c);
        if (e.getWeight() <= 0 || e.getStature() <= 0 || e.getCalorieValue() <= 0) {
            m8812e();
        } else {
            new aq(new ProGuard(this), e.getWeight(), e.getStature(), e.getCalorieValue()).m7498f();
        }
    }

    private void m8812e() {
        runOnUiThread(new ProGuard(this));
    }

    private void m8814h() {
        this.f6928i = this.f6920a.getText().toString().trim();
        String trim = this.f6921b.getText().toString().trim();
        if (TextUtils.isEmpty(trim) || TextUtils.isEmpty(this.f6928i)) {
            m8795e("\u5bc6\u7801\u548c\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a");
            return;
        }
        trim = new com.yf.smart.weloopx.p145g.ProGuard().m11300a(trim, 32);
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f6927h + " \u5c06\u8981\u7ed1\u5b9a\u7684openId = " + this.f6929j + ", \u624b\u673a\u53f7 = " + this.f6928i + ", \u5bc6\u7801 = " + trim);
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("openId", this.f6929j);
        proGuard.m4068a("mobile", this.f6928i);
        proGuard.m4068a("pwd", trim);
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11237H(), proGuard, new ProGuard(this));
    }

    private void m8806b(String str) {
        UserData2 userData2 = (UserData2) new Gson().fromJson(str, UserData2.class);
        this.f6936q.m11311b(this, this.f6929j);
        this.f6936q.m11302a((Context) this, this.f6928i);
        this.f6936q.m11304a(userData2);
        startActivity(new Intent(this, MainActivity.class));
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10658a(this);
    }
}
