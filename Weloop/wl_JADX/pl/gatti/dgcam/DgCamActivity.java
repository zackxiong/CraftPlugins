package pl.gatti.dgcam;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.baidu.location.BDLocationStatusCodes;
import com.yf.smart.weloopx.android.ui.activities.ProGuard;
import com.yf.smart.weloopx.dist.R;
import java.util.Timer;
import java.util.TimerTask;

@SuppressLint({"HandlerLeak"})
/* compiled from: ProGuard */
public class DgCamActivity extends ProGuard {
    private static final String f9665b;
    private String f9666A;
    private BroadcastReceiver f9667B;
    Handler f9668a;
    private int f9669c;
    private View f9670d;
    private ImageView f9671e;
    private ImageView f9672f;
    private ImageView f9673g;
    private TextView f9674h;
    private Button f9675i;
    private Button f9676j;
    private ProGuard f9677k;
    private ac f9678l;
    private ProGuard f9679m;
    private ProGuard f9680n;
    private int f9681o;
    private Handler f9682p;
    private boolean f9683q;
    private boolean f9684r;
    private boolean f9685s;
    private boolean f9686t;
    private boolean f9687u;
    private TimerTask f9688w;
    private Timer f9689x;
    private int f9690y;
    private String f9691z;

    public DgCamActivity() {
        this.f9669c = Color.argb(127, 255, 255, 255);
        this.f9681o = 0;
        this.f9682p = new Handler();
        this.f9683q = false;
        this.f9684r = true;
        this.f9685s = false;
        this.f9686t = false;
        this.f9687u = true;
        this.f9690y = 0;
        this.f9691z = "";
        this.f9666A = "";
        this.f9667B = new ProGuard(this);
        this.f9668a = new ProGuard(this);
    }

    static /* synthetic */ int m12246m(DgCamActivity dgCamActivity) {
        int i = dgCamActivity.f9690y + 1;
        dgCamActivity.f9690y = i;
        return i;
    }

    static {
        f9665b = DgCamActivity.class.getSimpleName();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(com.umeng.update.util.ProGuard.f5670c);
        setContentView(R.layout.activity_camera);
        m8794d(getResources().getString(R.string.saveing));
        m12217a(bundle);
    }

    private void m12217a(Bundle bundle) {
        this.f9674h = (TextView) findViewById(R.id.dg_tv_time);
        this.f9674h.setText("0");
        this.f9670d = findViewById(R.id.dg_view_bottom);
        this.f9670d.setBackgroundColor(this.f9669c);
        this.f9671e = (ImageView) findViewById(R.id.dg_iv_camera);
        this.f9671e.setVisibility(0);
        this.f9671e.setOnClickListener(new ProGuard(this));
        this.f9672f = (ImageView) findViewById(R.id.dg_iv_back);
        this.f9672f.setOnClickListener(new ProGuard(this));
        this.f9675i = (Button) findViewById(R.id.dg_btn_open_light);
        this.f9675i.setOnClickListener(new ProGuard(this));
        this.f9676j = (Button) findViewById(R.id.dg_btn_take_picture_vedio);
        this.f9676j.setOnClickListener(new ProGuard(this));
        this.f9673g = (ImageView) findViewById(R.id.dg_iv_start_video);
        this.f9673g.setVisibility(8);
        this.f9677k = new ProGuard(this);
        this.f9678l = new ac(this, this.f9677k);
        this.f9679m = new ProGuard(this, this.f9677k);
        if (bundle != null) {
            this.f9677k.m12298a(bundle.getInt("CAMERA_ID"));
        } else {
            this.f9677k.m12298a(0);
        }
        if (this.f9677k.m12309h()) {
            this.f9677k.m12306e();
        }
        new com.yf.gattlib.client.p113b.ProGuard().m7498f();
    }

    private boolean m12224b() {
        return this.f9678l.m12320b() || this.f9679m.m12342d() || this.f9683q;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("CAMERA_ID", this.f9677k.m12304c());
        super.onSaveInstanceState(bundle);
    }

    private void m12226c() {
        com.yf.gattlib.p117p.ProGuard.m8292a(f9665b + " \u6267\u884c\u62cd\u7167");
        m12236h();
        try {
            this.f9679m.m12341c();
            this.f9678l.m12318a(this.f9685s ? BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES : BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE, this.f9684r);
            this.f9676j.setText(R.string.take_picture);
            this.f9673g.setVisibility(8);
            this.f9681o++;
            this.f9674h.setText(String.valueOf(this.f9681o));
        } catch (Throwable th) {
            com.yf.gattlib.p117p.ProGuard.m8293a(f9665b, Log.getStackTraceString(th));
        }
    }

    private void m12230d() {
        com.yf.gattlib.p117p.ProGuard.m8292a(f9665b + " \u5f00\u59cb\u6267\u884c\u5f55\u50cf \u662f\u5426\u4fdd\u5b58\u5b8c\u6bd5 = " + this.f9687u);
        if (this.f9677k.m12307f() == null) {
            com.yf.gattlib.p117p.ProGuard.m8297b(f9665b + " \u6211\u64cd\u4ed6\u59b9\uff0cCamera\u51fa\u9519\u4e86");
        } else if (this.f9687u) {
            this.f9676j.setText(R.string.video);
            this.f9676j.setBackgroundResource(R.drawable.photo_video);
            this.f9676j.setEnabled(false);
            this.f9673g.setVisibility(0);
            this.f9687u = false;
            m12232e();
            this.f9679m.m12339a();
        }
    }

