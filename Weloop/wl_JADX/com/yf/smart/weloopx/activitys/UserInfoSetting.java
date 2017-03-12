package com.yf.smart.weloopx.activitys;

import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.yf.smart.weloopx.android.ui.activities.ProGuard;
import com.yf.smart.weloopx.android.ui.p139c.az;
import com.yf.smart.weloopx.android.ui.p139c.da;
import com.yf.smart.weloopx.android.ui.widget.RulerView;
import com.yf.smart.weloopx.data.models.UserData;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class UserInfoSetting extends ProGuard implements OnClickListener, da.ProGuard {
    public UserData f7051a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558667)
    Button f7052b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558655)
    Button f7053c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558757)
    Button f7054d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558748)
    TextView f7055e;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558751)
    TextView f7056f;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558755)
    TextView f7057g;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558750)
    TextView f7058h;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558752)
    TextView f7059i;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558718)
    RulerView f7060j;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558754)
    RulerView f7061k;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558756)
    RulerView f7062l;
    private String f7063m;
    private String f7064n;
    private String f7065o;
    private boolean f7066p;
    private int f7067q;
    private int f7068r;
    private boolean f7069s;
    private Typeface f7070t;

    public UserInfoSetting() {
        this.f7063m = "UserInfoSetting";
        this.f7064n = "IS_WEIXIN_LOGIN";
        this.f7066p = false;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_user_info_setting);
        com.p038b.p039a.ProGuard.m4086a(this);
        m8934d();
        m8941a();
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10658a(this);
        this.f7054d.performClick();
    }

    private void m8934d() {
        this.f7070t = Typeface.createFromAsset(getAssets(), "fonts/dincond_bold.otf");
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f7066p = extras.getBoolean(this.f7064n, false);
        }
    }

    public void m8941a() {
        if (getIntent() == null) {
            this.f7069s = true;
        } else {
            this.f7069s = getIntent().getBooleanExtra("set_target", true);
        }
        if (!this.f7069s) {
            this.f7052b.setText(R.string.finish);
        }
        this.f7053c.setOnClickListener(this);
        this.f7052b.setOnClickListener(this);
        this.f7055e.setTypeface(this.f7070t);
        this.f7056f.setTypeface(this.f7070t);
        this.f7057g.setTypeface(this.f7070t);
        this.f7055e.setOnClickListener(this);
        this.f7056f.setOnClickListener(this);
        this.f7057g.setOnClickListener(this);
        this.f7060j.setOnClickListener(this);
        this.f7061k.setOnClickListener(this);
        this.f7062l.setOnClickListener(this);
        this.f7054d.setOnClickListener(this);
        this.f7060j.setOnScaleListener(new ad(this));
        this.f7061k.setOnScaleListener(new ae(this));
        this.f7062l.setOnScaleListener(new af(this));
        m8937e();
    }

    private void m8932c(int i) {
        m8944b();
        switch (i) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                this.f7055e.setTextColor(getResources().getColor(R.color.text_red));
                this.f7058h.setTextColor(getResources().getColor(R.color.text_red));
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                this.f7056f.setTextColor(getResources().getColor(R.color.text_red));
                this.f7059i.setTextColor(getResources().getColor(R.color.text_red));
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                this.f7057g.setTextColor(getResources().getColor(R.color.text_red));
            default:
        }
    }

    public void m8944b() {
        this.f7055e.setTextColor(getResources().getColor(R.color.txt_gray));
        this.f7056f.setTextColor(getResources().getColor(R.color.txt_gray));
        this.f7057g.setTextColor(getResources().getColor(R.color.txt_gray));
        this.f7058h.setTextColor(getResources().getColor(R.color.txt_gray));
        this.f7059i.setTextColor(getResources().getColor(R.color.txt_gray));
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btnback:
                if (this.f7051a.getStature() == 0 || this.f7051a.getWeight() == 0 || TextUtils.isEmpty(this.f7051a.getBirthday())) {
                    m8795e((String) getResources().getText(R.string.user_info_is_not_complete));
                } else {
                    finish();
                }
            case R.id.btn_next:
                m8945c();
            case R.id.mScaleplateScrollView:
            case R.id.tv_height:
                m8932c(0);
            case R.id.tv_weight:
            case R.id.mScaleplateScrollView2:
                m8932c(1);
            case R.id.tv_birth:
            case R.id.mScaleplateScrollView3:
                m8932c(2);
            case R.id.btn_init_finish:
                new Handler().postDelayed(new ag(this), 20);
            default:
        }
    }

    private void m8937e() {
        this.f7051a = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10785e(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        int stature = this.f7051a.getStature();
        if (stature == 0) {
            stature = 170;
        }
        this.f7067q = stature;
        this.f7060j.setScalePosition(this.f7067q);
        stature = this.f7051a.getWeight();
        if (stature == 0) {
            stature = 60;
        }
        this.f7068r = stature;
        this.f7061k.setScalePosition(this.f7068r);
        String birthday = this.f7051a.getBirthday();
        if (TextUtils.isEmpty(birthday)) {
            birthday = "1980";
        }
        this.f7065o = birthday;
        this.f7062l.setScalePosition(Integer.valueOf(this.f7065o).intValue());
    }

    public void m8945c() {
        if (m8797g()) {
            UserData e = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10785e(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
            e.setStature(this.f7067q);
            e.setWeight(this.f7068r);
            e.setBirthday(this.f7065o);
            e.setAccessToken(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
            com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10769a(e, new ah(this, az.m10242a(getFragmentManager(), getString(R.string.synchronizing_to_server)), e));
            return;
        }
        m8792b(R.string.net_unuse);
    }

    public void m8942a(int i) {
        finish();
    }

    public void m8943a(UserData userData) {
        UserData e = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10785e(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        e.setStature(userData.getStature());
        e.setWeight(userData.getWeight());
        e.setBirthday(userData.getBirthday());
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7063m + " \u8bbe\u7f6e\u5b8c\u6210\u8eab\u9ad8\u4f53\u91cd\u4fe1\u606f\u4e4b\u540e\u4fdd\u5b58");
        com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10764a(e);
    }
}
