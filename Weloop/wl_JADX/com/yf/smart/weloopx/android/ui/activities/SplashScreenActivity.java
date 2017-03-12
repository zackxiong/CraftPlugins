package com.yf.smart.weloopx.android.ui.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.widget.TextView;
import com.yf.smart.weloopx.activitys.RegisterPhoneActivity1;
import com.yf.smart.weloopx.activitys.RegisterStart;
import com.yf.smart.weloopx.activitys.TargetSetting;
import com.yf.smart.weloopx.activitys.UserInfoSetting;
import com.yf.smart.weloopx.activitys.WelcomeActivity;
import com.yf.smart.weloopx.data.models.UserData;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.p145g.ProGuard;

/* compiled from: ProGuard */
public class SplashScreenActivity extends Activity {
    private final String f7610a;
    private ProGuard f7611b;
    private Handler f7612c;
    private Runnable f7613d;

    public SplashScreenActivity() {
        this.f7610a = "SplashScreenActivity";
        this.f7613d = new gd(this);
    }

    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        com.yf.gattlib.p117p.ProGuard.m8293a("SplashScreenActivity", "onCreate");
        this.f7612c = new Handler();
        m9593d();
        m9596g();
    }

    private void m9593d() {
        this.f7612c.postDelayed(this.f7613d, 1000);
    }

    private void m9594e() {
        setContentView(R.layout.activity_splashscreen);
        m9595f();
    }

    protected void onDestroy() {
        com.yf.gattlib.p117p.ProGuard.m8293a("SplashScreenActivity", "onDestroy");
        this.f7612c.removeCallbacks(this.f7613d);
        super.onDestroy();
    }

    private void m9595f() {
        try {
            ((TextView) findViewById(R.id.tv_version)).setText(getPackageManager().getPackageInfo(getPackageName(), 0).versionName);
        } catch (NameNotFoundException e) {
        }
    }

    public void onBackPressed() {
    }

    private void m9596g() {
        String c = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c();
        if (!TextUtils.isEmpty(c)) {
            this.f7611b = new ProGuard();
            if (this.f7611b.m11306a((Context) this)) {
                m9590a(c);
            } else {
                m9597h();
            }
        } else if (m9600k()) {
            m9599j();
            getSharedPreferences("flag_first", 0).edit().putBoolean("FIRST", false).commit();
        } else {
            m9602b();
        }
    }

    private void m9590a(String str) {
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("accessToken", str);
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11251k(), proGuard, new ge(this));
    }

    private void m9597h() {
        startActivity(new Intent(this, MainActivity.class));
        finish();
    }

    private void m9598i() {
        Log.e("SplashScreenActivity", "" + com.yf.smart.weloopx.p149d.ProGuard.m11006b().m11010c());
        if (com.yf.smart.weloopx.p149d.ProGuard.m11006b().m11010c()) {
            m9601a();
        } else {
            m9601a();
        }
        finish();
    }

    private void m9599j() {
        startActivity(new Intent(this, WelcomeActivity.class));
        finish();
    }

    private boolean m9600k() {
        return getSharedPreferences("flag_first", 0).getBoolean("FIRST", true);
    }

    public void m9601a() {
        Intent intent;
        UserData e = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10785e(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        if (TextUtils.isEmpty(e.getNickname())) {
            intent = new Intent(this, RegisterPhoneActivity1.class);
        } else if (e.getWeight() == 0 || e.getStature() == 0 || "".equals(e.getBirthday())) {
            intent = new Intent(this, UserInfoSetting.class);
        } else if (e.getCalorieValue() == 0) {
            intent = new Intent(this, TargetSetting.class);
            intent.putExtra("to_main", true);
        } else {
            intent = new Intent(this, MainActivity.class);
            intent.putExtra("LOGIN_SUCCESS", true);
        }
        startActivity(intent);
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10659b();
    }

    public void m9602b() {
        Class i;
        if (com.yf.smart.weloopx.p149d.ProGuard.m11006b().m11010c()) {
            i = com.yf.smart.weloopx.p149d.ProGuard.m11006b().m11016i();
        } else {
            i = RegisterStart.class;
        }
        startActivity(new Intent(this, i));
        finish();
    }

    public void m9603c() {
        if (com.yf.smart.weloopx.p149d.ProGuard.m11006b().m11010c()) {
            startActivity(new Intent(this, com.yf.smart.weloopx.p149d.ProGuard.m11006b().m11016i()));
        } else {
            startActivity(new Intent(this, RegisterStart.class));
        }
        finish();
    }
}
