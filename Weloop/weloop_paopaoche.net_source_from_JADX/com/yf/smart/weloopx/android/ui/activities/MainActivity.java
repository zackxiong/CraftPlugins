package com.yf.smart.weloopx.android.ui.activities;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TabHost.TabSpec;
import android.widget.TextView;
import com.baidu.android.pushservice.PushManager;
import com.umeng.update.UpdateResponse;
import com.yf.lib.ui.fragments.FragmentTabHost;
import com.yf.lib.ui.views.BottomTabLayout;
import com.yf.smart.weloopx.activitys.RegisterStart;
import com.yf.smart.weloopx.android.services.LocationService;
import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.data.models.OriginalData;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.event.InvalidAccessTokenEvent;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: ProGuard */
public class MainActivity extends android.support.v4.app.ProGuard implements OnCheckedChangeListener, hg, com.yf.smart.weloopx.android.ui.p139c.ah.ProGuard, com.yf.smart.weloopx.p140b.p141b.ProGuard {
    public static final String[] f7493n;
    private Handler f7494A;
    private int f7495B;
    private TextView f7496C;
    private TextView f7497D;
    private com.yf.gattlib.p118d.ProGuard.ProGuard f7498E;
    private final Stack<Runnable> f7499F;
    private boolean f7500G;
    private Runnable f7501H;
    private Runnable f7502I;
    private Runnable f7503J;
    private Runnable f7504K;
    private Runnable f7505L;
    protected p023b.p024a.p025a.p026a.p027a.ProGuard f7506o;
    protected com.yf.gattlib.p108a.ProGuard f7507p;
    private final String f7508q;
    private final Class[] f7509r;
    private final int[] f7510s;
    private final int[] f7511t;
    private BottomTabLayout f7512u;
    private Dialog f7513v;
    private final int f7514w;
    private final int f7515x;
    private final int f7516y;
    private int f7517z;

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.MainActivity.1 */
    static /* synthetic */ class ProGuard {
        static final /* synthetic */ int[] f7491a;

        static {
            f7491a = new int[com.yf.smart.weloopx.p146c.ProGuard.values().length];
            try {
                f7491a[com.yf.smart.weloopx.p146c.ProGuard.WN02B01.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f7491a[com.yf.smart.weloopx.p146c.ProGuard.WN08B08.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f7491a[com.yf.smart.weloopx.p146c.ProGuard.BN01L02.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f7491a[com.yf.smart.weloopx.p146c.ProGuard.BN01SH02.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f7491a[com.yf.smart.weloopx.p146c.ProGuard.MYLINK.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.MainActivity.a */
    public static class ProGuard {
        public Class[] f7492a;
    }

    static {
        f7493n = new String[]{"tab0", "tab1", "tab2", "tab3"};
    }

    private void m9465l() {
        m9477u();
        runOnUiThread(new du(this));
    }

    public MainActivity() {
        this.f7508q = "MainActivity";
        this.f7509r = new Class[]{di.class, fp.class, el.class, ProGuard.class};
        this.f7510s = new int[]{R.string.goal, R.string.ranking_btn, R.string.me, R.string.device_settings};
        this.f7511t = new int[]{R.drawable.icon_chat, R.drawable.icon_contacts, R.drawable.icon_discover, R.drawable.icon_me};
        this.f7514w = 0;
        this.f7515x = 1;
        this.f7516y = 2;
        this.f7517z = 0;
        this.f7495B = 0;
        this.f7498E = new dl(this);
        this.f7499F = new Stack();
        this.f7500G = false;
        this.f7501H = new dy(this);
        this.f7502I = new ea(this);
        this.f7503J = new eb(this);
        this.f7504K = new ec(this);
        this.f7505L = new dn(this);
        this.f7507p = com.yf.gattlib.p108a.ProGuard.m7368a();
        this.f7506o = new p023b.p024a.p025a.p026a.p027a.ProGuard(this.f7507p, "V 0.00");
    }

    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        com.yf.gattlib.p117p.ProGuard.m8292a("MainActivity onCreate");
        setContentView(R.layout.activity_main);
        this.f7512u = (BottomTabLayout) findViewById(R.id.tab_bottom);
        this.f7512u.setup(getFragmentManager());
        m9485a(this.f7512u.getTabHost());
        this.f7512u.getTabHost().setOnTabChangedListener(new dv(this));
        m9466m();
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10659b();
        this.f7494A = new Handler();
        new com.yf.smart.weloopx.data.ProGuard(this).m11024b();
        sendBroadcast(new Intent("android.start.app.run.reminder"));
        m9476t();
        m9487f();
        if (com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10711o()) {
            m9465l();
        }
        com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10718a(this.f7498E);
        m9471o();
        m9473q();
        m9469n();
        com.yf.lib.p135a.ProGuard.m8508a().m8608a((Object) this);
        m9443A();
    }

    private void m9466m() {
        PushManager.startWork(getApplicationContext(), 0, com.yf.smart.weloopx.p145g.ProGuard.m11363a(this, "api_key"));
        Log.e("MainActivity", "baidu Push state is : " + Boolean.valueOf(PushManager.isPushEnabled(getApplicationContext())));
    }

    protected void m9485a(FragmentTabHost fragmentTabHost) {
        LayoutInflater from = LayoutInflater.from(this);
        new ProGuard().f7492a = this.f7509r;
        com.yf.smart.weloopx.p149d.ProGuard.m11006b().m11009a(com.yf.smart.weloopx.p149d.ProGuard.activity_main_tab_fragment, 0, r1);
        for (int i = 0; i < f7493n.length; i++) {
            TabSpec newTabSpec = fragmentTabHost.newTabSpec(f7493n[i]);
            View inflate = from.inflate(R.layout.tab_item, null);
            TextView textView = (TextView) inflate.findViewById(R.id.tab_text);
            textView.setText(this.f7510s[i]);
            textView.setCompoundDrawablesWithIntrinsicBounds(null, getResources().getDrawable(this.f7511t[i]), null, null);
            newTabSpec.setIndicator(inflate);
            Bundle bundle = new Bundle();
            bundle.putString("1", f7493n[i]);
            bundle.putInt("2", this.f7510s[i]);
            if (i == 2) {
                bundle.putInt("msgNum", this.f7495B);
                this.f7497D = textView;
            } else if (i == 3) {
                this.f7496C = textView;
            }
            fragmentTabHost.m8641a(newTabSpec, this.f7509r[i], bundle);
        }
    }

    @com.yf.lib.squareup.otto.ProGuard
    public void onInvalidAccessToken(InvalidAccessTokenEvent invalidAccessTokenEvent) {
        com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10779b("");
        m9451b((int) R.string.invalid_token);
        startActivity(new Intent(this, RegisterStart.class));
        finish();
    }

    private void m9469n() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            String string = extras.getString("login_result");
            String string2 = extras.getString("login_msg");
            if ("2020".equals(string)) {
                m9456d(string2);
            }
        }
    }

    private void m9444a(UpdateResponse updateResponse) {
        if (this.f7513v != null && this.f7513v.isShowing()) {
            this.f7513v.cancel();
        }
        this.f7513v = new Builder(this).create();
        this.f7513v.show();
        Window window = this.f7513v.getWindow();
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setContentView(R.layout.alert_dialog);
        Button button = (Button) window.findViewById(R.id.ad_btn_sure);
        button.setText(m9483a((int) R.string.app_update_now));
        button.setOnClickListener(new dw(this, updateResponse));
        button = (Button) window.findViewById(R.id.ad_btn_cancel);
        button.setText(m9483a((int) R.string.not_now));
        button.setOnClickListener(new dx(this, updateResponse));
        ((TextView) window.findViewById(R.id.ad_tv_description)).setVisibility(8);
        TextView textView = (TextView) window.findViewById(R.id.ad_tv_description_title);
        textView.setText(m9483a((int) R.string.version_date));
        textView.setVisibility(0);
        textView = (TextView) window.findViewById(R.id.ad_tv_msg);
        textView.setText(updateResponse.updateLog);
        textView.setVisibility(0);
        if (this.f7500G) {
            textView.setText(m9483a((int) R.string.force_upgrade));
            button.setVisibility(8);
            window.findViewById(R.id.ad_view_ver_line).setVisibility(8);
            this.f7513v.setCancelable(false);
        }
    }

    private void m9471o() {
        synchronized (this.f7499F) {
            this.f7499F.clear();
            this.f7499F.push(this.f7502I);
            this.f7499F.push(this.f7503J);
        }
    }

    private boolean m9472p() {
        boolean z;
        synchronized (this.f7499F) {
            z = !this.f7499F.empty();
        }
        return z;
    }

    private void m9473q() {
        synchronized (this.f7499F) {
            if (this.f7499F.isEmpty()) {
                return;
            }
            runOnUiThread((Runnable) this.f7499F.pop());
        }
    }

    private int m9450b(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        Matcher matcher = Pattern.compile("\\d+").matcher(str);
        matcher.find();
        return Integer.valueOf(matcher.group()).intValue();
    }

    private void m9453c(String str) {
        boolean z = m9450b(str) >= 4 && m9450b(com.yf.gattlib.p117p.ProGuard.m8224a(this)) < 4;
        this.f7500G = z;
        try {
            Date parse = new SimpleDateFormat("yyyy-MM-dd").parse("2016-01-05");
            this.f7500G = new Date().after(parse) & this.f7500G;
        } catch (Throwable e) {
            this.f7500G = false;
            com.yf.gattlib.p117p.ProGuard.m8294a("MainActivity", e);
        }
    }

    private boolean m9474r() {
        int i;
        PackageManager packageManager = getPackageManager();
        ArrayList arrayList = new ArrayList();
        for (String str : packageManager.getPackageInfo(getPackageName(), 4096).requestedPermissions) {
            if (!("android.permission.MOUNT_UNMOUNT_FILESYSTEMS".equals(str) || "android.permission.READ_LOGS".equals(str))) {
                int checkCallingOrSelfPermission = checkCallingOrSelfPermission(str);
                com.yf.gattlib.p117p.ProGuard.m8293a("MainActivity", str + ", granted =" + checkCallingOrSelfPermission);
                if (checkCallingOrSelfPermission == -1) {
                    CharSequence charSequence = null;
                    try {
                        charSequence = packageManager.getPermissionInfo(str, com.umeng.update.util.ProGuard.f5670c).loadLabel(packageManager).toString();
                    } catch (NameNotFoundException e) {
                        com.yf.gattlib.p117p.ProGuard.m8293a("MainActivity", "no permission: " + str);
                    }
                    try {
                        com.yf.gattlib.p117p.ProGuard.m8293a("MainActivity", str + ", name =" + charSequence);
                        if (!TextUtils.isEmpty(charSequence)) {
                            arrayList.add(charSequence);
                        }
                    } catch (Throwable e2) {
                        com.yf.gattlib.p117p.ProGuard.m8293a("MainActivity", Log.getStackTraceString(e2));
                        return false;
                    }
                }
                continue;
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (i = 0; i < arrayList.size(); i++) {
            stringBuilder.append(i + 1).append(".").append((String) arrayList.get(i)).append("\n");
        }
        ah.m10188a(getFragmentManager(), "cp", stringBuilder.toString(), R.layout.confirm_gray_dialog);
        return true;
    }

    private boolean m9475s() {
        if (com.yf.smart.weloopx.android.p142a.ProGuard.m9026a().m9029c() != -1) {
            return false;
        }
        com.yf.smart.weloopx.android.p142a.ProGuard.m9026a().m9027a(0);
        ah.m10188a(getFragmentManager(), "ee", getString(R.string.settings_incorrect_detail), R.layout.error_exit_gray_dialog);
        return true;
    }

    public void m9486a(String str, boolean z) {
        if ("cp".equals(str) && z) {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11249i())));
        } else if (!"ee".equals(str)) {
        } else {
            if (z) {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse(com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11250j())));
                return;
            }
            m9473q();
        }
    }

    protected void onResume() {
        super.onResume();
        com.yf.gattlib.p117p.ProGuard.m8292a("MainActivity onResume");
        m9484a(86400000);
        com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10718a(this.f7498E);
        if (m9482z() && com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10730i()) {
            startActivity(new Intent(this, FirstGuideActivity.class));
            com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().m7414a("FIRST_GUIDE", false);
        }
        if (!m9472p()) {
            com.yf.smart.weloopx.android.ui.ProGuard.m10155a().m10160a((Activity) this);
        }
        m9492k();
        OriginalData d = com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10725d();
        if (d == null || d.getData().length <= 16) {
            com.yf.gattlib.p117p.ProGuard.m8245a((Object) "MainActivity \u6ca1\u6709\u81ea\u52a8\u540c\u6b65\u4ea7\u751f\u7684\u6570\u636e\u66f4\u65b0");
        } else {
            com.yf.gattlib.p117p.ProGuard.m8245a((Object) "MainActivity \u6709\u81ea\u52a8\u540c\u6b65\u4ea7\u751f\u7684\u539f\u59cb\u6570\u636e");
            com.yf.smart.weloopx.p146c.ProGuard.m10923a().m10964c();
        }
        this.f7507p = com.yf.gattlib.p108a.ProGuard.m7368a();
        this.f7506o = new p023b.p024a.p025a.p026a.p027a.ProGuard(this.f7507p, "V 0.00");
    }

    private void m9476t() {
        com.yf.gattlib.p117p.ProGuard.m8292a("MainActivity \u5f00\u542f\u5b9a\u4f4d\u670d\u52a1");
        startService(new Intent(this, LocationService.class));
    }

    protected void attachBaseContext(Context context) {
        super.attachBaseContext(uk.co.chrisjenx.calligraphy.ProGuard.m12358a(context));
    }

    public void m9487f() {
        if (!com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8078h()) {
            this.f7512u.getTabHost().setCurrentTab(3);
        }
    }

    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        try {
            m9488g();
            m9481y();
        } catch (Throwable th) {
            com.yf.gattlib.p117p.ProGuard.m8298b("MainActivity", Log.getStackTraceString(th));
        }
    }

    public void m9488g() {
        com.yf.smart.weloopx.p140b.p141b.ProGuard dmVar = new dm(this);
        com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10775a(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c(), dmVar);
    }

    public void m9489h() {
        this.f7494A.post(this.f7505L);
    }

    private void m9477u() {
        this.f7494A.removeCallbacks(this.f7505L);
        this.f7494A.postDelayed(this.f7505L, 100);
    }

    public p023b.p024a.p025a.p026a.p027a.ProGuard m9490i() {
        return this.f7506o;
    }

    private void m9478v() {
        if (!this.f7507p.m7376f().m8087q()) {
            return;
        }
        if (com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8082l()) {
            m9479w();
            return;
        }
        com.yf.gattlib.client.ProGuard k = com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8081k();
        k.m7816a(new ProGuard(this));
        k.m7827j();
    }

    private void m9479w() {
        new com.yf.gattlib.p125j.ProGuard().m8131a(this, new dp(this));
    }

    private void m9480x() {
        switch (ProGuard.f7491a[com.yf.smart.weloopx.p146c.ProGuard.m10910c().ordinal()]) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                this.f7517z = 1;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                this.f7517z = 2;
            default:
                this.f7517z = 0;
        }
    }

