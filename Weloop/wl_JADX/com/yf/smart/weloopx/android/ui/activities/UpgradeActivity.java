package com.yf.smart.weloopx.android.ui.activities;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.DialogFragment;
import android.app.FragmentTransaction;
import android.bluetooth.BluetoothDevice;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.baidu.location.LocationClientOption;
import com.todddavies.components.progressbar.ProgressWheel2;
import com.yf.gattlib.client.p113b.ag;
import com.yf.gattlib.client.p113b.bk;
import com.yf.gattlib.client.p113b.bl;
import com.yf.gattlib.http.afinal.core.AsyncTask;
import com.yf.smart.weloopx.android.ui.p139c.ae;
import com.yf.smart.weloopx.android.ui.p139c.as;
import com.yf.smart.weloopx.android.ui.p139c.az;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.event.SyncDataExitEvent;
import com.yf.smart.weloopx.event.SyncDataProgressEvent;
import com.yf.smart.weloopx.event.SyncDataUploadingMsgEvent;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.util.Timer;
import java.util.TimerTask;

/* compiled from: ProGuard */
public class UpgradeActivity extends ProGuard implements OnClickListener, com.yf.gattlib.view.ProGuard {
    public static String f7711g;
    private static final String f7712i;
    private AlertDialog f7713A;
    private com.yf.gattlib.p110c.ProGuard f7714B;
    private com.yf.gattlib.p118d.ProGuard f7715C;
    private final int f7716D;
    private final int f7717E;
    private final int f7718F;
    private final int f7719G;
    private final int f7720H;
    private final int f7721I;
    private com.yf.smart.weloopx.p146c.ProGuard f7722J;
    private boolean f7723K;
    private boolean f7724L;
    private boolean f7725M;
    private String f7726N;
    private String f7727O;
    private Runnable f7728P;
    private bk f7729Q;
    private boolean f7730R;
    private final ProGuard f7731S;
    private TextView f7732T;
    private TextView f7733U;
    private Timer f7734V;
    private TimerTask f7735W;
    private int f7736X;
    private int f7737Y;
    private int f7738Z;
    protected EditText f7739a;
    private int aa;
    private boolean ab;
    private long ac;
    private long ad;
    private com.yf.smart.weloopx.data.ProGuard ae;
    protected p023b.p024a.p025a.p026a.p027a.ProGuard f7740b;
    protected com.yf.gattlib.p108a.ProGuard f7741c;
    protected int f7742d;
    protected int f7743e;
    protected Handler f7744f;
    protected boolean f7745h;
    private TextView f7746j;
    private TextView f7747k;
    private TextView f7748l;
    private TextView f7749m;
    private TextView f7750n;
    private View f7751o;
    private View f7752p;
    private Button f7753q;
    private ProgressWheel2 f7754r;
    private ImageView f7755s;
    private ImageView f7756t;
    private int f7757u;
    private byte f7758w;
    private boolean f7759x;
    private com.yf.gattlib.client.p113b.ProGuard f7760y;
    private com.yf.gattlib.client.p113b.ProGuard f7761z;

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.UpgradeActivity.a */
    private class ProGuard extends AsyncTask<Void, Void, Boolean> {
        final /* synthetic */ UpgradeActivity f7709a;

        private ProGuard(UpgradeActivity upgradeActivity) {
            this.f7709a = upgradeActivity;
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return m9662a((Void[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            m9663a((Boolean) obj);
        }

        protected void onPreExecute() {
            this.f7709a.f7727O = UpgradeActivity.f7712i + " 1. onPreExecute";
            com.yf.gattlib.p117p.ProGuard.m8245a(this.f7709a.f7727O);
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f7709a.f7727O);
            this.f7709a.f7726N = null;
            this.f7709a.m9752a(this.f7709a.getString(R.string.downloading_firmware));
        }

        protected Boolean m9662a(Void... voidArr) {
            com.yf.gattlib.p117p.ProGuard.m8245a(this.f7709a.f7727O);
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f7709a.f7727O);
            m9661a();
            return Boolean.valueOf(this.f7709a.f7726N != null);
        }

        protected void m9663a(Boolean bool) {
            this.f7709a.f7727O = UpgradeActivity.f7712i + " 7. onPostExecute isSuccess = " + bool;
            com.yf.gattlib.p117p.ProGuard.m8245a(this.f7709a.f7727O);
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f7709a.f7727O);
            com.yf.smart.weloopx.p149d.ProGuard.m11006b().m11007a(bool.booleanValue(), null);
            if (bool.booleanValue()) {
                com.yf.gattlib.p117p.ProGuard.m8297b(UpgradeActivity.f7712i + " onPostExecute\uff08\uff09 \u6309\u94ae\u70b9\u51fb\u6267\u884ctryOta()");
                this.f7709a.m9666B();
                return;
            }
            this.f7709a.m8792b(R.string.download_firmware_fail);
            this.f7709a.m9751a();
        }

