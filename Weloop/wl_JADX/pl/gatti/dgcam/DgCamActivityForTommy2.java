package pl.gatti.dgcam;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.provider.MediaStore.Images.Media;
import android.text.TextUtils;
import android.util.Log;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.baidu.location.BDLocationStatusCodes;
import com.yf.smart.weloopx.android.ui.activities.ProGuard;
import com.yf.smart.weloopx.dist.R;
import java.io.File;
import java.util.Timer;
import java.util.TimerTask;

@SuppressLint({"HandlerLeak"})
/* compiled from: ProGuard */
public class DgCamActivityForTommy2 extends ProGuard implements OnClickListener, ab {
    public static boolean f9692a;
    private View f9693A;
    private Timer f9694B;
    private int f9695C;
    private int f9696D;
    private com.yf.smart.weloopx.p145g.ProGuard f9697E;
    private String f9698F;
    private boolean f9699G;
    private boolean f9700H;
    private com.p038b.p039a.ProGuard f9701I;
    private com.yf.smart.weloopx.p140b.ProGuard f9702J;
    private BroadcastReceiver f9703K;
    private Runnable f9704L;
    private OnGestureListener f9705M;
    private Runnable f9706N;
    private com.yf.gattlib.p118d.ProGuard.ProGuard f9707O;
    private ProGuard f9708b;
    private ac f9709c;
    private ProGuard f9710d;
    private GestureDetector f9711e;
    private Handler f9712f;
    private Handler f9713g;
    private Timer f9714h;
    private boolean f9715i;
    private boolean f9716j;
    private boolean f9717k;
    private boolean f9718l;
    private boolean f9719m;
    private FrameLayout f9720n;
    private ImageView f9721o;
    private Button f9722p;
    private Button f9723q;
    private TextView f9724r;
    private TextView f9725s;
    private TextView f9726t;
    private TextView f9727u;
    private TextView f9728w;
    private RelativeLayout f9729x;
    private RelativeLayout f9730y;
    private ImageView f9731z;

    public DgCamActivityForTommy2() {
        this.f9712f = new Handler();
        this.f9713g = new Handler();
        this.f9714h = new Timer();
        this.f9715i = false;
        this.f9716j = true;
        this.f9717k = false;
        this.f9718l = true;
        this.f9719m = false;
        this.f9695C = 0;
        this.f9696D = 0;
        this.f9698F = "";
        this.f9699G = false;
        this.f9700H = true;
        this.f9703K = new ProGuard(this);
        this.f9704L = new ProGuard(this);
        this.f9705M = new ProGuard(this);
        this.f9706N = new ProGuard(this);
        this.f9707O = new ProGuard(this);
    }

    static {
        f9692a = false;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(com.umeng.update.util.ProGuard.f5670c);
        setContentView(R.layout.activity_camera_tommy);
        m12256a();
        m8794d(getResources().getString(R.string.saveing));
        m12259a(bundle);
        m12291n();
    }

    protected void onResume() {
        super.onResume();
        com.yf.gattlib.p117p.ProGuard.m8292a("DgCamActivityForTommy2 onResume");
        this.f9722p.setVisibility(0);
        if (!m12262a((Context) this)) {
            finish();
        } else if (m12290m()) {
            m12285k();
            android.support.v4.p008a.ProGuard.m99a((Context) this).m103a(this.f9703K, new IntentFilter("pl.gatti.dgcam.ACTION_TAKE"));
            if (this.f9719m) {
                new com.yf.gattlib.client.p113b.ProGuard().m7498f();
            } else {
                new com.yf.gattlib.client.p113b.ProGuard().m7498f();
            }
        } else {
            finish();
        }
    }

    protected void onStop() {
        com.yf.gattlib.p117p.ProGuard.m8292a("DgCamActivityForTommy2 onStop isGoPhotoAlbum = " + f9692a);
        if (this.f9694B != null) {
            this.f9694B.cancel();
            this.f9694B = null;
        }
        if (this.f9719m) {
            m12282i();
        }
        if (!f9692a) {
            new com.yf.gattlib.client.p113b.ProGuard().m7498f();
            m12292o();
            finish();
        }
        super.onStop();
    }

