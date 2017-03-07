package com.yf.smart.weloopx.android.ui.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.Toast;
import com.p038b.p039a.p056g.p057a.ProGuard;
import com.yf.smart.weloopx.data.models.RemindersModel;
import com.yf.smart.weloopx.dist.R;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/* compiled from: ProGuard */
public class RemindersAddActivity extends Activity implements OnClickListener {
    @ProGuard(a = 2131559060)
    Button f7564a;
    @ProGuard(a = 2131558781)
    Button f7565b;
    @ProGuard(a = 2131558782)
    Button f7566c;
    @ProGuard(a = 2131558766)
    TextView f7567d;
    @ProGuard(a = 2131559058)
    DatePicker f7568e;
    @ProGuard(a = 2131559059)
    TimePicker f7569f;
    @ProGuard(a = 2131559057)
    EditText f7570g;
    private final String f7571h;
    private com.yf.smart.weloopx.data.ProGuard f7572i;
    private int f7573j;
    private int f7574k;
    private int f7575l;
    private int f7576m;
    private int f7577n;
    private String f7578o;
    private int f7579p;
    private boolean f7580q;

    public RemindersAddActivity() {
        this.f7571h = "RemindersAddActivity";
        this.f7573j = 0;
        this.f7574k = 0;
        this.f7575l = 0;
        this.f7576m = 0;
        this.f7577n = 0;
        this.f7578o = "";
        this.f7579p = 0;
        this.f7580q = false;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.remind_add);
        com.p038b.p039a.ProGuard.m4086a(this);
        m9551a();
        m9554b();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            finish();
        }
        return false;
    }

    private void m9551a() {
        this.f7572i = new com.yf.smart.weloopx.data.ProGuard(this);
        Intent intent = getIntent();
        this.f7578o = intent.getStringExtra("state");
        if (this.f7578o.equals("edit")) {
            this.f7580q = true;
            RemindersModel remindersModel = new RemindersModel();
            this.f7579p = Integer.parseInt(intent.getStringExtra("id"));
            remindersModel.setYear(intent.getStringExtra("year"));
            remindersModel.setMonth(intent.getStringExtra("month"));
            remindersModel.setDay(intent.getStringExtra("day"));
            remindersModel.setHour(intent.getStringExtra("hour"));
            remindersModel.setMin(intent.getStringExtra("min"));
            remindersModel.setMsg(intent.getStringExtra("msg"));
            m9552a(remindersModel);
            return;
        }
        this.f7580q = false;
        m9556c();
    }

    private void m9554b() {
        this.f7568e.setDescendantFocusability(393216);
        this.f7569f.setSaveFromParentEnabled(false);
        this.f7569f.setSaveEnabled(true);
        this.f7569f.setDescendantFocusability(393216);
        this.f7564a.setOnClickListener(this);
        this.f7564a.setVisibility(8);
        this.f7565b.setOnClickListener(this);
        this.f7565b.setVisibility(0);
        this.f7566c.setVisibility(0);
        this.f7566c.setOnClickListener(this);
        this.f7566c.setText(R.string.save);
        this.f7567d.setText(getString(R.string.set_reminder_title));
    }

    private void m9556c() {
        Calendar instance = Calendar.getInstance();
        this.f7573j = instance.get(1);
        this.f7574k = instance.get(2);
        this.f7575l = instance.get(5);
        this.f7576m = instance.get(11);
        this.f7577n = instance.get(12);
        this.f7568e.setCalendarViewShown(false);
        this.f7568e.init(this.f7573j, this.f7574k, this.f7575l, new ft(this));
        this.f7569f.setIs24HourView(Boolean.valueOf(true));
        this.f7569f.setCurrentHour(Integer.valueOf(this.f7576m));
        this.f7569f.setCurrentMinute(Integer.valueOf(this.f7577n));
        this.f7569f.setOnTimeChangedListener(new fu(this));
    }

    private void m9552a(RemindersModel remindersModel) {
        this.f7570g.setText(remindersModel.getMsg());
        CharSequence text = this.f7570g.getText();
        if (text instanceof Spannable) {
            Selection.setSelection((Spannable) text, text.length());
        }
        this.f7573j = Integer.parseInt(remindersModel.getYear());
        this.f7574k = Integer.parseInt(remindersModel.getMonth()) - 1;
        this.f7575l = Integer.parseInt(remindersModel.getDay());
        this.f7576m = Integer.parseInt(remindersModel.getHour());
        this.f7577n = Integer.parseInt(remindersModel.getMin());
        com.yf.gattlib.p117p.ProGuard.m8292a("RemindersAddActivity \u521d\u59cb\u5316\u8981\u7f16\u8f91\u7684month = " + this.f7574k);
        this.f7568e.setCalendarViewShown(false);
        this.f7568e.init(this.f7573j, this.f7574k, this.f7575l, new fv(this));
        this.f7569f.setIs24HourView(Boolean.valueOf(true));
        this.f7569f.setCurrentHour(Integer.valueOf(this.f7576m));
        this.f7569f.setCurrentMinute(Integer.valueOf(this.f7577n));
        this.f7569f.setOnTimeChangedListener(new fw(this));
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.at_btn_left:
                finish();
            case R.id.at_btn_right:
            case R.id.ra_btn_save:
                m9558d();
            default:
        }
    }

    private void m9558d() {
        if (this.f7572i.m11100b() < 10 || this.f7580q) {
            String trim = this.f7570g.getText().toString().trim();
            if (TextUtils.isEmpty(trim)) {
                trim = getResources().getString(R.string.unnamed);
            }
            String valueOf = this.f7576m < 10 ? "0" + this.f7576m : String.valueOf(this.f7576m);
            String valueOf2 = this.f7577n < 10 ? "0" + this.f7577n : String.valueOf(this.f7577n);
            String str = (this.f7574k < 10 ? "0" : "") + (this.f7574k + 1);
            String str2 = this.f7573j + "-" + str + "-" + this.f7575l + " " + valueOf + ":" + valueOf2 + ":" + "00";
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String format = simpleDateFormat.format(Long.valueOf(System.currentTimeMillis()));
            Calendar instance = Calendar.getInstance();
            Calendar instance2 = Calendar.getInstance();
            com.yf.gattlib.p117p.ProGuard.m8292a("RemindersAddActivity nowTime = " + format + " tempTime = " + str2);
            try {
                instance.setTime(simpleDateFormat.parse(format));
                instance2.setTime(simpleDateFormat.parse(str2));
                com.yf.gattlib.p117p.ProGuard.m8292a("RemindersAddActivity newCale = " + instance.getTime().toString() + " editCale = " + instance2.getTime().toString());
            } catch (ParseException e) {
                e.printStackTrace();
            }
            if (instance.compareTo(instance2) > 0) {
                m9560a((int) R.string.reminders_edittime_error);
                return;
            } else if (!this.f7572i.m11102b(trim, str2) || this.f7580q) {
                boolean b;
                RemindersModel remindersModel = new RemindersModel();
                remindersModel.setHour(String.valueOf(this.f7576m));
                remindersModel.setMin(String.valueOf(this.f7577n));
                remindersModel.setMsg(trim);
                remindersModel.setDateAndTime(str2);
                remindersModel.setTime(valueOf + ":" + valueOf2);
                remindersModel.setYear(String.valueOf(this.f7573j));
                remindersModel.setMonth(str);
                remindersModel.setDay(String.valueOf(this.f7575l));
                if (this.f7580q) {
                    remindersModel.setId(this.f7579p);
                    b = this.f7572i.m11101b(remindersModel);
                } else {
                    b = this.f7572i.m11098a(remindersModel);
                }
                if (b) {
                    m9560a((int) R.string.set_success);
                    finish();
                    return;
                }
                return;
            } else {
                m9560a((int) R.string.reminders_is_exist);
                return;
            }
        }
        m9560a((int) R.string.reminders_max_toast);
    }

    protected void m9560a(int i) {
        Toast.makeText(this, getResources().getString(i), 1).show();
    }
}
