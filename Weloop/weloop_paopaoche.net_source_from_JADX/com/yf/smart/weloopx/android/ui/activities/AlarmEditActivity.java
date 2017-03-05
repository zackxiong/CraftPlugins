package com.yf.smart.weloopx.android.ui.activities;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import android.widget.TimePicker;
import com.baidu.location.BDLocationStatusCodes;
import com.yf.gattlib.db.daliy.modes.AlarmModel;
import com.yf.gattlib.http.afinal.core.Arrays;
import com.yf.smart.weloopx.android.ui.activities.ProGuard.ProGuard;
import com.yf.smart.weloopx.data.models.AlarmHolder;
import com.yf.smart.weloopx.dist.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ProGuard */
public class AlarmEditActivity extends ProGuard implements OnClickListener, OnCheckedChangeListener, ProGuard {
    private final int f7347A;
    private String f7348B;
    private int f7349C;
    private boolean f7350D;
    private boolean f7351E;
    private boolean f7352F;
    private boolean f7353G;
    private List<Boolean> f7354H;
    private AlarmModel f7355I;
    private AlertDialog f7356J;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558782)
    Button f7357a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f7358b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558554)
    Button f7359c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f7360d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558544)
    TimePicker f7361e;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558547)
    CheckBox f7362f;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558548)
    CheckBox f7363g;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558549)
    CheckBox f7364h;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558550)
    CheckBox f7365i;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558551)
    CheckBox f7366s;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558552)
    CheckBox f7367t;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558553)
    CheckBox f7368u;
    private final String f7369w;
    private int f7370x;
    private int f7371y;
    private final int f7372z;

    public AlarmEditActivity() {
        this.f7369w = "AlarmEditActivity";
        this.f7370x = 0;
        this.f7371y = 0;
        this.f7372z = 10012;
        this.f7347A = 10013;
        this.f7348B = "";
        this.f7349C = 0;
        this.f7350D = false;
        this.f7351E = false;
        this.f7352F = false;
        this.f7353G = false;
        this.f7354H = new ArrayList();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_alarm_edit);
        com.p038b.p039a.ProGuard.m4086a(this);
        m9270d();
        m9272e();
        m9273h();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            m9276k();
        }
        return false;
    }

    private void m9270d() {
        if (getIntent().getExtras() != null) {
            this.f7349C = getIntent().getExtras().getInt("INDEX");
            this.f7348B = getIntent().getExtras().getString("ALARM_ID");
        }
        this.r = new com.yf.smart.weloopx.data.ProGuard(this);
        this.f7355I = this.r.m11021a(this.f7348B);
    }

    private void m9272e() {
        String a = this.f7355I.m8019a();
        for (int i = 1; i <= 7; i++) {
            this.f7354H.add(Boolean.valueOf(a.contains(String.valueOf(i))));
        }
    }

    private void m9273h() {
        this.f7360d.setText(getString(R.string.set_alarm_title));
        this.f7358b.setText(R.string.cancel);
        this.f7357a.setText(R.string.save);
        this.f7358b.setVisibility(0);
        this.f7357a.setVisibility(0);
        this.f7358b.setOnClickListener(this);
        this.f7357a.setOnClickListener(this);
        this.f7359c.setVisibility(8);
        this.f7359c.setOnClickListener(this);
        this.f7361e.setSaveFromParentEnabled(false);
        this.f7361e.setSaveEnabled(true);
        this.f7361e.setDescendantFocusability(393216);
        this.f7370x = Integer.parseInt(this.f7355I.m8027e());
        this.f7371y = Integer.parseInt(this.f7355I.m8029f());
        this.f7361e.setIs24HourView(Boolean.valueOf(true));
        this.f7361e.setCurrentHour(Integer.valueOf(this.f7370x));
        this.f7361e.setCurrentMinute(Integer.valueOf(this.f7371y));
        this.f7361e.setOnTimeChangedListener(new ProGuard(this));
        this.f7362f.setChecked(((Boolean) this.f7354H.get(0)).booleanValue());
        this.f7363g.setChecked(((Boolean) this.f7354H.get(1)).booleanValue());
        this.f7364h.setChecked(((Boolean) this.f7354H.get(2)).booleanValue());
        this.f7365i.setChecked(((Boolean) this.f7354H.get(3)).booleanValue());
        this.f7366s.setChecked(((Boolean) this.f7354H.get(4)).booleanValue());
        this.f7367t.setChecked(((Boolean) this.f7354H.get(5)).booleanValue());
        this.f7368u.setChecked(((Boolean) this.f7354H.get(6)).booleanValue());
        this.f7362f.setOnCheckedChangeListener(this);
        this.f7363g.setOnCheckedChangeListener(this);
        this.f7364h.setOnCheckedChangeListener(this);
        this.f7365i.setOnCheckedChangeListener(this);
        this.f7366s.setOnCheckedChangeListener(this);
        this.f7367t.setOnCheckedChangeListener(this);
        this.f7368u.setOnCheckedChangeListener(this);
        m8794d(getString(R.string.sync_alarm));
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ae_btn_save:
            case R.id.at_btn_right:
                m9274i();
            case R.id.at_btn_left:
                m9276k();
            default:
        }
    }

    private void m9274i() {
        this.f7353G = true;
        this.f7352F = false;
        for (Boolean booleanValue : this.f7354H) {
            if (booleanValue.booleanValue()) {
                this.f7352F = true;
                break;
            }
        }
        if (!this.f7352F) {
            m9271d(10013);
            this.f7353G = false;
        } else if (!this.f7350D) {
            int i;
            this.f7350D = true;
            AlarmHolder alarmHolder = new AlarmHolder(this.f7370x, this.f7371y, false);
            switch (this.f7349C) {
                case BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES /*1001*/:
                    i = 0;
                    break;
                case BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE /*1002*/:
                    i = 1;
                    break;
                case 1003:
                    i = 2;
                    break;
                default:
                    i = 0;
                    break;
            }
            m9229a(alarmHolder, this.p, this.f7354H, this.f7349C);
            try {
                m9228a(this, this.f7349C, i);
            } catch (com.yf.gattlib.p120e.ProGuard e) {
                e.printStackTrace();
            }
        }
    }

    private void m9275j() {
        setResult(this.f7349C, new Intent());
        finish();
    }

    public void m9277a() {
        com.yf.gattlib.p117p.ProGuard.m8292a("AlarmEditActivity onSyncAlarmStart");
        runOnUiThread(new ProGuard(this));
    }

    public void m9279b() {
        this.f7353G = false;
        this.f7350D = false;
        com.yf.gattlib.p117p.ProGuard.m8292a("AlarmEditActivity onSyncAlarmFailed");
        runOnUiThread(new ProGuard(this));
    }

    public void m9278a(int i) {
        this.f7353G = false;
        runOnUiThread(new ProGuard(this));
        String a = m9264a(this.f7354H);
        this.f7355I.m8024c(this.f7348B);
        this.f7355I.m8022b(getString(R.string.alarm));
        this.f7355I.m8028e(String.valueOf(this.f7370x));
        this.f7355I.m8030f(String.valueOf(this.f7371y));
        this.f7355I.m8026d(m9262a(this.f7370x, this.f7371y));
        this.f7355I.m8032g("1");
        this.f7355I.m8020a(a);
        this.r.m11029d(this.f7355I);
        m9269c(i);
        this.f7350D = false;
        m9275j();
    }

    private void m9269c(int i) {
        com.yf.gattlib.client.ProGuard a = com.yf.gattlib.client.ProGuard.m7829a();
        byte[] copyOf = Arrays.copyOf(this.p, 15);
        switch (i) {
            case BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES /*1001*/:
                a.m7853b(copyOf);
            case BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE /*1002*/:
                a.m7857c(copyOf);
            case 1003:
                a.m7860d(copyOf);
            default:
        }
    }

    public void m9280c() {
        this.f7350D = false;
        com.yf.gattlib.p117p.ProGuard.m8292a("AlarmEditActivity onSyncAlarmTimeout");
        runOnUiThread(new ProGuard(this));
    }

    private String m9264a(List<Boolean> list) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 1; i <= 7; i++) {
            if (((Boolean) list.get(i - 1)).booleanValue()) {
                stringBuilder.append(String.valueOf(i));
                stringBuilder.append(",");
            }
        }
        return stringBuilder.toString();
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f7351E = true;
        switch (compoundButton.getId()) {
            case R.id.Monday:
                this.f7354H.set(0, Boolean.valueOf(z));
            case R.id.Tuesday:
                this.f7354H.set(1, Boolean.valueOf(z));
            case R.id.Wednesday:
                this.f7354H.set(2, Boolean.valueOf(z));
            case R.id.Thursday:
                this.f7354H.set(3, Boolean.valueOf(z));
            case R.id.Friday:
                this.f7354H.set(4, Boolean.valueOf(z));
            case R.id.Saturday:
                this.f7354H.set(5, Boolean.valueOf(z));
            case R.id.Sunday:
                this.f7354H.set(6, Boolean.valueOf(z));
            default:
        }
    }

    private String m9262a(int i, int i2) {
        return (i < 10 ? "0" + i : String.valueOf(i)) + ":" + (i2 < 10 ? "0" + i2 : String.valueOf(i2));
    }

    private void m9276k() {
        if (this.f7351E) {
            m9271d(10012);
        } else {
            finish();
        }
    }

    private void m9271d(int i) {
        this.f7356J = new Builder(this).create();
        this.f7356J.show();
        Window window = this.f7356J.getWindow();
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setContentView(R.layout.alert_dialog);
        ((Button) window.findViewById(R.id.ad_btn_sure)).setOnClickListener(new ProGuard(this, i));
        Button button = (Button) window.findViewById(R.id.ad_btn_cancel);
        View findViewById = window.findViewById(R.id.ad_view_ver_line);
        button.setOnClickListener(new ProGuard(this));
        TextView textView = (TextView) window.findViewById(R.id.ad_tv_description);
        textView.setVisibility(0);
        switch (i) {
            case 10012:
                textView.setText(R.string.exit_alarm_edit);
            case 10013:
                textView.setText(getString(R.string.choice_day_alarm));
                button.setVisibility(8);
                findViewById.setVisibility(8);
            default:
        }
    }
}