    protected void onDestroy() {
        com.yf.gattlib.p117p.ProGuard.m8292a("DgCamActivityForTommy2 onDestroy");
        this.f9713g.removeCallbacks(this.f9704L);
        this.f9713g.removeCallbacks(this.f9706N);
        this.f9702J.m10722b(this.f9707O);
        this.f9722p.setVisibility(0);
        if (this.f9694B != null) {
            this.f9694B.cancel();
            this.f9694B = null;
        }
        m12292o();
        new com.yf.gattlib.client.p113b.ProGuard().m7498f();
        f9692a = false;
        super.onDestroy();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f9711e.onTouchEvent(motionEvent);
    }

    private void m12256a() {
        this.f9697E = new com.yf.smart.weloopx.p145g.ProGuard();
        this.f9701I = new com.p038b.p039a.ProGuard(this);
        this.f9702J = com.yf.smart.weloopx.p140b.ProGuard.m10712a();
        this.f9702J.m10718a(this.f9707O);
    }

    private void m12259a(Bundle bundle) {
        this.f9720n = (FrameLayout) findViewById(R.id.camera_preview);
        this.f9693A = findViewById(R.id.camera_view_flash);
        this.f9730y = (RelativeLayout) findViewById(R.id.camera_rl_title);
        this.f9729x = (RelativeLayout) findViewById(R.id.camera_rl_count_time);
        this.f9724r = (TextView) findViewById(R.id.camera_tv_center);
        this.f9725s = (TextView) findViewById(R.id.camera_tv_left);
        this.f9726t = (TextView) findViewById(R.id.camera_tv_right);
        this.f9727u = (TextView) findViewById(R.id.camera_tv_video_time);
        this.f9727u.setOnClickListener(this);
        this.f9728w = (TextView) findViewById(R.id.camera_tv_videoing);
        this.f9721o = (ImageView) findViewById(R.id.camrea_iv_thumbnail);
        this.f9721o.setOnClickListener(this);
        this.f9731z = (ImageView) findViewById(R.id.camera_iv_counttime);
        this.f9731z.setOnClickListener(this);
        ((Button) findViewById(R.id.camera_btn_cancel)).setOnClickListener(this);
        this.f9722p = (Button) findViewById(R.id.camera_btn_switch_camera);
        this.f9722p.setVisibility(0);
        this.f9722p.setOnClickListener(this);
        this.f9723q = (Button) findViewById(R.id.camera_btn_flash);
        ((Button) findViewById(R.id.camera_btn_count)).setOnClickListener(this);
        this.f9713g.post(this.f9704L);
        this.f9708b = new ProGuard(this);
        this.f9709c = new ac(this, this.f9708b);
        this.f9709c.m12319a((ab) this);
        this.f9710d = new ProGuard(this, this.f9708b);
        if (bundle != null) {
            this.f9708b.m12298a(bundle.getInt("CAMERA_ID"));
        } else {
            this.f9708b.m12298a(0);
        }
        if (this.f9708b.m12309h()) {
            this.f9708b.m12306e();
        }
        m12266b(true);
        this.f9711e = new GestureDetector(this, this.f9705M);
    }

    private boolean m12267b() {
        return this.f9709c.m12320b() || this.f9710d.m12342d() || this.f9715i;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("CAMERA_ID", this.f9708b.m12304c());
        super.onSaveInstanceState(bundle);
    }

    private void m12270c() {
        com.yf.gattlib.p117p.ProGuard.m8292a("DgCamActivityForTommy2 \u6267\u884c\u62cd\u7167");
        this.f9700H = true;
        m12266b(true);
        m12284j();
        try {
            this.f9710d.m12341c();
            this.f9709c.m12318a(this.f9699G ? BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES : BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE, this.f9716j);
            this.f9723q.setBackgroundResource(this.f9699G ? R.drawable.flashlight_open : R.drawable.flashlight_close);
        } catch (Exception e) {
            e.printStackTrace();
            com.yf.gattlib.p117p.ProGuard.m8292a("DgCamActivityForTommy2 \u62cd\u7167\u51fa\u9519 = " + e.getMessage());
        }
    }

