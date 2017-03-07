package com.umeng.update;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import java.io.File;

/* compiled from: ProGuard */
public class UpdateDialogActivity extends Activity {
    int f5466a;
    UpdateResponse f5467b;
    boolean f5468c;
    File f5469d;
    ViewGroup f5470e;
    com.alimama.mobile.ProGuard f5471f;

    /* renamed from: com.umeng.update.UpdateDialogActivity.1 */
    class ProGuard implements OnClickListener {
        final /* synthetic */ int f5462a;
        final /* synthetic */ int f5463b;
        final /* synthetic */ UpdateDialogActivity f5464c;

        ProGuard(UpdateDialogActivity updateDialogActivity, int i, int i2) {
            this.f5464c = updateDialogActivity;
            this.f5462a = i;
            this.f5463b = i2;
        }

        public void onClick(View view) {
            if (this.f5462a == view.getId()) {
                this.f5464c.f5466a = 5;
            } else if (this.f5463b == view.getId()) {
                this.f5464c.f5466a = 7;
            } else if (this.f5464c.f5468c) {
                this.f5464c.f5466a = 7;
            }
            this.f5464c.finish();
        }
    }

    /* renamed from: com.umeng.update.UpdateDialogActivity.2 */
    class ProGuard implements OnCheckedChangeListener {
        final /* synthetic */ UpdateDialogActivity f5465a;

        ProGuard(UpdateDialogActivity updateDialogActivity) {
            this.f5465a = updateDialogActivity;
        }

        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f5465a.f5468c = z;
        }
    }

    public UpdateDialogActivity() {
        this.f5466a = 6;
        this.f5468c = false;
        this.f5469d = null;
    }

    protected void onCreate(Bundle bundle) {
        boolean z;
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(p028c.p029a.ProGuard.m2816a((Context) this).m2819c("umeng_update_dialog"));
        this.f5467b = (UpdateResponse) getIntent().getExtras().getSerializable("response");
        String string = getIntent().getExtras().getString("file");
        boolean z2 = getIntent().getExtras().getBoolean("force");
        if (string != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            this.f5469d = new File(string);
        }
        int a = p028c.p029a.ProGuard.m2816a((Context) this).m2817a("umeng_update_content");
        int a2 = p028c.p029a.ProGuard.m2816a((Context) this).m2817a("umeng_update_wifi_indicator");
        int a3 = p028c.p029a.ProGuard.m2816a((Context) this).m2817a("umeng_update_id_ok");
        int a4 = p028c.p029a.ProGuard.m2816a((Context) this).m2817a("umeng_update_id_cancel");
        int a5 = p028c.p029a.ProGuard.m2816a((Context) this).m2817a("umeng_update_id_ignore");
        int a6 = p028c.p029a.ProGuard.m2816a((Context) this).m2817a("umeng_update_id_close");
        int a7 = p028c.p029a.ProGuard.m2816a((Context) this).m2817a("umeng_update_id_check");
        this.f5470e = (ViewGroup) findViewById(p028c.p029a.ProGuard.m2816a((Context) this).m2817a("umeng_update_frame"));
        if (this.f5470e != null && this.f5467b.display_ads) {
            Object slotId = UpdateConfig.getSlotId();
            if (TextUtils.isEmpty(slotId)) {
                Log.w(UpdateConfig.f5440a, "\u5c1a\u672a\u8bbe\u7f6e\u63a8\u5e7f\u4f4did,\u65e0\u6cd5\u5c55\u793a\u63a8\u5e7f\u5185\u5bb9\u3002");
            } else {
                this.f5471f = new com.alimama.mobile.ProGuard(this);
                if (this.f5471f.m3587a(slotId)) {
                    this.f5470e.addView(this.f5471f, new LayoutParams(-1, -2));
                }
            }
        }
        OnClickListener proGuard = new ProGuard(this, a3, a5);
        OnCheckedChangeListener proGuard2 = new ProGuard(this);
        if (a2 > 0) {
            findViewById(a2).setVisibility(p028c.p029a.ProGuard.m2800d(this) ? 8 : 0);
        }
        if (z2) {
            findViewById(a7).setVisibility(8);
        }
        findViewById(a3).setOnClickListener(proGuard);
        findViewById(a4).setOnClickListener(proGuard);
        findViewById(a5).setOnClickListener(proGuard);
        findViewById(a6).setOnClickListener(proGuard);
        ((CheckBox) findViewById(a7)).setOnCheckedChangeListener(proGuard2);
        CharSequence a8 = this.f5467b.m7180a(this, z);
        TextView textView = (TextView) findViewById(a);
        textView.requestFocus();
        textView.setText(a8);
    }

    protected void onDestroy() {
        super.onDestroy();
        UmengUpdateAgent.m7167a(this.f5466a, this, this.f5467b, this.f5469d);
        if (this.f5471f != null) {
            this.f5471f.m3585a();
        }
    }
}