    private void m9456d(String str) {
        AlertDialog create = new Builder(this).create();
        create.show();
        Window window = create.getWindow();
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setContentView(R.layout.alert_dialog);
        Button button = (Button) window.findViewById(R.id.ad_btn_sure);
        button.setText(getString(R.string.sure));
        button.setOnClickListener(new dq(this, create));
        window.findViewById(R.id.ad_view_ver_line).setVisibility(8);
        ((Button) window.findViewById(R.id.ad_btn_cancel)).setVisibility(8);
        ((TextView) window.findViewById(R.id.ad_tv_description)).setVisibility(8);
        TextView textView = (TextView) window.findViewById(R.id.ad_tv_description_title);
        textView.setText(getString(R.string.server_maintain));
        textView.setVisibility(0);
        textView = (TextView) window.findViewById(R.id.ad_tv_msg);
        textView.setText(str);
        textView.setVisibility(0);
    }

    private void m9451b(int i) {
        runOnUiThread(new dr(this, i));
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        Boolean valueOf;
        Boolean valueOf2 = Boolean.valueOf(false);
        if (this.f7512u.getTabHost().getCurrentTab() == 3) {
            Fragment findFragmentByTag = getFragmentManager().findFragmentByTag(f7493n[3]);
            if (findFragmentByTag instanceof ProGuard) {
                valueOf = Boolean.valueOf(((ProGuard) findFragmentByTag).m10135b(i));
                return valueOf.booleanValue() || super.onKeyDown(i, keyEvent);
            }
        }
        valueOf = valueOf2;
        if (!valueOf.booleanValue()) {
        }
    }

