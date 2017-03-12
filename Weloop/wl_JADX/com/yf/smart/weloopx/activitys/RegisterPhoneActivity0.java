package com.yf.smart.weloopx.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import com.google.gson.Gson;
import com.yf.smart.weloopx.android.ui.activities.ProGuard;
import com.yf.smart.weloopx.data.models.UserData;
import com.yf.smart.weloopx.data.models.UserData2;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class RegisterPhoneActivity0 extends ProGuard implements OnClickListener {
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558658)
    EditText f6938a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558659)
    EditText f6939b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558657)
    TextView f6940c;
    private final String f6941d;
    private String f6942e;
    private int f6943f;
    private String f6944g;
    private String f6945h;
    private com.yf.smart.weloopx.p145g.ProGuard f6946i;
    private boolean f6947j;
    private boolean f6948k;
    private String f6949l;
    private String f6950m;
    private String f6951n;

    public RegisterPhoneActivity0() {
        this.f6941d = getClass().getName();
        this.f6944g = "";
        this.f6945h = "";
        this.f6947j = false;
        this.f6948k = false;
        this.f6949l = "";
        this.f6950m = "";
        this.f6951n = "";
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_register_phone_activity0);
        com.p038b.p039a.ProGuard.m4086a(this);
        m8822d();
        m8828a();
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10658a(this);
    }

    private void m8822d() {
        this.f6946i = new com.yf.smart.weloopx.p145g.ProGuard();
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f6944g = extras.getString("OPEN_ID");
            this.f6945h = extras.getString("PHONE_NUM");
            this.f6947j = extras.getBoolean("IS_INIT");
            this.f6948k = extras.getBoolean("IS_BIND_OLD_PHONE_ACCOUNT");
            this.f6949l = extras.getString("NICK_NAME");
            this.f6950m = extras.getString("SEX");
            this.f6951n = extras.getString("HEAD_PIC_URL");
        }
        this.f6942e = getIntent().getStringExtra("code");
        this.f6943f = getIntent().getIntExtra("flagType", 2);
    }

    public void m8828a() {
        findViewById(R.id.btn_send).setOnClickListener(this);
        findViewById(R.id.btnback).setOnClickListener(this);
        m8794d(getString(R.string.commiting));
        if (this.f6943f == 1) {
            this.f6940c.setText(getResources().getText(R.string.reset_pwd));
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btnback:
                finish();
            case R.id.btn_send:
                if (!this.f6948k && !TextUtils.isEmpty(this.f6945h) && !TextUtils.isEmpty(this.f6944g)) {
                    m8825e();
                } else if (this.f6943f == 0) {
                    m8831b();
                } else {
                    m8834c();
                }
            default:
        }
    }

    private void m8825e() {
        if (m8797g()) {
            this.v.m10231e(getString(R.string.binding));
            String obj = this.f6938a.getText().toString();
            String obj2 = this.f6939b.getText().toString();
            if (!m8833b(obj)) {
                m8830a((String) getResources().getText(R.string.pwd_not_enough));
                return;
            } else if (obj.equals(obj2)) {
                obj = new com.yf.smart.weloopx.p145g.ProGuard().m11300a(obj2, 32);
                com.yf.gattlib.p117p.ProGuard.m8292a(this.f6941d + " \u5c06\u8981\u7ed1\u5b9a\u7684openId = " + this.f6944g + ", \u624b\u673a\u53f7 = " + this.f6945h + ", \u5bc6\u7801 = " + obj);
                com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
                proGuard.m4068a("openId", this.f6944g);
                proGuard.m4068a("mobile", this.f6945h);
                proGuard.m4068a("pwd", obj);
                new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11234E(), proGuard, new ProGuard(this));
                return;
            } else {
                m8830a((String) getResources().getText(R.string.pwd_not_same));
                return;
            }
        }
        m8792b(R.string.net_unuse);
    }

    private void m8827f(String str) {
        UserData2 userData2 = (UserData2) new Gson().fromJson(str, UserData2.class);
        userData2.setOpenId(this.f6944g);
        userData2.setMobile(this.f6945h);
        this.f6946i.m11302a((Context) this, this.f6945h);
        this.f6946i.m11311b(this, this.f6944g);
        this.f6946i.m11304a(userData2);
        m8795e(getString(R.string.bind_success));
        if (this.f6947j) {
            Intent intent = new Intent(this, RegisterPhoneActivity1.class);
            intent.putExtra("IS_INIT", this.f6947j);
            intent.putExtra("NICK_NAME", this.f6949l);
            intent.putExtra("SEX", this.f6950m);
            intent.putExtra("HEAD_PIC_URL", this.f6951n);
            startActivity(intent);
        }
        finish();
    }

    public void m8831b() {
        if (m8797g()) {
            UserData userData = new UserData();
            String obj = this.f6938a.getText().toString();
            String obj2 = this.f6939b.getText().toString();
            if (!m8833b(obj)) {
                m8830a((String) getResources().getText(R.string.pwd_not_enough));
                return;
            } else if (obj.equals(obj2)) {
                obj = new com.yf.smart.weloopx.p145g.ProGuard().m11300a(obj2, 32);
                userData.setAccount(this.f6945h);
                userData.setPwd(obj);
                userData.setCheckCode(this.f6942e);
                if (com.yf.smart.weloopx.p149d.ProGuard.m11006b().m11010c()) {
                    userData.setUserType(1);
                } else {
                    userData.setUserType(0);
                }
                userData.setClientType(1);
                com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), this.f6941d);
                com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10770a(userData, new ProGuard(this));
                return;
            } else {
                m8830a((String) getResources().getText(R.string.pwd_not_same));
                return;
            }
        }
        m8792b(R.string.net_unuse);
    }

    public void m8829a(UserData2 userData2) {
        com.yf.gattlib.p117p.ProGuard.m8297b(this.f6941d + " &&&&& doFinishRegister Save user info");
        this.f6946i.m11304a(userData2);
        this.f6946i.m11302a((Context) this, this.f6945h);
        Intent intent = new Intent();
        intent.setClass(this, RegisterPhoneActivity1.class);
        intent.putExtra("set_target", true);
        startActivity(intent);
        finish();
    }

    public void m8830a(String str) {
        m8792b(R.string.setting_pwd_wrong);
        this.f6938a.setText("");
        this.f6939b.setText("");
        this.f6938a.requestFocus();
    }

    public boolean m8833b(String str) {
        if (!TextUtils.isEmpty(str) && str.length() > 5 && str.length() < 11) {
            return true;
        }
        return false;
    }

    public void m8834c() {
        if (m8797g()) {
            UserData userData = new UserData();
            String obj = this.f6938a.getText().toString();
            String obj2 = this.f6939b.getText().toString();
            if (!m8833b(obj)) {
                m8830a((String) getResources().getText(R.string.pwd_not_enough));
                return;
            } else if (obj.equals(obj2)) {
                obj = new com.yf.smart.weloopx.p145g.ProGuard().m11300a(obj2, 32);
                userData.setAccount(this.f6945h);
                userData.setPwd(obj);
                userData.setCheckCode(this.f6942e);
                userData.setUserType(0);
                userData.setClientType(1);
                com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), this.f6941d);
                com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10771a(userData, new ProGuard(this));
                return;
            } else {
                m8830a((String) getResources().getText(R.string.pwd_not_same));
                return;
            }
        }
        m8792b(R.string.net_unuse);
    }

    public void m8832b(UserData2 userData2) {
        userData2.setMobile(this.f6945h);
        com.yf.gattlib.p117p.ProGuard.m8297b(this.f6941d + " \u91cd\u7f6e\u5bc6\u7801\u6210\u529f isBindOldPhoneAccount = " + this.f6948k);
        this.f6946i.m11304a(userData2);
        this.f6946i.m11302a((Context) this, this.f6945h);
        Intent intent = new Intent();
        intent.setClass(this, Login.class);
        intent.putExtra("IS_BIND_OLD_PHONE_ACCOUNT", this.f6948k);
        intent.putExtra("OPEN_ID", this.f6944g);
        intent.putExtra("wechatBindOldPhone", this.f6948k);
        intent.putExtra("NICK_NAME", this.f6949l);
        intent.putExtra("SEX", this.f6950m);
        intent.putExtra("HEAD_PIC_URL", this.f6951n);
        startActivity(intent);
        finish();
    }
}
