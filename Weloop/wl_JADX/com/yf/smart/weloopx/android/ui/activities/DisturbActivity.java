package com.yf.smart.weloopx.android.ui.activities;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TimePicker;
import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.android.ui.widget.OptionToggleButton;
import com.yf.smart.weloopx.dist.R;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* compiled from: ProGuard */
public class DisturbActivity extends ProGuard implements OnClickListener, com.yf.smart.weloopx.android.ui.p139c.ah.ProGuard {
    private RelativeLayout f7429A;
    private byte[] f7430B;
    private int f7431C;
    private int f7432D;
    private int f7433E;
    private int f7434F;
    private int f7435G;
    private boolean f7436H;
    private boolean f7437I;
    private int f7438J;
    private OnCheckedChangeListener f7439K;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f7440a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558782)
    Button f7441b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f7442c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558621)
    View f7443d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558623)
    View f7444e;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558626)
    TimePicker f7445f;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558611)
    View f7446g;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558615)
    View f7447h;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558613)
    RelativeLayout f7448i;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558617)
    RelativeLayout f7449j;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558614)
    RelativeLayout f7450k;
    private com.yf.smart.weloopx.p146c.ProGuard f7451l;
    private com.yf.gattlib.client.ProGuard f7452m;
    private OptionToggleButton f7453n;
    private TextView f7454o;
    private TextView f7455p;
    private TextView f7456q;
    private TextView f7457r;
    private TextView f7458s;
    private TextView f7459t;
    private TextView f7460u;
    private ImageView f7461w;
    private TextView f7462x;
    private TextView f7463y;
    private TextView f7464z;

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.DisturbActivity.a */
    private abstract class ProGuard implements OnCheckedChangeListener {
        final /* synthetic */ DisturbActivity f7428b;

        public abstract void m9381a(CompoundButton compoundButton, boolean z);

        private ProGuard(DisturbActivity disturbActivity) {
            this.f7428b = disturbActivity;
        }

        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (this.f7428b.m9407h()) {
                m9381a(compoundButton, z);
            }
        }
    }

    public DisturbActivity() {
        this.f7452m = com.yf.gattlib.client.ProGuard.m7829a();
        this.f7437I = false;
        this.f7439K = new da(this);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_disturb);
        com.p038b.p039a.ProGuard.m4086a(this);
        m9394b();
        m9398c();
        m9402e();
        m8794d(getString(R.string.synchronizing));
    }

    private void m9394b() {
        this.f7430B = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().m7416a("last anti disturb time");
        this.f7438J = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().getInt("anti disturb model", 2);
        Log.e("huangxiaojie", "" + this.f7438J);
        if (this.f7430B == null) {
            this.f7430B = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().m7416a("anti disturb time");
        }
        if (this.f7430B == null) {
            this.f7430B = new byte[4];
        }
        if (this.f7438J == 2) {
            this.f7438J = m9399d();
        }
        this.f7451l = new com.yf.smart.weloopx.p146c.ProGuard();
        this.f7431C = 0;
        this.f7432D = 0;
        this.f7433E = 0;
        this.f7434F = 0;
        this.f7435G = 0;
        this.f7436H = this.f7452m.m7877t();
    }

    private void m9398c() {
        this.f7441b.setVisibility(0);
        this.f7441b.setText(R.string.save);
        this.f7440a.setOnClickListener(this);
        this.f7441b.setOnClickListener(this);
        this.f7443d.setOnClickListener(this);
        this.f7444e.setOnClickListener(this);
        this.f7454o = (TextView) this.f7446g.findViewById(R.id.option_name);
        this.f7453n = (OptionToggleButton) this.f7446g.findViewById(R.id.option_toggle);
        this.f7453n.setCheckedFromCode(this.f7452m.m7877t());
        this.f7453n.setOnCheckedChangeListener(this.f7439K);
        this.f7455p = (TextView) this.f7443d.findViewById(R.id.di_tv_title);
        this.f7456q = (TextView) this.f7444e.findViewById(R.id.di_tv_title);
        this.f7457r = (TextView) this.f7443d.findViewById(R.id.di_tv_disturb_day);
        this.f7458s = (TextView) this.f7444e.findViewById(R.id.di_tv_disturb_day);
        this.f7459t = (TextView) this.f7443d.findViewById(R.id.di_tv_disturb_time);
        this.f7460u = (TextView) this.f7444e.findViewById(R.id.di_tv_disturb_time);
        this.f7462x = (TextView) this.f7447h.findViewById(R.id.option_name);
        this.f7461w = (ImageView) this.f7447h.findViewById(R.id.iv_selected);
        this.f7429A = (RelativeLayout) this.f7447h.findViewById(R.id.rl_interval_times);
        if (this.f7438J == 1) {
            this.f7429A.setVisibility(0);
        }
        this.f7463y = (TextView) this.f7429A.findViewById(R.id.tv_interval_start);
        this.f7464z = (TextView) this.f7429A.findViewById(R.id.tv_interval_end);
        this.f7450k.setOnClickListener(this);
        findViewById(R.id.ad_ll_disturb_start).setActivated(true);
        this.f7445f.setSaveFromParentEnabled(false);
        this.f7445f.setSaveEnabled(true);
        this.f7445f.setDescendantFocusability(393216);
        this.f7445f.setIs24HourView(Boolean.valueOf(true));
        this.f7445f.setOnTimeChangedListener(new cw(this));
        m9388a(1);
    }

    private int m9399d() {
        if (this.f7430B[0] == null && this.f7430B[1] == null && this.f7430B[2] == 23 && this.f7430B[3] == 59) {
            return 0;
        }
        return 1;
    }

    private int m9385a(String str, String str2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
        try {
            return simpleDateFormat.parse(str).compareTo(simpleDateFormat.parse(str2));
        } catch (ParseException e) {
            e.printStackTrace();
            return 0;
        }
    }

    private String m9386a(int i, int i2) {
        try {
            return String.format("%02d:%02d", new Object[]{Integer.valueOf(i), Integer.valueOf(i2)});
        } catch (Throwable th) {
            return "00:00";
        }
    }

    private int[] m9391a(String str) {
        r0 = new int[2];
        String[] split = str.split(":");
        r0[0] = Integer.parseInt(split[0].trim());
        r0[1] = Integer.parseInt(split[1].trim());
        return r0;
    }

    private void m9402e() {
        this.f7441b.setText(R.string.save);
        this.f7442c.setText(getString(R.string.setting_anti_disturb));
        this.f7454o.setText(getString(R.string.anti_disturb_model));
        this.f7455p.setText(getString(R.string.anti_disturb_start));
        this.f7456q.setText(getString(R.string.anti_disturb_end));
        this.f7457r.setText(R.string.anti_disturb_first_day);
        this.f7458s.setText(R.string.anti_disturb_next_day);
        this.f7462x.setText(R.string.disturb_interval);
        CharSequence a = m9386a(this.f7430B[0], this.f7430B[1]);
        this.f7459t.setText(a);
        CharSequence a2 = m9386a(this.f7430B[2], this.f7430B[3]);
        this.f7460u.setText(a2);
        if (m9385a(this.f7459t.getText().toString(), this.f7460u.getText().toString()) <= 0) {
            this.f7458s.setText(R.string.anti_disturb_first_day);
        } else {
            this.f7458s.setText(R.string.anti_disturb_next_day);
        }
        int[] a3 = m9391a(this.f7459t.getText().toString());
        this.f7445f.setCurrentHour(Integer.valueOf(a3[0]));
        this.f7445f.setCurrentMinute(Integer.valueOf(a3[1]));
        this.f7463y.setText(a);
        this.f7464z.setText(a2);
        if (!this.f7436H) {
            this.f7448i.setVisibility(8);
            this.f7449j.setVisibility(8);
        } else if (this.f7436H && this.f7438J == 0) {
            this.f7461w.setVisibility(8);
            this.f7449j.setVisibility(8);
        } else if (this.f7436H && this.f7438J == 1) {
            this.f7461w.setVisibility(0);
            this.f7449j.setVisibility(0);
        }
        this.f7437I = false;
    }

    public void onClick(View view) {
        int[] a;
        switch (view.getId()) {
            case R.id.rl_interval:
                this.f7461w.setVisibility(0);
                this.f7449j.setVisibility(0);
                this.f7429A.setVisibility(0);
                this.f7438J = 1;
                this.f7437I = true;
            case R.id.ad_ll_disturb_start:
                m9388a(1);
                if (!view.isActivated()) {
                    view.setActivated(true);
                    findViewById(R.id.ad_ll_disturb_end).setActivated(false);
                }
                a = m9391a(this.f7459t.getText().toString());
                this.f7445f.setCurrentHour(Integer.valueOf(a[0]));
                this.f7445f.setCurrentMinute(Integer.valueOf(a[1]));
            case R.id.ad_ll_disturb_end:
                m9388a(2);
                if (!view.isActivated()) {
                    view.setActivated(true);
                    findViewById(R.id.ad_ll_disturb_start).setActivated(false);
                }
                a = m9391a(this.f7460u.getText().toString());
                this.f7445f.setCurrentHour(Integer.valueOf(a[0]));
                this.f7445f.setCurrentMinute(Integer.valueOf(a[1]));
            case R.id.at_btn_left:
                if (this.f7437I) {
                    ah.m10188a(getFragmentManager(), "outSave", getString(R.string.exit_anti_disturb_msg), R.layout.confirm_alert_dialog);
                } else {
                    finish();
                }
            case R.id.at_btn_right:
                if (this.f7438J == 0) {
                    this.f7430B[0] = (byte) 0;
                    this.f7430B[1] = (byte) 0;
                    this.f7430B[2] = (byte) 23;
                    this.f7430B[3] = (byte) 59;
                }
                if (this.f7430B[0] == this.f7430B[2] && this.f7430B[1] == this.f7430B[3]) {
                    m9414a();
                } else {
                    m9389a(this.f7436H);
                }
            default:
        }
    }

    private void m9389a(boolean z) {
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), "DisturbActivity");
        this.f7451l.m10894a(z, this.f7430B);
        this.f7451l.m10891a(new cx(this, z));
    }

    private void m9388a(int i) {
        this.f7431C = i;
    }

    public void m9415a(String str, boolean z) {
        if (z && str.equals("outSave")) {
            finish();
        }
    }

    private boolean m9407h() {
        if (com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10730i()) {
            return true;
        }
        return false;
    }

    public void m9414a() {
        runOnUiThread(new db(this));
    }
}
