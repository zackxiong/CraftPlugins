package com.yf.smart.weloopx.android.ui.activities;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.baidu.location.LocationClientOption;
import com.todddavies.components.progressbar.ProgressWheel2;
import com.yf.gattlib.client.dfu.DFUService;
import com.yf.gattlib.http.afinal.core.AsyncTask;
import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.dist.R;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Timer;
import java.util.TimerTask;

/* compiled from: ProGuard */
public class DfuActivity extends Activity implements com.yf.gattlib.client.dfu.ProGuard, com.yf.smart.weloopx.android.ui.p139c.ah.ProGuard {
    private final ServiceConnection f7390A;
    private String f7391B;
    private AlertDialog f7392C;
    private TextView f7393D;
    private TextView f7394E;
    private BroadcastReceiver f7395F;
    private Timer f7396G;
    private TimerTask f7397H;
    private int f7398I;
    private int f7399J;
    private int f7400K;
    private int f7401L;
    private TextView f7402a;
    private TextView f7403b;
    private TextView f7404c;
    private TextView f7405d;
    private TextView f7406e;
    private View f7407f;
    private Button f7408g;
    private ProgressWheel2 f7409h;
    private ImageView f7410i;
    private ImageView f7411j;
    private LinearLayout f7412k;
    private com.yf.gattlib.client.dfu.ProGuard f7413l;
    private int f7414m;
    private int f7415n;
    private byte f7416o;
    private int f7417p;
    private Handler f7418q;
    private p023b.p024a.p025a.p026a.p027a.ProGuard f7419r;
    private boolean f7420s;
    private boolean f7421t;
    private com.yf.gattlib.p108a.ProGuard f7422u;
    private EditText f7423v;
    private int f7424w;
    private long f7425x;
    private boolean f7426y;
    private com.yf.gattlib.client.ProGuard f7427z;

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.DfuActivity.a */
    private class ProGuard extends AsyncTask<Void, Void, Boolean> {
        final /* synthetic */ DfuActivity f7389a;

