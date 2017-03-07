package com.yf.smart.weloopx.dist.wxapi;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.google.gson.Gson;
import com.tencent.mm.sdk.modelbase.BaseResp.ErrCode;
import com.tencent.mm.sdk.modelmsg.SendAuth.Resp;
import com.yf.smart.weloopx.activitys.Login;
import com.yf.smart.weloopx.activitys.ResetPassword;
import com.yf.smart.weloopx.android.ui.activities.ProGuard;
import com.yf.smart.weloopx.app.WeLoopApplication;
import com.yf.smart.weloopx.data.models.UserData2;
import com.yf.smart.weloopx.data.models.WeChatModel;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class WXEntryActivity extends ProGuard implements OnClickListener {
    public static boolean f8889a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558938)
    TextView f8890b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558937)
    TextView f8891c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f8892d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f8893e;
    private String f8894f;
    private int f8895g;
    private String f8896h;
    private String f8897i;
    private String f8898j;
    private WeChatModel f8899k;
    private com.yf.smart.weloopx.p145g.ProGuard f8900l;

    public WXEntryActivity() {
        this.f8894f = "WXEntryActivity";
        this.f8895g = 0;
        this.f8896h = "";
        this.f8897i = "";
        this.f8898j = "";
    }

    static {
        f8889a = true;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.entry);
        com.p038b.p039a.ProGuard.m4086a(this);
        m11144b();
        m11136a();
        m8794d("\u8d26\u53f7\u9a8c\u8bc1\u4e2d..");
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8894f + " onCreate\u7684\u5904\u7406");
        m11138a(getIntent());
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10658a(this);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getRepeatCount() != 0) {
            return super.onKeyDown(i, keyEvent);
        }
        finish();
        return true;
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8894f + " onNewIntent\u7684\u5904\u7406");
        m11138a(intent);
    }

    private void m11136a() {
        this.f8890b.setOnClickListener(this);
        this.f8891c.setOnClickListener(this);
        this.f8892d.setOnClickListener(this);
        this.f8893e.setText("\u5fae\u4fe1\u5feb\u901f\u767b\u5f55");
    }

    private void m11144b() {
        this.f8900l = new com.yf.smart.weloopx.p145g.ProGuard();
        this.f8900l.m11313c((Context) this);
        this.f8895g = this.f8900l.m11313c((Context) this);
        this.f8900l.m11301a((Context) this, 0);
        if (this.f8895g == 10271027) {
            finish();
        }
    }

    private void m11138a(Intent intent) {
        if (intent != null) {
            Resp resp = new Resp(intent.getExtras());
            switch (resp.errCode) {
                case ErrCode.ERR_AUTH_DENIED /*-4*/:
                    m11155g(getString(R.string.wechat_denied));
                case ErrCode.ERR_SENT_FAILED /*-3*/:
                    m11155g(getString(R.string.auth_failed));
                case ErrCode.ERR_USER_CANCEL /*-2*/:
                    m11155g(getString(R.string.wechat_cancel));
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                    m11141a(resp.code);
                default:
            }
        }
    }

    private void m11141a(String str) {
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), this.f8894f);
        String str2 = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + WeLoopApplication.f8662a + "&secret=" + WeLoopApplication.f8663b + "&code=" + str + "&grant_type=authorization_code";
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8894f + " 1. \u7ec4\u88c5\u8bf7\u6c42\u83b7\u5f97accessToken\u7684Url = " + str2);
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.GET, str2, new com.p038b.p039a.p048d.ProGuard(), new ProGuard(this));
    }

    private void m11146b(String str) {
        m8796f();
        if (TextUtils.isEmpty(str)) {
            m8795e(getString(R.string.auth_failed));
            return;
        }
        this.f8899k = (WeChatModel) new Gson().fromJson(str, WeChatModel.class);
        if (this.f8899k == null) {
            m8795e(getString(R.string.auth_failed));
            return;
        }
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8894f + " 3. \u5fae\u4fe1\u6388\u6743\u7ed3\u679c openId = " + this.f8899k.getOpenid());
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8894f + "4. \u9009\u62e9\u533a\u54ea\u91cc = " + this.f8895g);
        if (this.f8895g != 0) {
            m11137a(this.f8895g);
        } else {
            m11153f(this.f8899k.getOpenid());
        }
    }

    private void m11137a(int i) {
        switch (i) {
            case 10241024:
                com.yf.gattlib.p117p.ProGuard.m8292a(this.f8894f + " handleOperation\u4e2d\u5904\u7406\u6ce8\u518c");
            case 10251025:
                com.yf.gattlib.p117p.ProGuard.m8292a(this.f8894f + " handleOperation\u4e2d\u5904\u7406\u767b\u5f55,\u4e4b\u540e\u6267\u884c\u7ed1\u5b9a");
                m11153f(this.f8899k.getOpenid());
            case 10261026:
                com.yf.gattlib.p117p.ProGuard.m8292a(this.f8894f + " \u5f00\u59cb\u6267\u884c\u624b\u673a\u53f7\u7ed1\u5b9a\u5fae\u4fe1");
                this.f8900l.m11301a((Context) this, 0);
                m11149c();
            default:
        }
    }

    private void m11153f(String str) {
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("openId", str);
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11233D(), proGuard, new ProGuard(this, str));
    }

    private void m11142a(String str, String str2) {
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.GET, "https://api.weixin.qq.com/sns/userinfo?access_token=" + str2 + "&openid=" + str, new com.p038b.p039a.p048d.ProGuard(), new ProGuard(this));
    }

    private void m11155g(String str) {
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.v);
        m8795e(str);
        finish();
    }

    private void m11149c() {
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("openId", this.f8899k.getOpenid());
        proGuard.m4068a("checkCode", "");
        proGuard.m4068a("mobile", this.f8900l.m11316d((Context) this));
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8894f + " \u7ed1\u5b9a\u7684openId  = " + this.f8899k.getOpenid() + ", \u624b\u673a\u53f7 = " + com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10778b());
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11232C(), proGuard, new ProGuard(this));
    }

    private void m11157h(String str) {
        UserData2 userData2 = (UserData2) new Gson().fromJson(str, UserData2.class);
        userData2.setOpenId(this.f8899k.getOpenid());
        userData2.setMobile(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10778b());
        this.f8900l.m11311b(this, this.f8899k.getOpenid());
        this.f8900l.m11304a(userData2);
        finish();
    }

    public void onClick(View view) {
        Intent intent;
        switch (view.getId()) {
            case R.id.at_btn_left:
                finish();
            case R.id.entry_tv_register:
                intent = new Intent(this, ResetPassword.class);
                intent.putExtra("OPEN_ID", this.f8899k.getOpenid());
                intent.putExtra("WECHAT_LOGIN", false);
                intent.putExtra("IS_BIND_PHONE", true);
                intent.putExtra("IS_INIT", true);
                intent.putExtra("NICK_NAME", this.f8896h);
                intent.putExtra("SEX", this.f8897i);
                intent.putExtra("HEAD_PIC_URL", this.f8898j);
                startActivity(intent);
            case R.id.entry_tv_bind:
                intent = new Intent(this, Login.class);
                intent.putExtra("wechatBindOldPhone", true);
                intent.putExtra("OPEN_ID", this.f8899k.getOpenid());
                intent.putExtra("NICK_NAME", this.f8896h);
                intent.putExtra("SEX", this.f8897i);
                intent.putExtra("HEAD_PIC_URL", this.f8898j);
                com.yf.gattlib.p117p.ProGuard.m8292a(this.f8894f + " \u6211\u8981\u53bb\u7ed1\u5b9a\u8001\u8d26\u53f7\u4e86 openId= " + this.f8899k.getOpenid());
                startActivity(intent);
            default:
        }
    }
}