        private void m9661a() {
            InputStream a;
            Throwable e;
            OutputStream outputStream = null;
            this.f7709a.f7727O = UpgradeActivity.f7712i + " 3. copyFirmwareFile";
            com.yf.gattlib.p117p.ProGuard.m8245a(this.f7709a.f7727O);
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f7709a.f7727O);
            try {
                String str = "myFirm.bin";
                a = this.f7709a.f7741c.m7382l().m7404a();
                try {
                    outputStream = this.f7709a.openFileOutput(str, 0);
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = a.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        outputStream.write(bArr, 0, read);
                    }
                    this.f7709a.f7726N = str;
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

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.UpgradeActivity.b */
    public static class ProGuard {
        final WeakReference<UpgradeActivity> f7710a;

        ProGuard(UpgradeActivity upgradeActivity) {
            this.f7710a = new WeakReference(upgradeActivity);
        }

        @com.yf.lib.squareup.otto.ProGuard
        public void onSyncDataExitEvent(SyncDataExitEvent syncDataExitEvent) {
            com.yf.gattlib.p117p.ProGuard.m8292a(UpgradeActivity.f7712i + " onSyncDataExit");
            com.yf.gattlib.p117p.ProGuard.m8245a((Object) "onSyncDataExit");
            com.yf.lib.p135a.ProGuard.m8508a().m8611b((Object) this);
            UpgradeActivity upgradeActivity = (UpgradeActivity) this.f7710a.get();
            if (upgradeActivity != null) {
                com.yf.smart.weloopx.p146c.ProGuard.f8755a = 0;
                upgradeActivity.f7744f.postDelayed(new hc(this, upgradeActivity), 5000);
            }
        }

        @com.yf.lib.squareup.otto.ProGuard
        public void onSyncDataProgressEvent(SyncDataProgressEvent syncDataProgressEvent) {
        }

        @com.yf.lib.squareup.otto.ProGuard
        public void onSyncDataUploadingMsgEvent(SyncDataUploadingMsgEvent syncDataUploadingMsgEvent) {
            UpgradeActivity upgradeActivity = (UpgradeActivity) this.f7710a.get();
            if (upgradeActivity != null) {
                upgradeActivity.m9752a(upgradeActivity.getString(syncDataUploadingMsgEvent.msgId));
            }
        }
    }

    public UpgradeActivity() {
        this.f7742d = 0;
        this.f7759x = false;
        this.f7716D = 3456;
        this.f7717E = 3457;
        this.f7718F = 3458;
        this.f7719G = 3459;
        this.f7720H = 3460;
        this.f7721I = 3461;
        this.f7722J = new com.yf.smart.weloopx.p146c.ProGuard();
        this.f7723K = false;
        this.f7724L = false;
        this.f7725M = false;
        this.f7727O = "";
        this.f7744f = new Handler();
        this.f7728P = new gw(this);
        this.f7729Q = new gz(this);
        this.f7731S = new ProGuard(this);
        this.f7736X = 0;
        this.f7737Y = LocationClientOption.MIN_SCAN_SPAN_NETWORK;
        this.ab = true;
    }

    static /* synthetic */ int m9704d(UpgradeActivity upgradeActivity, int i) {
        int i2 = upgradeActivity.f7736X + i;
        upgradeActivity.f7736X = i2;
        return i2;
    }

    static {
        f7712i = UpgradeActivity.class.getSimpleName();
        f7711g = "OTA_SUCCESS_DEVICE";
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(com.umeng.update.util.ProGuard.f5670c);
        requestWindowFeature(1);
        setContentView(R.layout.activity_upgrade);
        com.yf.lib.p135a.ProGuard.m8508a().m8608a(this.f7731S);
        m9702c();
        m9706d();
        m9708e();
    }

    protected void onResume() {
        super.onResume();
    }

    protected void onDestroy() {
        com.yf.lib.p135a.ProGuard.m8508a().m8611b(this.f7731S);
        this.f7745h = false;
        this.f7759x = false;
        this.f7715C.m8012a();
        m9730p();
        if (this.f7761z != null) {
            this.f7761z.m7500h();
            this.f7761z = null;
        }
        this.f7714B.m7414a("is upgrading", false);
        com.yf.gattlib.p117p.ProGuard.m8292a(f7712i + " onDestroy() put GattSettingKeys.KEY_IS_UPGRADING = false ");
        com.yf.gattlib.p117p.ProGuard.m8245a(f7712i + " onDestroy() put GattSettingKeys.KEY_IS_UPGRADING = false ");
        m9670D();
        super.onDestroy();
    }

    private void m9702c() {
        this.f7722J.m10889a();
        this.f7745h = true;
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f7725M = extras.getBoolean("IsWatch");
        }
        this.ae = new com.yf.smart.weloopx.data.ProGuard(com.yf.gattlib.p108a.ProGuard.m7368a().m7374d());
    }