    private void m12232e() {
        this.f9690y = 0;
        this.f9688w = new ProGuard(this);
        this.f9689x = new Timer();
        this.f9689x.schedule(this.f9688w, 1000, 1000);
    }

    private void m12236h() {
        if (this.f9689x != null) {
            this.f9689x.cancel();
            this.f9689x = null;
        }
    }

    private void m12239i() {
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), f9665b);
        if (!this.f9683q) {
            this.f9683q = true;
            this.f9682p.postDelayed(new ProGuard(this), 2000);
            m12236h();
        }
    }

    private void m12241j() {
        if (this.f9689x != null) {
            this.f9689x.cancel();
            this.f9689x = null;
        }
        this.f9676j.setEnabled(true);
        this.f9679m.m12340b();
        this.f9679m.m12341c();
        this.f9683q = false;
    }

    protected void onNewIntent(Intent intent) {
    }

    private void m12216a(Intent intent) {
        if (intent == null) {
            finish();
            return;
        }
        switch (intent.getIntExtra("EXTRA_CODE", -1)) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                com.yf.gattlib.p117p.ProGuard.m8292a(f9665b + " \u5f00\u59cb\u62cd\u7167 = " + m12224b());
                if (!m12224b()) {
                    m12226c();
                } else if (this.f9679m.m12342d()) {
                    this.f9679m.m12340b();
                    this.f9687u = true;
                    m12226c();
                }
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                this.f9671e.setVisibility(8);
                com.yf.gattlib.p117p.ProGuard.m8292a(f9665b + " \u5f00\u59cb\u5f55\u50cf");
                if (!m12224b()) {
                    com.yf.gattlib.p117p.ProGuard.m8292a(f9665b + " ~~~~~1");
                    m12230d();
                } else if (this.f9679m.m12342d()) {
                    com.yf.gattlib.p117p.ProGuard.m8292a(f9665b + " ~~~~~2");
                    m12239i();
                }
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                com.yf.gattlib.p117p.ProGuard.m8292a(f9665b + " \u7ed3\u675f\u5f55\u50cf");
                if (this.f9679m.m12342d()) {
                    m12239i();
                    this.f9671e.setVisibility(0);
                }
            default:
        }
    }

    protected void onDestroy() {
        this.f9671e.setVisibility(0);
        if (this.f9689x != null) {
            this.f9689x.cancel();
            this.f9689x = null;
        }
        new com.yf.gattlib.client.p113b.ProGuard().m7498f();
        super.onDestroy();
    }

    protected void onResume() {
        super.onResume();
        this.f9671e.setVisibility(0);
        if (!m12219a((Context) this)) {
            finish();
        } else if (m12247m()) {
            m12243k();
            android.support.v4.p008a.ProGuard.m99a((Context) this).m103a(this.f9667B, new IntentFilter("pl.gatti.dgcam.ACTION_TAKE"));
            if (this.f9686t) {
                new com.yf.gattlib.client.p113b.ProGuard().m7498f();
                this.f9676j.setText(R.string.video);
                this.f9674h.setText("0'00''");
                return;
            }
            new com.yf.gattlib.client.p113b.ProGuard().m7498f();
            this.f9673g.setVisibility(8);
            this.f9676j.setText(R.string.take_picture);
            this.f9674h.setText(String.valueOf(this.f9681o));
        } else {
            finish();
        }
    }

    protected void onStop() {
        if (this.f9689x != null) {
            this.f9689x.cancel();
            this.f9689x = null;
        }
        this.f9673g.setVisibility(8);
        if (this.f9686t) {
            new com.yf.gattlib.client.p113b.ProGuard().m7498f();
        }
        super.onStop();
    }

    protected void onRestart() {
        super.onRestart();
    }

    protected void onStart() {
        super.onStart();
    }

    private void m12243k() {
        this.f9680n = new ProGuard(this, this.f9677k);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.camera_preview);
        frameLayout.setLayoutParams(new LayoutParams(-1, -1));
        frameLayout.removeAllViews();
        frameLayout.addView(this.f9680n, 0);
        this.f9680n.setOnTouchListener(new ProGuard(this));
    }

    protected void onPause() {
        android.support.v4.p008a.ProGuard.m99a((Context) this).m102a(this.f9667B);
        m12241j();
        this.f9687u = true;
        m12245l();
        ((FrameLayout) findViewById(R.id.camera_preview)).removeViewAt(0);
        super.onPause();
    }

    private void m12245l() {
        this.f9677k.m12302b();
    }

    private boolean m12219a(Context context) {
        if (context.getPackageManager().hasSystemFeature("android.hardware.camera")) {
            return true;
        }
        return false;
    }

    private boolean m12247m() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            return true;
        }
        return false;
    }
}