    private void m9481y() {
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("accessToken", com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11261u(), proGuard, new ds(this));
    }

    public void m9491j() {
        this.f7495B = 0;
        this.f7497D.setCompoundDrawablesWithIntrinsicBounds(null, getResources().getDrawable(R.drawable.icon_discover), null, null);
    }

    protected void onDestroy() {
        com.yf.gattlib.p117p.ProGuard.m8292a("MainActivity onDestroy");
        com.yf.lib.p135a.ProGuard.m8508a().m8611b((Object) this);
        super.onDestroy();
    }

    private boolean m9482z() {
        return com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().getBoolean("FIRST_GUIDE", true);
    }

    protected void onPause() {
        com.yf.gattlib.p117p.ProGuard.m8292a("MainActivity onPause");
        com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10722b(this.f7498E);
        super.onPause();
    }

    public void m9492k() {
        com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10761a(new dt(this));
    }

    private void m9443A() {
        if (com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().getBoolean("KEY_AUTO_SYNC_DATA", false)) {
            com.yf.smart.weloopx.p146c.ProGuard.m10923a().m10967f();
        }
    }

    protected final String m9483a(int i) {
        try {
            return getString(i);
        } catch (Throwable th) {
            return "";
        }
    }

    public void m9484a(long j) {
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().getLong("LAST_UPDATE_TIME", 0);
        if (j2 == 0) {
            com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().m7412a("LAST_UPDATE_TIME", currentTimeMillis);
            this.f7494A.post(this.f7501H);
            return;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            if (new Date().after(simpleDateFormat.parse("2016-01-05"))) {
                this.f7494A.post(this.f7501H);
                return;
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        com.yf.gattlib.p117p.ProGuard.m8292a("MainActivitynow = " + currentTimeMillis + " lastUpdateTime = " + j2 + " interval = " + (currentTimeMillis - j2));
        if (currentTimeMillis - j2 > j) {
            com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().m7412a("LAST_UPDATE_TIME", currentTimeMillis);
            this.f7494A.post(this.f7501H);
        }
    }
}
