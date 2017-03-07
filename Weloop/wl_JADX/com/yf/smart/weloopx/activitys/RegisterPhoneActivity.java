package com.yf.smart.weloopx.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.text.style.URLSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.baidu.location.LocationClientOption;
import com.google.gson.Gson;
import com.yf.smart.weloopx.android.ui.activities.MainActivity;
import com.yf.smart.weloopx.data.models.UserData;
import com.yf.smart.weloopx.data.models.UserData2;
import com.yf.smart.weloopx.data.models.VerifyCodeModel;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class RegisterPhoneActivity extends com.yf.smart.weloopx.android.ui.activities.ProGuard implements OnClickListener {
    private com.yf.smart.weloopx.p145g.ProGuard f6975A;
    public final String f6976a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558652)
    Button f6977b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558646)
    Button f6978c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558648)
    Button f6979d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558635)
    EditText f6980e;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558647)
    EditText f6981f;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558650)
    TextView f6982g;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558782)
    Button f6983h;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f6984i;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f6985j;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558651)
    TextView f6986k;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558649)
    LinearLayout f6987l;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558653)
    TextView f6988m;
    private int f6989n;
    private boolean f6990o;
    private boolean f6991p;
    private boolean f6992q;
    private String f6993r;
    private String f6994s;
    private String f6995t;
    private String f6996u;
    private String f6997w;
    private String f6998x;
    private String f6999y;
    private ProGuard f7000z;

    /* renamed from: com.yf.smart.weloopx.activitys.RegisterPhoneActivity.a */
    class ProGuard extends CountDownTimer {
        final /* synthetic */ RegisterPhoneActivity f6937a;

        public ProGuard(RegisterPhoneActivity registerPhoneActivity, long j, long j2) {
            this.f6937a = registerPhoneActivity;
            super(j, j2);
        }

        public void onFinish() {
            this.f6937a.f6978c.setClickable(true);
            this.f6937a.f6978c.setText(R.string.send_check_code);
        }

        public void onTick(long j) {
            this.f6937a.f6978c.setClickable(false);
            this.f6937a.f6978c.setText("(" + (j / 1000) + ")" + this.f6937a.getResources().getString(R.string.sent));
        }
    }

    public RegisterPhoneActivity() {
        this.f6976a = getClass().getName();
        this.f6989n = 0;
        this.f6990o = false;
        this.f6991p = false;
        this.f6992q = false;
        this.f6993r = "";
        this.f6995t = "";
        this.f6996u = "";
        this.f6997w = "";
        this.f6998x = "";
        this.f6999y = "";
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_register_phone);
        com.p038b.p039a.ProGuard.m4086a(this);
        m8868c();
        m8873d();
        m8794d("");
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10658a(this);
    }

    private void m8868c() {
        this.f7000z = new ProGuard(this, (long) 120000, (long) LocationClientOption.MIN_SCAN_SPAN);
        this.f6975A = new com.yf.smart.weloopx.p145g.ProGuard();
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f6993r = extras.getString("OPEN_ID");
            this.f6990o = extras.getBoolean("WECHAT_LOGIN");
            this.f6991p = extras.getBoolean("IS_BIND_PHONE");
            this.f6992q = extras.getBoolean("IS_INIT");
            this.f6997w = extras.getString("NICK_NAME");
            this.f6998x = extras.getString("SEX");
            this.f6999y = extras.getString("HEAD_PIC_URL");
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f6976a + " \u4e0a\u4e2a\u754c\u9762\u4f20\u9012\u8fc7\u6765\u7684openid = " + this.f6993r + ", isWeChatLogin = " + this.f6990o + ", isBindPhone = " + this.f6991p + ", isInit = " + this.f6992q + ", nickName = " + this.f6997w + ", sex = " + this.f6998x + ", headPicUrl = " + this.f6999y);
        }
        if (this.f6992q) {
            m8880j();
        }
    }

    private void m8873d() {
        int i;
        CharSequence spannableString = new SpannableString("\u300a\u9690\u79c1\u6761\u6b3e\u53ca\u670d\u52a1\u534f\u8bae\u300b");
        spannableString.setSpan(new URLSpan("http://weloop.cn/privacypolicy.html"), 0, spannableString.length(), 33);
        spannableString.setSpan(new ForegroundColorSpan(-1), 0, spannableString.length(), 34);
        this.f6982g.setText(spannableString);
        this.f6982g.setMovementMethod(LinkMovementMethod.getInstance());
        this.f6984i.setOnClickListener(this);
        this.f6983h.setVisibility(8);
        this.f6979d.setOnClickListener(this);
        this.f6977b.setOnClickListener(this);
        this.f6978c.setOnClickListener(this);
        this.f6985j.setText(getString(R.string.register));
        this.f6979d.setText(this.f6991p ? getString(R.string.comple) : getString(R.string.sure));
        LinearLayout linearLayout = this.f6987l;
        if (this.f6991p) {
            i = 8;
        } else {
            i = 0;
        }
        linearLayout.setVisibility(i);
        if ((this.f6991p || this.f6990o) && !TextUtils.isEmpty(this.f6993r)) {
            this.f6986k.setVisibility(8);
            this.f6977b.setVisibility(8);
            this.f6985j.setText(this.f6991p ? getString(R.string.bind_phone) : getString(R.string.bindAccount));
        }
        this.f6988m.setOnClickListener(new ProGuard(this));
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.arp_btn_get_verifycode:
                if (this.f6975A.m11306a((Context) this)) {
                    m8881a();
                } else {
                    m8792b(R.string.network_is_invalid);
                }
            case R.id.arp_btn_commit:
                if (this.f6990o) {
                    m8879i();
                } else if (this.f6991p) {
                    m8874e();
                } else {
                    m8883b();
                }
            case R.id.arp_btn_wechat:
                m8878h();
            case R.id.at_btn_left:
                finish();
            default:
        }
    }

    public void m8881a() {
        if (m8797g()) {
            this.f6995t = this.f6980e.getText().toString().trim();
            if (this.f6975A.m11312b(this.f6995t)) {
                this.f7000z.start();
                this.v.m10231e(getString(R.string.send_check_code));
                com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), this.f6976a);
                com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10776a(this.f6995t, "1", new ProGuard(this), this.f6991p ? true : this.f6990o);
                return;
            }
            m8882a((String) getResources().getText(R.string.input_correct_phone));
            return;
        }
        m8792b(R.string.net_unuse);
    }

    private void m8866b(String str) {
        VerifyCodeModel verifyCodeModel = (VerifyCodeModel) new Gson().fromJson(str, VerifyCodeModel.class);
        if (verifyCodeModel != null) {
            this.f6996u = verifyCodeModel.getVerifyCode();
        }
    }

    public void m8882a(String str) {
        m8795e(str);
        this.f6980e.requestFocus();
    }

    public void m8883b() {
        if (m8797g()) {
            this.f6994s = this.f6981f.getText().toString();
            if (TextUtils.isEmpty(this.f6994s)) {
                m8795e(getString(R.string.please_input_check_code));
                return;
            }
            UserData userData = new UserData();
            userData.setAccount(this.f6995t);
            userData.setCheckCode(this.f6994s);
            this.v.m10231e(getString(R.string.pull_to_refresh_refreshing_label));
            com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), this.f6976a);
            com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10766a(userData, new ProGuard(this));
            return;
        }
        m8792b(R.string.net_unuse);
    }

    private void m8874e() {
        CharSequence trim = this.f6981f.getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            m8795e(getString(R.string.check_code_not_empty));
        } else if (TextUtils.isEmpty(this.f6995t)) {
            m8795e(getString(R.string.phone_num_not_empty));
        } else if (TextUtils.isEmpty(this.f6996u)) {
            m8795e(getString(R.string.unget_checkcode));
        } else if (this.f6996u.equals(trim)) {
            Intent intent = new Intent(this, RegisterPhoneActivity0.class);
            intent.putExtra("OPEN_ID", this.f6993r);
            intent.putExtra("PHONE_NUM", this.f6995t);
            intent.putExtra("IS_INIT", this.f6992q);
            intent.putExtra("NICK_NAME", this.f6997w);
            intent.putExtra("SEX", this.f6998x);
            intent.putExtra("HEAD_PIC_URL", this.f6999y);
            startActivity(intent);
            finish();
        } else {
            m8795e(getString(R.string.checkcode_error));
        }
    }

    private void m8878h() {
        this.f6975A.m11310b((Context) this);
        this.f6975A.m11301a((Context) this, 10241024);
        finish();
    }

    private void m8879i() {
        if (m8797g()) {
            this.f6994s = this.f6981f.getText().toString();
            if (TextUtils.isEmpty(this.f6994s)) {
                m8795e(getString(R.string.please_input_check_code));
                return;
            }
            this.v.m10231e(getString(R.string.binding));
            com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
            proGuard.m4068a("openId", this.f6993r);
            proGuard.m4068a("checkCode", this.f6994s);
            proGuard.m4068a("mobile", this.f6995t);
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f6976a + " \u7ed1\u5b9a\u7684openId  = " + this.f6993r + ", \u9a8c\u8bc1\u7801= " + this.f6994s + ", \u624b\u673a\u53f7 = " + this.f6995t + ", \u8bf7\u6c42\u5730\u5740 = " + com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11232C());
            new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11232C(), proGuard, new ProGuard(this));
            return;
        }
        m8792b(R.string.net_unuse);
    }

    private void m8877f(String str) {
        Intent intent = new Intent();
        UserData2 userData2 = (UserData2) new Gson().fromJson(str, UserData2.class);
        userData2.setOpenId(this.f6993r);
        this.f6975A.m11302a((Context) this, this.f6995t);
        this.f6975A.m11311b(this, this.f6993r);
        this.f6975A.m11304a(userData2);
        if (TextUtils.isEmpty(userData2.getHeadPicUrl())) {
            intent.setClass(this, RegisterPhoneActivity1.class);
        } else {
            intent.setClass(this, MainActivity.class);
        }
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10658a(this);
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10659b();
        startActivity(intent);
    }

    private void m8880j() {
        if (m8797g()) {
            com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
            proGuard.m4068a("openId", this.f6993r);
            proGuard.m4068a("clientType", "1");
            proGuard.m4068a("userType", "0");
            proGuard.m4068a("channelId", "");
            proGuard.m4068a("deviceToken", "");
            proGuard.m4068a("longitude", "");
            proGuard.m4068a("latitude", "");
            com.p038b.p039a.ProGuard proGuard2 = new com.p038b.p039a.ProGuard();
            m8796f();
            proGuard2.m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11231B(), proGuard, new ProGuard(this));
            return;
        }
        m8792b(R.string.net_unuse);
    }

    protected void onResume() {
        super.onResume();
        if (this.f6978c.getText().toString().equals(getString(R.string.send_check_code))) {
            this.f6981f.setText("");
        }
    }
}