        private ProGuard(DfuActivity dfuActivity) {
            this.f7389a = dfuActivity;
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return m9300a((Void[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            m9301a((Boolean) obj);
        }

        protected void onPreExecute() {
            this.f7389a.f7391B = null;
            this.f7389a.m9372a(this.f7389a.getString(R.string.downloading_firmware));
        }

        protected Boolean m9300a(Void... voidArr) {
            m9299a();
            return Boolean.valueOf(this.f7389a.f7391B != null);
        }

        protected void m9301a(Boolean bool) {
            this.f7389a.m9379f();
            if (bool.booleanValue()) {
                this.f7389a.m9361u();
            } else {
                this.f7389a.m9370a((int) R.string.download_firmware_fail);
            }
        }

        private void m9299a() {
            InputStream a;
            Throwable e;
            OutputStream outputStream = null;
            try {
                String str = "myFirm.bin";
                a = this.f7389a.f7422u.m7382l().m7404a();
                try {
                    outputStream = this.f7389a.openFileOutput(str, 0);
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = a.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        outputStream.write(bArr, 0, read);
                    }
                    this.f7389a.f7391B = str;
                    if (a != null) {
                        try {
                            a.close();
                        } catch (Throwable e2) {
                            com.yf.gattlib.p117p.ProGuard.m8295a(e2);
                        }
                    }
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Throwable e22) {
                            com.yf.gattlib.p117p.ProGuard.m8295a(e22);
                        }
                    }
                } catch (com.yf.gattlib.p120e.ProGuard e3) {
                    e22 = e3;
                    try {
                        com.yf.gattlib.p117p.ProGuard.m8295a(e22);
                        if (a != null) {
                            try {
                                a.close();
                            } catch (Throwable e222) {
                                com.yf.gattlib.p117p.ProGuard.m8295a(e222);
                            }
                        }
                        if (outputStream == null) {
                            try {
                                outputStream.close();
                            } catch (Throwable e2222) {
                                com.yf.gattlib.p117p.ProGuard.m8295a(e2222);
                            }
                        }
                    } catch (Throwable th) {
                        e2222 = th;
                        if (a != null) {
                            try {
                                a.close();
                            } catch (Throwable e4) {
                                com.yf.gattlib.p117p.ProGuard.m8295a(e4);
                            }
                        }
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Throwable e42) {
                                com.yf.gattlib.p117p.ProGuard.m8295a(e42);
                            }
                        }
                        throw e2222;
                    }
                } catch (IOException e5) {
                    e2222 = e5;
                    com.yf.gattlib.p117p.ProGuard.m8295a(e2222);
                    if (a != null) {
                        a.close();
                    }
                    if (outputStream == null) {
                        outputStream.close();
                    }
                }
            } catch (com.yf.gattlib.p120e.ProGuard e6) {
                e2222 = e6;
                a = null;
                com.yf.gattlib.p117p.ProGuard.m8295a(e2222);
                if (a != null) {
                    a.close();
                }
                if (outputStream == null) {
                    outputStream.close();
                }
            } catch (IOException e7) {
                e2222 = e7;
                a = null;
                com.yf.gattlib.p117p.ProGuard.m8295a(e2222);
                if (a != null) {
                    a.close();
                }
                if (outputStream == null) {
                    outputStream.close();
                }
            } catch (Throwable th2) {
                e2222 = th2;
                a = null;
                if (a != null) {
                    a.close();
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                throw e2222;
            }
        }
    }

    public DfuActivity() {
        this.f7414m = 0;
        this.f7417p = 0;
        this.f7418q = new Handler();
        this.f7420s = false;
        this.f7421t = false;
        this.f7427z = com.yf.gattlib.client.ProGuard.m7965a();
        this.f7390A = new ce(this);
        this.f7395F = new ck(this);
        this.f7398I = 0;
        this.f7399J = LocationClientOption.MIN_SCAN_SPAN_NETWORK;
    }

    static /* synthetic */ int m9321b(DfuActivity dfuActivity, int i) {
        int i2 = dfuActivity.f7398I + i;
        dfuActivity.f7398I = i2;
        return i2;
    }

    static /* synthetic */ int m9364w(DfuActivity dfuActivity) {
        int i = dfuActivity.f7424w + 1;
        dfuActivity.f7424w = i;
        return i;
    }

    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        com.yf.gattlib.p117p.ProGuard.m8293a("DfuActivity", "onCreate()");
        m9335h();
    }

    private void m9335h() {
        setContentView(R.layout.activity_dfu);
        this.f7426y = true;
        this.f7422u = com.yf.gattlib.p108a.ProGuard.m7368a();
        this.f7419r = new p023b.p024a.p025a.p026a.p027a.ProGuard(this.f7422u, (int) R.string.unknown_version);
        this.f7415n = com.yf.gattlib.p110c.ProGuard.m7423d();
        this.f7416o = (byte) 0;
        registerReceiver(this.f7395F, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
        bindService(new Intent(this, DFUService.class), this.f7390A, 1);
        m9347n();
        m9341k();
        new com.yf.gattlib.p125j.ProGuard().m8131a(this, new cn(this));
    }

    private void m9337i() {
        runOnUiThread(new cp(this));
    }

    private void m9339j() {
        runOnUiThread(new cq(this));
    }

    private void m9341k() {
        runOnUiThread(new cr(this));
    }

    private void m9343l() {
        runOnUiThread(new cs(this));
    }

    private void m9345m() {
        this.f7420s = false;
    }

    protected void onDestroy() {
        unregisterReceiver(this.f7395F);
        unbindService(this.f7390A);
        this.f7426y = false;
        super.onDestroy();
    }

    private void m9347n() {
        findViewById(R.id.at_back).setOnClickListener(new ct(this));
        ((TextView) findViewById(R.id.tv_title)).setText(R.string.upgrade_title);
        this.f7403b = (TextView) findViewById(R.id.tv_upgrading_tips);
        this.f7402a = (TextView) findViewById(R.id.tv_current_version);
        this.f7402a.setText(this.f7419r.m2791b());
        this.f7412k = (LinearLayout) findViewById(R.id.firmware_downloading);
        this.f7408g = (Button) findViewById(R.id.btn_upgrade);
        this.f7408g.setOnClickListener(new cu(this));
        this.f7410i = (ImageView) findViewById(R.id.iv_checking);
        this.f7411j = (ImageView) findViewById(R.id.iv_is_newest);
        this.f7409h = (ProgressWheel2) findViewById(R.id.progressbar);
        this.f7404c = (TextView) findViewById(R.id.tv_version_indicator);
        this.f7405d = (TextView) findViewById(R.id.tv_new_version);
        this.f7406e = (TextView) findViewById(R.id.tv_percent_number);
        this.f7406e.setTypeface(Typeface.createFromAsset(getAssets(), "fonts/din-light.otf"));
        this.f7407f = findViewById(R.id.lt_percent);
        this.f7423v = (EditText) findViewById(R.id.picked_file);
        this.f7409h.setOnClickListener(new cv(this));
        m9350p();
    }

    private void m9349o() {
        if (this.f7414m == 1) {
            ah.m10187a(getFragmentManager(), getString(R.string.ota_exit_message), "DfuActivity");
            return;
        }
        this.f7413l.m7937f();
        m9380g();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        m9349o();
        return true;
    }

    public void onBackPressed() {
        m9380g();
    }

    private void m9350p() {
        runOnUiThread(new cf(this));
    }

    private void m9353q() {
        runOnUiThread(new cg(this));
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                if (i2 == -1) {
                    return;
                }
                if (i2 == 0) {
                    finish();
                } else {
                    finish();
                }
            default:
        }
    }

    protected void m9370a(int i) {
        Toast makeText = Toast.makeText(getApplicationContext(), getResources().getString(i), 0);
        makeText.setGravity(17, 0, 0);
        makeText.show();
    }

    protected void m9372a(String str) {
        runOnUiThread(new ch(this, str));
    }

    protected void m9379f() {
        if (this.f7392C != null && this.f7392C.isShowing()) {
            this.f7392C.dismiss();
            this.f7392C = null;
        }
    }

    private InputStream m9354r() {
        if (this.f7423v.getVisibility() == 0 && this.f7423v.getEditableText() != null) {
            String obj = this.f7423v.getEditableText().toString();
            try {
                return new FileInputStream(obj);
            } catch (FileNotFoundException e) {
                com.yf.gattlib.p117p.ProGuard.m8293a("DfuActivity", "Not found " + obj);
            }
        }
        try {
            return openFileInput(this.f7391B);
        } catch (Throwable e2) {
            throw new com.yf.gattlib.p120e.ProGuard(e2);
        }
    }

    private void m9357s() {
        try {
            this.f7413l.m7932a(new com.yf.gattlib.client.dfu.ProGuard(m9354r()));
            this.f7413l.m7935d();
        } catch (Throwable e) {
            com.yf.gattlib.p117p.ProGuard.m8295a(e);
            m9373a("open firmware error", -1);
        }
    }

    public void m9374a(String str, boolean z) {
        if (z) {
            m9380g();
        }
    }

    public void m9380g() {
        m9358t();
        finish();
    }

    private void m9358t() {
        m9350p();
        this.f7417p = 0;
        this.f7414m = 0;
        this.f7413l.m7936e();
        if (this.f7422u.m7376f().m8078h()) {
            this.f7413l.m7940i();
        }
        this.f7413l.m7939h();
    }

    public void m9369a() {
        com.yf.gattlib.p117p.ProGuard.m8293a("DfuActivity", "onDFUServiceFound");
    }

    private void m9361u() {
        this.f7418q.postDelayed(new ci(this), 500);
    }

    public void m9375b() {
        com.yf.gattlib.p117p.ProGuard.m8293a("DfuActivity", "onDeviceDisconnected()");
        m9358t();
    }

    public void m9376c() {
        com.yf.gattlib.p117p.ProGuard.m8293a("DfuActivity", "onFileTransferStarted()");
        this.f7414m = 1;
        this.f7421t = true;
    }

    public void m9371a(long j) {
        com.yf.gattlib.p117p.ProGuard.m8293a("DfuActivity", "onFileTransfering(): " + j);
        if (this.f7413l.m7941j() > 0) {
            this.f7400K = (int) j;
            this.f7401L = (int) this.f7413l.m7941j();
            int j2 = (int) ((360 * j) / this.f7413l.m7941j());
            if (j2 != this.f7417p) {
                this.f7417p = j2;
                m9353q();
            }
        }
    }

    public void m9377d() {
        com.yf.gattlib.p117p.ProGuard.m8293a("DfuActivity", "onFileTransferCompleted()");
        this.f7414m = 2;
        this.f7419r.m2793c();
        m9345m();
        m9350p();
        m9337i();
        m9363v();
    }

    private void m9363v() {
        runOnUiThread(new cj(this));
    }

    public void m9378e() {
        com.yf.gattlib.p117p.ProGuard.m8293a("DfuActivity", "onFileTransferValidation()");
    }

    public void m9373a(String str, int i) {
        com.yf.gattlib.p117p.ProGuard.m8293a("DfuActivity", "onError() " + str + " ErrorCode: " + i);
        m9325b(str, i);
    }

    private void m9325b(String str, int i) {
        this.f7413l.m7940i();
        m9358t();
        m9343l();
        com.yf.gattlib.p117p.ProGuard.m8293a("DfuActivity", str + " Error code: " + Integer.toString(i));
    }

    public void onPickFile(View view) {
    }

    private void m9365w() {
        this.f7396G = new Timer();
        this.f7397H = new cl(this);
        this.f7396G.schedule(this.f7397H, (long) this.f7399J, (long) this.f7399J);
    }

    private void m9324b(int i) {
        runOnUiThread(new cm(this, i));
    }

    private String m9327c(int i) {
        if (i > 60) {
            return getString(R.string.about) + (i / 60) + getString(R.string.minutes_finish_ota);
        }
        return getString(R.string.about) + i + getString(R.string.second_finish_ota);
    }
}
