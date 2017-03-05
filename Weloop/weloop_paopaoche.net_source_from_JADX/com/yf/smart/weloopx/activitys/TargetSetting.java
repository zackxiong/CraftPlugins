package com.yf.smart.weloopx.activitys;

import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.location.C0452e;
import com.yf.smart.weloopx.android.ui.activities.MainActivity;
import com.yf.smart.weloopx.android.ui.activities.ProGuard;
import com.yf.smart.weloopx.android.ui.p139c.az;
import com.yf.smart.weloopx.android.ui.p139c.da;
import com.yf.smart.weloopx.android.ui.widget.RulerView;
import com.yf.smart.weloopx.data.models.UserData;
import com.yf.smart.weloopx.dist.R;
import java.text.SimpleDateFormat;
import java.util.Date;

/* compiled from: ProGuard */
public class TargetSetting extends ProGuard implements OnClickListener, da.ProGuard {
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f7033a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558782)
    Button f7034b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f7035c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558724)
    Button f7036d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558717)
    TextView f7037e;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558731)
    TextView f7038f;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558732)
    TextView f7039g;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558720)
    TextView f7040h;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558721)
    TextView f7041i;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558722)
    TextView f7042j;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558718)
    RulerView f7043k;
    private String f7044l;
    private boolean f7045m;
    private int f7046n;
    private int f7047o;
    private float f7048p;
    private float f7049q;
    private boolean f7050r;

    public TargetSetting() {
        this.f7044l = "IS_WEIXIN_LOGIN";
        this.f7045m = false;
        this.f7046n = 100;
        this.f7047o = 0;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_target_setting);
        com.p038b.p039a.ProGuard.m4086a(this);
        m8918h();
        m8920a();
    }

    private void m8918h() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f7045m = extras.getBoolean(this.f7044l, false);
        }
        if (getIntent() != null) {
            this.f7050r = getIntent().getBooleanExtra("to_main", false);
        } else {
            this.f7050r = false;
        }
        UserData e = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10785e(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        this.f7047o = e.getWeight();
        this.f7046n = e.getCalorieValue();
        com.yf.gattlib.p117p.ProGuard.m8292a("TargetSetting \u521d\u59cb\u5316\u76ee\u6807goal = " + this.f7046n);
        if (this.f7046n < 100) {
            this.f7046n = 100;
        } else if (this.f7046n > LightAppTableDefine.Msg_Need_Clean_COUNT) {
            this.f7046n = LightAppTableDefine.Msg_Need_Clean_COUNT;
        }
        this.f7048p = ((float) this.f7046n) / ((float) (((this.f7047o - 30) * 4) + 70));
        this.f7049q = ((float) this.f7046n) / ((float) (((this.f7047o - 30) * 9) + C0452e.f3828W));
        m8924d();
    }

    public void m8920a() {
        this.f7035c.setText(R.string.targetSetting);
        this.f7033a.setVisibility(0);
        this.f7034b.setVisibility(8);
        this.f7033a.setOnClickListener(this);
        this.f7040h.setOnClickListener(this);
        this.f7041i.setOnClickListener(this);
        this.f7042j.setOnClickListener(this);
        this.f7037e.setTypeface(Typeface.createFromAsset(getAssets(), "fonts/dincond_bold.otf"));
        this.f7036d.setOnClickListener(this);
        this.f7043k.setScalePosition(this.f7046n);
        this.f7043k.setOnScaleListener(new ab(this));
    }

    private void m8917c(int i) {
        this.f7046n = i;
        m8923c();
        if (this.f7046n >= 1200) {
            this.f7042j.setTextColor(getResources().getColor(R.color.text_red));
        } else if (this.f7046n >= 500) {
            this.f7041i.setTextColor(getResources().getColor(R.color.text_red));
        } else {
            this.f7040h.setTextColor(getResources().getColor(R.color.text_red));
        }
        this.f7037e.setText("" + this.f7046n);
        this.f7048p = ((float) this.f7046n) / ((float) (((this.f7047o - 30) * 4) + 70));
        this.f7049q = ((float) this.f7046n) / ((float) (((this.f7047o - 30) * 9) + C0452e.f3828W));
        m8924d();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btnback:
            case R.id.at_btn_left:
                if (com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10785e(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c()).getCalorieValue() == 0) {
                    m8795e((String) getResources().getText(R.string.user_info_is_not_complete));
                } else {
                    finish();
                }
            case R.id.tv_interest_player:
                if (this.f7046n >= 500) {
                    this.f7043k.m10566a(100);
                }
            case R.id.tv_amateur_player:
                if (this.f7046n < 500 || this.f7046n >= 1200) {
                    this.f7043k.m10566a(500);
                }
            case R.id.tv_profess_player:
                if (this.f7046n < 1200) {
                    this.f7043k.m10566a(1200);
                }
            case R.id.btn_finish:
                m8922b();
            default:
        }
    }

    public void m8922b() {
        if (m8797g()) {
            String c = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c();
            UserData e = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10785e(c);
            this.f7046n = this.f7043k.getScalePosition();
            com.yf.gattlib.p117p.ProGuard.m8292a("TargetSetting \u9009\u62e9\u7684\u76ee\u6807 = " + this.f7046n + ", \u7528\u6237\u7684 accessToken = " + c);
            e.setCalorieValue(this.f7046n);
            com.yf.gattlib.p117p.ProGuard.m8297b("TargetSetting \u8bbe\u7f6e\u8fd0\u52a8\u76ee\u6807\u754c\u9762\u5f00\u59cb\u4fdd\u5b58\u7528\u6237\u4fe1\u606f");
            com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10772a(e, new ac(this, az.m10242a(getFragmentManager(), getString(R.string.synchronizing_to_server)), e));
            return;
        }
        m8792b(R.string.net_unuse);
    }

    protected void onStop() {
        super.onStop();
    }

    protected void onDestroy() {
        super.onDestroy();
    }

    public void m8921a(int i) {
        m8919i();
    }

    private void m8919i() {
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10659b();
        finish();
        if (this.f7050r) {
            Intent intent = new Intent(this, MainActivity.class);
            intent.putExtra("REGISTER_SUCCESS", true);
            startActivity(intent);
        }
    }

    public void m8923c() {
        this.f7042j.setTextColor(getResources().getColor(R.color.black));
        this.f7041i.setTextColor(getResources().getColor(R.color.black));
        this.f7040h.setTextColor(getResources().getColor(R.color.black));
    }

    public void m8924d() {
        if (this.f7048p < 1.0f) {
            this.f7038f.setText(((int) (this.f7048p * 60.0f)) + getString(R.string.min));
        } else {
            this.f7038f.setText((((int) this.f7048p) / 1) + getString(R.string.hour) + ((int) ((this.f7048p - ((float) (((int) this.f7048p) / 1))) * 60.0f)) + getString(R.string.min));
        }
        if (this.f7049q < 1.0f) {
            this.f7039g.setText(((int) (this.f7049q * 60.0f)) + getString(R.string.min));
        } else {
            this.f7039g.setText((((int) this.f7049q) / 1) + getString(R.string.hour) + ((int) ((this.f7049q - ((float) (((int) this.f7049q) / 1))) * 60.0f)) + getString(R.string.min));
        }
    }

    public String m8925e() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis()));
    }
}
