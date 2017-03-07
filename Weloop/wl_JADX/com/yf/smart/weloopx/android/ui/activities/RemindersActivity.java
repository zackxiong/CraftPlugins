package com.yf.smart.weloopx.android.ui.activities;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.yf.smart.weloopx.android.ui.p144a.ProGuard.ProGuard;
import com.yf.smart.weloopx.data.models.RemindersModel;
import com.yf.smart.weloopx.dist.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ProGuard */
public class RemindersActivity extends Activity implements OnClickListener, ProGuard {
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558782)
    Button f7550a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f7551b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558675)
    Button f7552c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f7553d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558676)
    ListView f7554e;
    private List<RemindersModel> f7555f;
    private com.yf.smart.weloopx.android.ui.p144a.ProGuard f7556g;
    private com.yf.smart.weloopx.data.ProGuard f7557h;
    private com.yf.gattlib.p110c.ProGuard f7558i;
    private final int f7559j;
    private final int f7560k;
    private boolean f7561l;
    private String f7562m;
    private OnItemClickListener f7563n;

    public RemindersActivity() {
        this.f7559j = 14564;
        this.f7560k = 14565;
        this.f7561l = true;
        this.f7562m = "RemindersActivity";
        this.f7563n = new fs(this);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_reminders);
        com.p038b.p039a.ProGuard.m4086a(this);
        m9545c();
        m9544b();
    }

    private void m9544b() {
        this.f7552c.setOnClickListener(this);
        this.f7551b.setVisibility(0);
        this.f7550a.setVisibility(0);
        this.f7550a.setText(getString(R.string.edit));
        this.f7550a.setTextColor(getResources().getColor(R.color.cruze_black));
        this.f7550a.setTextSize(17.0f);
        this.f7551b.setOnClickListener(this);
        this.f7550a.setOnClickListener(this);
        this.f7553d.setText(getString(R.string.reminders));
        this.f7554e.setOnItemClickListener(this.f7563n);
        this.f7554e.setAdapter(this.f7556g);
    }

    private void m9545c() {
        this.f7558i = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q();
        this.f7557h = new com.yf.smart.weloopx.data.ProGuard(this);
        this.f7555f = new ArrayList();
        this.f7555f = this.f7557h.m11096a();
        this.f7556g = new com.yf.smart.weloopx.android.ui.p144a.ProGuard(this, this.f7555f, this);
        this.f7556g.m9207a(false);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ar_btn_add:
                m9547e();
            case R.id.at_btn_left:
                finish();
            case R.id.at_btn_right:
                this.f7556g.m9207a(this.f7561l);
                m9548f();
            default:
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        m9543a(false);
        m9546d();
    }

    private void m9543a(boolean z) {
        this.f7555f = this.f7557h.m11096a();
        this.f7556g.m9207a(z);
        this.f7556g.m9206a(this.f7555f);
    }

    private void m9546d() {
        RemindersModel c = this.f7557h.m11103c();
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7562m + " \u6700\u8fd1\u7684\u65f6\u95f4 = " + c.getDateAndTime());
        m9542a(c.getMsg(), c.getDateAndTime());
    }

    private void m9542a(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            long a = com.yf.gattlib.p117p.ProGuard.m8228a(str2);
            com.yf.gattlib.p117p.ProGuard.m8297b(this.f7562m + " \u4e8b\u9879\u63d0\u9192\u8bbe\u7f6e\u5b8c\u6210\u540e\uff0c\u7b2c\u4e00\u4e2a\u7ecf\u8fc7" + a + " \u5fae\u5999\u4e4b\u540e\u5f00\u59cb\u53d1\u9001");
            int i = this.f7558i.getInt("REMINDER_NUM", 0);
            Intent intent = new Intent("android.reminder.push");
            intent.putExtra("NOTIFICATION_MSG", str);
            intent.putExtra("NOTIFICATION_TIME", str2);
            ((AlarmManager) getSystemService("alarm")).set(0, a + System.currentTimeMillis(), PendingIntent.getBroadcast(this, i, intent, 268435456));
        }
    }

    private void m9547e() {
        this.f7561l = true;
        this.f7550a.setText(R.string.edit);
        Intent intent = new Intent(this, RemindersAddActivity.class);
        intent.putExtra("state", "add");
        startActivityForResult(intent, 14564);
    }

    private void m9541a(RemindersModel remindersModel) {
        Intent intent = new Intent(this, RemindersAddActivity.class);
        intent.putExtra("state", "edit");
        intent.putExtra("id", String.valueOf(remindersModel.getId()));
        intent.putExtra("year", remindersModel.getYear());
        intent.putExtra("month", remindersModel.getMonth());
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7562m + " \u51c6\u5907\u4f20\u9012\u7684month = " + remindersModel.getMonth());
        intent.putExtra("day", remindersModel.getDay());
        intent.putExtra("hour", remindersModel.getHour());
        intent.putExtra("min", remindersModel.getMin());
        intent.putExtra("msg", remindersModel.getMsg());
        startActivityForResult(intent, 14565);
    }

    private void m9548f() {
        this.f7561l = !this.f7561l;
        if (this.f7561l) {
            this.f7550a.setText(R.string.edit);
        } else {
            this.f7550a.setText(R.string.finish);
        }
        int count = this.f7554e.getCount();
        for (int i = 0; i < count; i++) {
            View childAt = this.f7554e.getChildAt(i);
            if (childAt == null) {
                com.yf.gattlib.p117p.ProGuard.m8292a(this.f7562m + " viewChild\u662fnull");
                return;
            }
            ImageView imageView = (ImageView) childAt.findViewById(R.id.ai_iv_reminder_del);
            if (this.f7561l) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
            }
        }
    }

    public void m9549a() {
        m9543a(true);
        com.yf.gattlib.p117p.ProGuard.m8297b(this.f7562m + " \u5220\u9664\u4e4b\u540e\u91cd\u65b0\u6267\u884c");
        sendBroadcast(new Intent("android.start.app.run.reminder"));
    }
}
