package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.baidu.location.BDLocationStatusCodes;
import com.yf.gattlib.db.daliy.modes.AlarmModel;
import com.yf.smart.weloopx.data.models.AlarmHolder;
import com.yf.smart.weloopx.dist.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ProGuard */
public class AlarmClockActivity extends ProGuard implements OnClickListener, com.yf.smart.weloopx.android.ui.activities.ProGuard.ProGuard, com.yf.smart.weloopx.p145g.ProGuard.ProGuard {
    public static String f7312h;
    public static String f7313i;
    private TextView f7314A;
    private ImageView f7315B;
    private TextView f7316C;
    private TextView f7317D;
    private TextView f7318E;
    private ImageView f7319F;
    private boolean f7320G;
    private boolean f7321H;
    private boolean f7322I;
    private boolean f7323J;
    private List<AlarmModel> f7324K;
    private List<Boolean> f7325L;
    private List<Boolean> f7326M;
    private List<Boolean> f7327N;
    private final int f7328O;
    private final int f7329P;
    private int f7330Q;
    private String f7331R;
    private boolean f7332S;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558537)
    View f7333a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558538)
    View f7334b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558539)
    View f7335c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558782)
    Button f7336d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f7337e;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f7338f;
    boolean f7339g;
    private final String f7340s;
    private TextView f7341t;
    private TextView f7342u;
    private TextView f7343w;
    private ImageView f7344x;
    private TextView f7345y;
    private TextView f7346z;

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.AlarmClockActivity.1 */
    static /* synthetic */ class ProGuard {
        static final /* synthetic */ int[] f7301a;

        static {
            f7301a = new int[com.yf.smart.weloopx.p146c.ProGuard.values().length];
            try {
                f7301a[com.yf.smart.weloopx.p146c.ProGuard.BN01L02.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f7301a[com.yf.smart.weloopx.p146c.ProGuard.BN01SH02.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f7301a[com.yf.smart.weloopx.p146c.ProGuard.WN02B01.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f7301a[com.yf.smart.weloopx.p146c.ProGuard.WN08B08.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public AlarmClockActivity() {
        this.f7340s = "AlarmClockActivity";
        this.f7323J = false;
        this.f7324K = new ArrayList();
        this.f7325L = new ArrayList();
        this.f7326M = new ArrayList();
        this.f7327N = new ArrayList();
        this.f7339g = false;
        this.f7328O = 5641;
        this.f7329P = 10247;
        this.f7330Q = 0;
        this.f7331R = "";
        this.f7332S = false;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_alarm_clock);
        com.p038b.p039a.ProGuard.m4086a(this);
        m9248e();
        m9252h();
        m9253i();
        m8794d(getString(R.string.sync_alarm));
        m9254j();
        m9255k();
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        m9253i();
    }

    private void m9248e() {
        this.r = new com.yf.smart.weloopx.data.ProGuard(this);
        this.r.m11024b();
    }

    private void m9252h() {
        this.f7333a.setOnClickListener(this);
        this.f7334b.setOnClickListener(this);
        this.f7335c.setOnClickListener(this);
        this.f7341t = (TextView) this.f7333a.findViewById(R.id.ai_tv_alarm_time);
        this.f7342u = (TextView) this.f7333a.findViewById(R.id.ai_tv_alarm_time_msg);
        this.f7343w = (TextView) this.f7333a.findViewById(R.id.ai_tv_alarm_repeat);
        this.f7344x = (ImageView) this.f7333a.findViewById(R.id.ai_iv_alarm_edit);
        this.f7345y = (TextView) this.f7334b.findViewById(R.id.ai_tv_alarm_time);
        this.f7346z = (TextView) this.f7334b.findViewById(R.id.ai_tv_alarm_time_msg);
        this.f7314A = (TextView) this.f7334b.findViewById(R.id.ai_tv_alarm_repeat);
        this.f7315B = (ImageView) this.f7334b.findViewById(R.id.ai_iv_alarm_edit);
        this.f7316C = (TextView) this.f7335c.findViewById(R.id.ai_tv_alarm_time);
        this.f7317D = (TextView) this.f7335c.findViewById(R.id.ai_tv_alarm_time_msg);
        this.f7318E = (TextView) this.f7335c.findViewById(R.id.ai_tv_alarm_repeat);
        this.f7319F = (ImageView) this.f7335c.findViewById(R.id.ai_iv_alarm_edit);
        this.f7341t.setTypeface(this.q);
        this.f7345y.setTypeface(this.q);
        this.f7316C.setTypeface(this.q);
        this.f7337e.setVisibility(0);
        this.f7337e.setOnClickListener(this);
        this.f7336d.setVisibility(8);
        this.f7338f.setText(getString(R.string.alarm_title));
    }

    private void m9253i() {
        int i;
        int i2 = R.drawable.item_bg;
        this.f7325L.clear();
        this.f7326M.clear();
        this.f7327N.clear();
        this.f7324K = this.r.m11022a();
        this.m = (AlarmModel) this.f7324K.get(0);
        this.n = (AlarmModel) this.f7324K.get(1);
        this.o = (AlarmModel) this.f7324K.get(2);
        this.f7320G = this.m.m8031g().equals("1");
        this.f7321H = this.n.m8031g().equals("1");
        this.f7322I = this.o.m8031g().equals("1");
        String a = this.m.m8019a();
        for (i = 1; i <= 7; i++) {
            this.f7325L.add(Boolean.valueOf(a.contains(String.valueOf(i))));
        }
        a = this.n.m8019a();
        for (i = 1; i <= 7; i++) {
            this.f7326M.add(Boolean.valueOf(a.contains(String.valueOf(i))));
        }
        a = this.o.m8019a();
        for (i = 1; i <= 7; i++) {
            this.f7327N.add(Boolean.valueOf(a.contains(String.valueOf(i))));
        }
        CharSequence d = this.m.m8025d();
        if (d.length() > 5) {
            this.m.m8032g("0");
            this.f7320G = false;
            d = "08:00";
        }
        this.f7341t.setText(d);
        d = this.n.m8025d();
        if (d.length() > 5) {
            this.n.m8032g("0");
            this.f7321H = false;
            d = "14:00";
        }
        this.f7345y.setText(d);
        d = this.o.m8025d();
        if (d.length() > 5) {
            this.o.m8032g("0");
            this.f7322I = false;
            d = "21:00";
        }
        this.f7316C.setText(d);
        this.f7342u.setText(this.m.m8021b());
        this.f7346z.setText(this.n.m8021b());
        this.f7317D.setText(this.o.m8021b());
        this.f7343w.setText(m9239a(this.m.m8019a()));
        this.f7314A.setText(m9239a(this.n.m8019a()));
        this.f7318E.setText(m9239a(this.o.m8019a()));
        this.f7344x.setBackgroundResource(this.f7320G ? R.drawable.setting_switch_on : R.drawable.setting_switch_off);
        View view = this.f7333a;
        if (this.f7320G) {
            i = R.drawable.item_bg_click;
        } else {
            i = R.drawable.item_bg;
        }
        view.setBackgroundResource(i);
        this.f7344x.setOnClickListener(new ProGuard(this));
        this.f7315B.setBackgroundResource(this.f7321H ? R.drawable.setting_switch_on : R.drawable.setting_switch_off);
        view = this.f7334b;
        if (this.f7321H) {
            i = R.drawable.item_bg_click;
        } else {
            i = R.drawable.item_bg;
        }
        view.setBackgroundResource(i);
        this.f7315B.setOnClickListener(new ProGuard(this));
        this.f7319F.setBackgroundResource(this.f7322I ? R.drawable.setting_switch_on : R.drawable.setting_switch_off);
        View view2 = this.f7335c;
        if (this.f7322I) {
            i2 = R.drawable.item_bg_click;
        }
        view2.setBackgroundResource(i2);
        this.f7319F.setOnClickListener(new ProGuard(this));
    }

    private void m9244c(int i) {
        boolean z = true;
        if (m9246d(i)) {
            com.yf.gattlib.p117p.ProGuard.m8292a("AlarmClockActivity\u7a7a\u7684\uff0c\u9700\u8981\u9009\u62e9\u65e5\u671f");
        } else if (!this.f7323J) {
            this.f7323J = true;
            switch (i) {
                case BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES /*1001*/:
                    if (this.f7320G) {
                        z = false;
                    }
                    this.f7320G = z;
                    m9249e((int) BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES);
                case BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE /*1002*/:
                    if (this.f7321H) {
                        z = false;
                    }
                    this.f7321H = z;
                    m9249e((int) BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE);
                case 1003:
                    if (this.f7322I) {
                        z = false;
                    }
                    this.f7322I = z;
                    m9249e(1003);
                default:
            }
        }
    }

    private boolean m9246d(int i) {
        switch (i) {
            case BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES /*1001*/:
                if (this.f7325L.contains(Boolean.valueOf(true))) {
                    return false;
                }
                return true;
            case BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE /*1002*/:
                if (this.f7326M.contains(Boolean.valueOf(true))) {
                    return false;
                }
                return true;
            case 1003:
                if (this.f7327N.contains(Boolean.valueOf(true))) {
                    return false;
                }
                return true;
            default:
                return false;
        }
    }

    private void m9249e(int i) {
        int i2 = 0;
        switch (i) {
            case BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES /*1001*/:
                com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), "AlarmClockActivity");
                this.f7339g = this.m.m8031g().endsWith("1");
                m9229a(new AlarmHolder(Integer.parseInt(this.m.m8027e()), Integer.parseInt(this.m.m8029f()), this.f7339g), this.p, this.f7325L, BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES);
                break;
            case BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE /*1002*/:
                com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), "AlarmClockActivity");
                this.f7339g = this.n.m8031g().endsWith("1");
                i2 = 1;
                m9229a(new AlarmHolder(Integer.parseInt(this.n.m8027e()), Integer.parseInt(this.n.m8029f()), this.f7339g), this.p, this.f7326M, BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE);
                break;
            case 1003:
                com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), "AlarmClockActivity");
                this.f7339g = this.o.m8031g().endsWith("1");
                i2 = 2;
                m9229a(new AlarmHolder(Integer.parseInt(this.o.m8027e()), Integer.parseInt(this.o.m8029f()), this.f7339g), this.p, this.f7327N, 1003);
                break;
        }
        try {
            m9228a(this, i, i2);
        } catch (com.yf.gattlib.p120e.ProGuard e) {
            e.printStackTrace();
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ac_rl_alarm_one:
                m9251f((int) BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES);
            case R.id.ac_rl_alarm_two:
                m9251f((int) BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE);
            case R.id.ac_rl_alarm_three:
                m9251f(1003);
            case R.id.at_btn_left:
                finish();
            default:
        }
    }

    private void m9251f(int i) {
        String str = "";
        String str2 = "";
        switch (i) {
            case BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES /*1001*/:
                str = this.f7342u.getText().toString().trim();
                str2 = this.m.m8023c();
                break;
            case BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE /*1002*/:
                str = this.f7346z.getText().toString().trim();
                str2 = this.n.m8023c();
                break;
            case 1003:
                str = this.f7317D.getText().toString().trim();
                str2 = this.o.m8023c();
                break;
        }
        Intent intent = new Intent(this, AlarmEditActivity.class);
        intent.putExtra("INDEX", i);
        intent.putExtra("ALARM_MSG", str);
        intent.putExtra("ALARM_ID", str2);
        startActivityForResult(intent, i);
    }

    public void m9256a() {
        runOnUiThread(new ProGuard(this));
    }

    public void m9258b() {
        this.f7323J = false;
        runOnUiThread(new ProGuard(this));
    }

    public void m9257a(int i) {
        runOnUiThread(new ProGuard(this, i));
    }

    public void m9259c() {
        runOnUiThread(new ProGuard(this));
    }

    private String m9239a(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        if (str.equals("1,2,3,4,5,6,7,") || str.equals("1234567")) {
            stringBuilder.append(getResources().getString(R.string.everyday));
            return stringBuilder.toString();
        } else if (str.equals("")) {
            stringBuilder.append(getResources().getString(R.string.norepeate));
            return stringBuilder.toString();
        } else {
            if (str.contains("1")) {
                stringBuilder.append(getResources().getString(R.string.monday_with_profix));
                stringBuilder.append(" ");
            }
            if (str.contains("2")) {
                stringBuilder.append(getResources().getString(R.string.tuesday_with_profix));
                stringBuilder.append(" ");
            }
            if (str.contains("3")) {
                stringBuilder.append(getResources().getString(R.string.wednesday_with_profix));
                stringBuilder.append(" ");
            }
            if (str.contains("4")) {
                stringBuilder.append(getResources().getString(R.string.thursday_with_profix));
                stringBuilder.append(" ");
            }
            if (str.contains("5")) {
                stringBuilder.append(getResources().getString(R.string.friday_with_profix));
                stringBuilder.append(" ");
            }
            if (str.contains("6")) {
                stringBuilder.append(getResources().getString(R.string.saturday_with_profix));
                stringBuilder.append(" ");
            }
            if (str.contains("7")) {
                stringBuilder.append(getResources().getString(R.string.sunday_with_profix));
                stringBuilder.append(" ");
            }
            return stringBuilder.toString();
        }
    }

    static {
        f7312h = "v2.10";
        f7313i = "v3.33";
    }

    private void m9254j() {
        boolean z = true;
        int i = 0;
        com.yf.smart.weloopx.p140b.ProGuard a = com.yf.smart.weloopx.p140b.ProGuard.m10712a();
        if (a.m10730i()) {
            this.f7331R = a.m10709m();
            com.yf.gattlib.p117p.ProGuard.m8292a("AlarmClockActivity \u8bbe\u5907\u7248\u672c = " + this.f7331R);
            if (this.f7331R != null) {
                this.f7331R = this.f7331R.trim().toLowerCase().replace(" ", "");
                String k = a.m10707k();
                com.yf.smart.weloopx.p146c.ProGuard a2 = com.yf.smart.weloopx.p146c.ProGuard.m10901a(com.yf.smart.weloopx.p146c.ProGuard.m10914e(k));
                switch (ProGuard.f7301a[a2.ordinal()]) {
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                        this.f7330Q = 10247;
                        break;
                    default:
                        this.f7330Q = 5641;
                        break;
                }
                com.yf.gattlib.p117p.ProGuard.m8292a("AlarmClockActivity \u8bbe\u5907leixing  = " + this.f7330Q);
                if (this.f7330Q == 0) {
                    return;
                }
                if (this.f7331R.compareToIgnoreCase("v3.18") == 0 && this.f7330Q == 5641) {
                    this.f7335c.setVisibility(8);
                    this.f7334b.setVisibility(8);
                    return;
                }
                boolean z2 = this.f7330Q == 5641;
                String str = z2 ? f7313i : f7312h;
                if (this.f7331R.compareToIgnoreCase(str) >= 0) {
                    z = false;
                }
                this.f7332S = z;
                com.yf.gattlib.p117p.ProGuard.m8297b("AlarmClockActivity \u8bbe\u5907\u662f\u4e0d\u662f\u624b\u8868 = " + z2 + ", \u6700\u5c0f\u7684\u7248\u672c = " + str + ", \u5f53\u524d\u7684\u7248\u672c = " + this.f7331R + ", \u6bd4\u8f83\u7684\u7ed3\u679c = " + this.f7331R.compareToIgnoreCase(str));
                com.yf.gattlib.p117p.ProGuard.m8292a("AlarmClockActivity DeviceName = " + k + " curDeviceType = " + a2 + ", deviceVersion = " + this.f7331R + ", isShowThreeAlarm = " + this.f7332S + ", tempVersion = " + str);
                if (this.f7332S) {
                    View view = this.f7334b;
                    if (!z2) {
                        i = 8;
                    }
                    view.setVisibility(i);
                    this.f7335c.setVisibility(8);
                    return;
                }
                return;
            }
            return;
        }
        com.yf.gattlib.p117p.ProGuard.m8292a("AlarmClockActivity \u8bbe\u5907\u6ca1\u6709\u8fde\u63a5");
        m8795e(getString(R.string.device_unconnected));
    }

    private void m9255k() {
        if (ProGuard.f8124d) {
            new com.yf.smart.weloopx.p145g.ProGuard(this, this).m11285a();
        }
    }

    public void m9260d() {
        m9253i();
    }
}