    private void m9706d() {
        this.f7741c = com.yf.gattlib.p108a.ProGuard.m7368a();
        this.f7714B = this.f7741c.m7387q();
        this.f7740b = new p023b.p024a.p025a.p026a.p027a.ProGuard(this.f7741c, (int) R.string.unknown_version);
        this.f7743e = 1;
        this.f7757u = com.yf.gattlib.p110c.ProGuard.m7423d();
        if ("V 1.33".equals(this.f7740b.m2791b()) && com.yf.gattlib.p110c.ProGuard.m7442h()) {
            this.f7757u = 120;
        }
        this.f7758w = (byte) 0;
        this.f7715C = new com.yf.gattlib.p118d.ProGuard(this, new gm(this));
    }

    private void m9708e() {
        boolean z = true;
        findViewById(R.id.at_back).setOnClickListener(this);
        findViewById(R.id.iv_reset).setOnClickListener(this);
        this.f7755s = (ImageView) findViewById(R.id.iv_checking);
        this.f7756t = (ImageView) findViewById(R.id.iv_is_newest);
        this.f7753q = (Button) findViewById(R.id.btn_upgrade);
        this.f7753q.setOnClickListener(this);
        this.f7752p = findViewById(R.id.firmware_downloading);
        ((TextView) findViewById(R.id.tv_title)).setText(R.string.upgrade_title);
        this.f7747k = (TextView) findViewById(R.id.tv_upgrading_tips);
        this.f7746j = (TextView) findViewById(R.id.tv_current_version);
        this.f7748l = (TextView) findViewById(R.id.tv_version_indicator);
        this.f7749m = (TextView) findViewById(R.id.tv_new_version);
        this.f7750n = (TextView) findViewById(R.id.tv_percent_number);
        this.f7739a = (EditText) findViewById(R.id.picked_file);
        this.f7751o = findViewById(R.id.lt_percent);
        this.f7754r = (ProgressWheel2) findViewById(R.id.progressbar);
        this.f7754r.setOnClickListener(this);
        this.f7754r.setProgress(0);
        this.f7750n.setText("0");
        this.f7750n.setTypeface(Typeface.createFromAsset(getAssets(), "fonts/din-light.otf"));
        this.f7747k.setText(R.string.ota_plug_charging_cable);
        m9724m();
        com.yf.gattlib.client.ProGuard k = com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8081k();
        k.m7816a(new gt(this));
        k.m7827j();
        CharSequence b = this.f7740b.m2791b();
        if (!TextUtils.isEmpty(b)) {
            String toLowerCase = b.trim().replace(" ", "").toLowerCase();
            this.f7723K = toLowerCase.compareToIgnoreCase(AlarmClockActivity.f7312h) < 0;
            if (toLowerCase.compareToIgnoreCase(AlarmClockActivity.f7313i) >= 0) {
                z = false;
            }
            this.f7724L = z;
            com.yf.gattlib.p117p.ProGuard.m8292a(f7712i + " isNowLow = " + this.f7723K + ", isWatchLow = " + this.f7724L);
            b = toLowerCase;
        }
        this.f7746j.setText(b);
        if (TextUtils.isEmpty(b)) {
            com.yf.smart.weloopx.p140b.ProGuard a = com.yf.smart.weloopx.p140b.ProGuard.m10712a();
            BluetoothDevice n = a.m10710n();
            a.m10721b();
            a.m10717a(n);
        }
    }