    private void m12273d() {
        com.yf.gattlib.p117p.ProGuard.m8292a("DgCamActivityForTommy2 \u5f00\u59cb\u6267\u884c\u5f55\u50cf \u662f\u5426\u4fdd\u5b58\u5b8c\u6bd5 = " + this.f9718l);
        this.f9700H = false;
        if (this.f9708b.m12307f() == null) {
            com.yf.gattlib.p117p.ProGuard.m8297b("DgCamActivityForTommy2Camera\u51fa\u9519\u4e86");
        } else if (this.f9718l) {
            this.f9718l = false;
            this.f9719m = true;
            m12275e();
            this.f9710d.m12339a();
            m12266b(false);
            this.f9722p.setVisibility(8);
        }
    }

    private void m12275e() {
        TimerTask proGuard = new ProGuard(this);
        this.f9694B = new Timer();
        this.f9694B.schedule(proGuard, 1000, 1000);
    }

    private void m12280h() {
        this.f9722p.setVisibility(0);
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), "DgCamActivityForTommy2");
        if (!this.f9715i) {
            this.f9715i = true;
            this.f9712f.postDelayed(new ProGuard(this), 2000);
            m12284j();
        }
    }

    private void m12282i() {
        this.f9710d.m12340b();
        this.f9710d.m12341c();
        this.f9715i = false;
    }

    private void m12284j() {
        this.f9695C = 0;
        if (this.f9694B != null) {
            this.f9694B.cancel();
            this.f9694B = null;
        }
    }

    protected void onNewIntent(Intent intent) {
    }

    private void m12258a(Intent intent) {
        boolean z = true;
        if (intent == null) {
            finish();
            return;
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            int intExtra = intent.getIntExtra("EXTRA_CODE", -1);
            int i = extras.getInt("FLASH_CHANNEL");
            if (i != 1) {
                z = false;
            }
            this.f9699G = z;
            com.yf.gattlib.p117p.ProGuard.m8292a("DgCamActivityForTommy2 CODE = " + intExtra + ",isChannelFlash = " + this.f9699G + ", \u95ea\u5149\u706f\u5f00\u5173 = " + this.f9717k);
            switch (intExtra) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    m12257a(i, intent.getIntExtra("OPERATION_TYPE", -1));
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    if (!m12267b()) {
                        com.yf.gattlib.p117p.ProGuard.m8292a("DgCamActivityForTommy2 \u5f00\u59cb\u5f55\u50cf");
                        m12273d();
                    } else if (this.f9710d.m12342d()) {
                        com.yf.gattlib.p117p.ProGuard.m8292a("DgCamActivityForTommy2 \u7ed3\u675f\u5f55\u50cf");
                        m12280h();
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    com.yf.gattlib.p117p.ProGuard.m8292a("DgCamActivityForTommy2 \u7ed3\u675f\u5f55\u50cf");
                    if (this.f9710d.m12342d()) {
                        m12280h();
                    }
                default:
            }
        }
    }

    private void m12257a(int i, int i2) {
        String m = com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10709m();
        boolean z = "V 4.02".compareToIgnoreCase(m) <= 0;
        com.yf.gattlib.p117p.ProGuard.m8292a("DgCamActivityForTommy2 \u5f00\u59cb\u5904\u7406 channel = " + i + ", operationType = " + i2 + ", isMaxVersion = " + z + ", curFirmeVersion = " + m);
        if (z) {
            switch (i2) {
                case BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES /*1001*/:
                    com.yf.gattlib.p117p.ProGuard.m8297b("DgCamActivityForTommy2 \u5207\u6362\u5f55\u50cf\u754c\u9762");
                    this.f9700H = false;
                    m12266b(this.f9700H);
                    return;
                case BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE /*1002*/:
                    com.yf.gattlib.p117p.ProGuard.m8297b("DgCamActivityForTommy2 \u5207\u6362\u62cd\u7167\u754c\u9762");
                    this.f9700H = true;
                    m12266b(this.f9700H);
                    return;
                case 1003:
                    com.yf.gattlib.p117p.ProGuard.m8297b("DgCamActivityForTommy2 \u6267\u884c\u62cd\u7167");
                    this.f9722p.setVisibility(0);
                    if (!m12267b()) {
                        m12270c();
                        return;
                    } else if (this.f9710d.m12342d()) {
                        this.f9710d.m12340b();
                        this.f9718l = true;
                        m12270c();
                        return;
                    } else {
                        return;
                    }
                case 1004:
                    com.yf.gattlib.p117p.ProGuard.m8297b("DgCamActivityForTommy2 \u95ea\u5149\u706f\u5173\u95ed");
                    this.f9717k = true;
                    m12293p();
                    return;
                case 1005:
                    com.yf.gattlib.p117p.ProGuard.m8297b("DgCamActivityForTommy2 \u95ea\u5149\u706f\u6253\u5f00");
                    this.f9717k = false;
                    m12293p();
                    return;
                default:
                    return;
            }
        }
        com.yf.gattlib.p117p.ProGuard.m8292a("DgCamActivityForTommy2 \u4f4e\u7248\u672c \u5f00\u59cb\u62cd\u7167 \u6444\u50cf\u5934\u662f\u4e0d\u662f\u5f88\u5fd9 = " + m12267b());
        this.f9722p.setVisibility(0);
        if (!m12267b()) {
            m12270c();
        } else if (this.f9710d.m12342d()) {
            this.f9710d.m12340b();
            this.f9718l = true;
            m12270c();
        }
    }

    private void m12285k() {
        View proGuard = new ProGuard(this, this.f9708b);
        this.f9720n.setLayoutParams(new LayoutParams(-1, -1));
        this.f9720n.removeAllViews();
        this.f9720n.addView(proGuard, 0);
        proGuard.setOnTouchListener(new ProGuard(this));
    }

    protected void onPause() {
        com.yf.gattlib.p117p.ProGuard.m8298b("DgCamActivityForTommy2", "onPause");
        android.support.v4.p008a.ProGuard.m99a((Context) this).m102a(this.f9703K);
        m12282i();
        this.f9718l = true;
        m12287l();
        this.f9720n.removeViewAt(0);
        super.onPause();
    }

    private void m12287l() {
        this.f9708b.m12302b();
    }

    private boolean m12262a(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.camera");
    }

    private boolean m12290m() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            return true;
        }
        return false;
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.camera_btn_flash:
                m12293p();
            case R.id.camera_btn_switch_camera:
                m12294q();
            case R.id.camera_tv_video_time:
                m12261a(false);
            case R.id.camera_iv_counttime:
                this.f9729x.setVisibility(0);
                this.f9730y.setVisibility(8);
            case R.id.camera_btn_count:
                this.f9696D = 0;
                this.f9727u.setVisibility(8);
                this.f9731z.setVisibility(0);
                m12261a(true);
            case R.id.camera_tv_cout_five_seconds:
                this.f9696D = 5;
                this.f9727u.setVisibility(0);
                this.f9727u.setText("5S");
                this.f9731z.setVisibility(8);
                m12261a(true);
            case R.id.camera_tv_cout_ten_seconds:
                this.f9696D = 10;
                this.f9727u.setVisibility(0);
                this.f9727u.setText("10S");
                this.f9731z.setVisibility(8);
                m12261a(true);
            case R.id.camrea_iv_thumbnail:
                if (!this.f9719m) {
                    f9692a = true;
                    Intent intent = new Intent("android.intent.action.GET_CONTENT");
                    intent.addCategory("android.intent.category.OPENABLE");
                    intent.setType("image/jpeg");
                    if (VERSION.SDK_INT >= 19) {
                        startActivityForResult(intent, 1);
                    } else {
                        startActivityForResult(intent, 0);
                    }
                }
            case R.id.camera_btn_cancel:
                finish();
            default:
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            switch (i) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                    Object g = com.yf.gattlib.p110c.ProGuard.m7426g();
                    if (!TextUtils.isEmpty(g)) {
                        Intent intent2 = new Intent();
                        intent.setPackage(g);
                        startActivity(intent2);
                        break;
                    }
                    startActivity(new Intent("android.intent.action.PICK", Media.EXTERNAL_CONTENT_URI));
                    break;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    break;
                default:
                    return;
            }
            String a = ai.m12323a(this, intent.getData());
            Log.e("DgCamActivityForTommy2", "\u83b7\u53d6\u56fe\u7247\u8def\u5f84\u4e3a: " + a);
            File file = new File(a);
            Intent intent3 = new Intent("android.intent.action.VIEW");
            intent3.setDataAndType(Uri.parse("file://" + file.getPath()), "image/*");
            startActivity(intent3);
        }
    }

    private void m12261a(boolean z) {
        int i;
        int i2 = 0;
        RelativeLayout relativeLayout = this.f9729x;
        if (z) {
            i = 8;
        } else {
            i = 0;
        }
        relativeLayout.setVisibility(i);
        RelativeLayout relativeLayout2 = this.f9730y;
        if (!z) {
            i2 = 8;
        }
        relativeLayout2.setVisibility(i2);
    }

    public void m12295a(byte[] bArr) {
        this.f9713g.removeCallbacks(this.f9704L);
        this.f9713g.postDelayed(this.f9704L, 500);
        this.f9693A.setVisibility(0);
        this.f9713g.postDelayed(this.f9706N, 150);
    }

    private void m12266b(boolean z) {
        int i;
        int i2 = 0;
        this.f9724r.setText(z ? "\u62cd\u7167" : "\u6444\u50cf");
        this.f9725s.setText(z ? "" : "\u62cd\u7167");
        this.f9726t.setText(z ? "\u6444\u50cf" : "");
        TextView textView = this.f9727u;
        if (!z || this.f9696D > 0) {
            i = 0;
        } else {
            i = 8;
        }
        textView.setVisibility(i);
        this.f9727u.setText(z ? this.f9696D + "S" : this.f9697E.m11299a(this.f9695C));
        this.f9727u.setClickable(z);
        TextView textView2 = this.f9728w;
        if (z) {
            i2 = 8;
        }
        textView2.setVisibility(i2);
        this.f9731z.setVisibility(8);
    }

    private void m12291n() {
        this.f9714h.schedule(new ProGuard(this), 5000, 10000);
    }

    private void m12292o() {
        if (this.f9714h != null) {
            this.f9714h.cancel();
        }
    }

    private void m12293p() {
        boolean z = true;
        this.f9717k = !this.f9717k;
        boolean a = this.f9708b.m12301a(this.f9717k ? "on" : "off");
        com.yf.gattlib.p117p.ProGuard.m8292a("DgCamActivityForTommy2 \u8bbe\u7f6e\u95ea\u5149\u706f\u5f00\u5173\u7ed3\u679c = " + a);
        if (!a) {
            if (this.f9717k) {
                z = false;
            }
            this.f9717k = z;
        }
        this.f9723q.setBackgroundResource(this.f9717k ? R.drawable.flashlight_open : R.drawable.flashlight_close);
    }

    private void m12294q() {
        boolean z = true;
        com.yf.gattlib.p117p.ProGuard.m8292a("DgCamActivityForTommy2 \u5207\u6362\u6444\u50cf\u5934 ");
        if (this.f9719m) {
            m8795e(getString(R.string.refused_switch_camera));
            return;
        }
        int i;
        if (m12267b()) {
            this.f9710d.m12340b();
        }
        ProGuard proGuard = this.f9708b;
        if (this.f9716j) {
            i = 1;
        } else {
            i = 0;
        }
        proGuard.m12303b(i);
        if (this.f9716j) {
            z = false;
        }
        this.f9716j = z;
        m12285k();
    }
}