    private void m9714h() {
        runOnUiThread(new gv(this));
    }

    private void m9716i() {
        this.f7740b.m2788a(this.f7741c, (int) R.string.unknown_version);
        if (TextUtils.isEmpty(this.f7740b.m2787a())) {
            m9720k();
        } else if (!this.f7741c.m7376f().m8078h()) {
            m9718j();
        } else if (this.f7740b.m2794d()) {
            m9726n();
        } else {
            m9720k();
        }
    }

    private void m9718j() {
        m9687a(3456);
    }

    private void m9720k() {
        m9687a(3457);
    }

    private void m9722l() {
        m9687a(3458);
    }

    private void m9724m() {
        m9687a(3460);
    }

    private void m9726n() {
        m9687a(3459);
    }

    private void m9728o() {
        m9687a(3461);
    }

    private void m9687a(int i) {
        runOnUiThread(new gx(this, i));
    }

    public void onBackPressed() {
        m9745x();
    }

    private void m9730p() {
        if (this.f7760y != null) {
            this.f7760y.m7500h();
            this.f7760y = null;
        }
    }

    private void m9732q() {
        this.f7727O = f7712i + " 8. Running startOTA method ";
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7727O);
        com.yf.gattlib.p117p.ProGuard.m8245a(this.f7727O);
        if (this.f7743e != 1) {
            com.yf.gattlib.p117p.ProGuard.m8293a(f7712i, "being busy");
            return;
        }
        m9751a();
        this.f7743e = 2;
        this.f7730R = false;
        this.f7760y = new bl(this.f7729Q, this.f7757u, this.f7758w).m7498f();
        m9722l();
    }

    private void m9734r() {
        if (this.f7760y != null) {
            this.f7760y.m7498f();
        }
    }

    private void m9735s() {
        runOnUiThread(new gy(this));
    }

    private void m9738t() {
        this.f7742d = 0;
        this.f7743e = 1;
    }

    private void m9703c(int i) {
        runOnUiThread(new ha(this, i));
    }

    private String m9705d(int i) {
        if (i > 60) {
            return getString(R.string.about) + (i / 60) + getString(R.string.minutes_finish_ota);
        }
        return getString(R.string.about) + i + getString(R.string.second_finish_ota);
    }

    private void m9739u() {
        runOnUiThread(new hb(this));
    }

    private boolean m9742v() {
        Object string = this.f7714B.getString("KEY_OTA_FINISH_RUN_RESET_MINIMUM_VERSION", "");
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        String trim = string.toUpperCase().replace("<", "").replace("V", "").trim();
        String trim2 = com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8081k().m7822e().toUpperCase().replace("V", "").trim();
        if (TextUtils.isEmpty(trim2)) {
            return false;
        }
        int compareTo = trim2.compareTo(trim);
        com.yf.gattlib.p117p.ProGuard.m8292a(f7712i + " \u7f51\u7edc\u8fd4\u56de\u7ed3\u679c = " + trim + ", \u5f53\u524d\u56fa\u4ef6\u7248\u672c = " + trim2 + ", \u5bf9\u6bd4\u7ed3\u679c = " + compareTo);
        if (compareTo < 0) {
            return true;
        }
        return compareTo >= 0 ? false : false;
    }

    private void m9743w() {
        new ag((byte) 0).m7492b(new gn(this));
    }

    private void m9745x() {
        if (this.f7743e != 1) {
            m9747y();
        } else if (!as.m10228a(getFragmentManager(), false)) {
            finish();
        }
    }

    private void m9747y() {
        m9690a(ae.m10182a((int) R.string.ota_exit_message), f7712i);
    }

    public boolean m9753a(String str, com.yf.gattlib.view.ProGuard proGuard) {
        switch (proGuard.m8506a()) {
            case 36866:
                m9730p();
                this.f7744f.postDelayed(new go(this, az.m10243a(getFragmentManager(), getString(R.string.exit_upgrading), false)), 15000);
                break;
        }
        return true;
    }

    private void m9690a(DialogFragment dialogFragment, String str) {
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        beginTransaction.add(dialogFragment, str);
        beginTransaction.commitAllowingStateLoss();
    }

    private void m9689a(int i, OnClickListener onClickListener, OnClickListener onClickListener2) {
        if (this.f7745h) {
            AlertDialog create = new Builder(this).create();
            this.f7713A = create;
            this.f7713A.setCancelable(false);
            create.show();
            Window window = create.getWindow();
            window.setContentView(R.layout.reset_view);
            ((TextView) window.findViewById(R.id.rv_tv_msg)).setText(i);
            ((TextView) window.findViewById(R.id.rv_tv_sure)).setOnClickListener(onClickListener);
            ((TextView) window.findViewById(R.id.rv_tv_cancel)).setOnClickListener(onClickListener2);
            return;
        }
        com.yf.gattlib.p117p.ProGuard.m8298b(f7712i, "can not show dialog");
    }

    private void m9749z() {
        com.yf.lib.p135a.ProGuard.m8508a().m8608a(this.f7731S);
        com.yf.smart.weloopx.p146c.ProGuard.m10923a().m10962a(com.yf.gattlib.p117p.ProGuard.m8238e(), false);
    }

    private void m9664A() {
        m9689a((int) R.string.sure_reset, new gp(this), new gq(this));
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.iv_reset:
                m9664A();
            case R.id.at_back:
                m9745x();
            case R.id.btn_upgrade:
                if (TextUtils.isEmpty(this.f7726N)) {
                    new ProGuard().execute((Object[]) new Void[0]);
                    return;
                }
                com.yf.gattlib.p117p.ProGuard.m8297b(f7712i + " \u6309\u94ae\u70b9\u51fb\u6267\u884ctryOta()");
                m9666B();
            default:
        }
    }

    private void m9666B() {
        com.yf.gattlib.p117p.ProGuard.m8297b(f7712i + " \u6267\u884ctryOta");
        m9751a();
        this.f7722J.m10889a();
        m9749z();
    }

    protected void m9752a(String str) {
        runOnUiThread(new gr(this, str));
    }

    protected void m9751a() {
        if (this.f7713A != null && this.f7713A.isShowing()) {
            this.f7713A.dismiss();
            this.f7713A = null;
        }
    }

    private void m9668C() {
        this.f7734V = new Timer();
        this.f7735W = new gs(this);
        this.f7734V.schedule(this.f7735W, (long) this.f7737Y, (long) this.f7737Y);
    }

    private void m9670D() {
        if (this.f7734V != null) {
            this.f7734V.cancel();
        }
        if (this.f7735W != null) {
            this.f7735W.cancel();
        }
        this.f7735W = null;
        this.f7734V = null;
    }

    private void m9688a(int i, int i2) {
        com.yf.gattlib.p117p.ProGuard.m8292a(f7712i + " lengh = " + i + ", transferred = " + i2);
        if (this.ab) {
            this.ab = false;
            this.ac = System.currentTimeMillis();
        }
        if (i2 >= i) {
            this.ab = true;
            this.ad = System.currentTimeMillis();
            int i3 = (int) (this.ad - this.ac);
            com.yf.gattlib.p117p.ProGuard.m8292a(f7712i + " OTA\u5305\u7684\u5927\u5c0f = " + i + ", startOTATime = " + this.ac + ", endOTATime = " + this.ad + ", duration = " + i3);
            if (i3 != 0) {
                this.ae.m11132b(i, i3);
            }
        }
    }
}
