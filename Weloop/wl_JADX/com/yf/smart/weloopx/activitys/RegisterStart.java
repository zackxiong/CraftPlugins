package com.yf.smart.weloopx.activitys;

import android.content.Context;
import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;
import com.yf.smart.weloopx.android.ui.activities.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class RegisterStart extends ProGuard {
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558670)
    Button f7001a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558669)
    Button f7002b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558671)
    TextView f7003c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558672)
    Button f7004d;
    private String f7005e;
    private com.yf.smart.weloopx.p145g.ProGuard f7006f;
    private boolean f7007g;

    public RegisterStart() {
        this.f7005e = "RegisterStart";
        this.f7007g = true;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_register_start);
        com.p038b.p039a.ProGuard.m4086a(this);
        this.f7006f = new com.yf.smart.weloopx.p145g.ProGuard();
        m8886a();
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10659b();
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10658a(this);
    }

    protected void onResume() {
        super.onResume();
        this.f7007g = true;
        this.f7006f.m11311b(this, "");
        this.f7006f.m11302a((Context) this, "");
    }

    public void m8886a() {
        com.yf.smart.weloopx.p149d.ProGuard.m11006b().m11009a(com.yf.smart.weloopx.p149d.ProGuard.activity_register_start, 0, findViewById(R.id.activity_register_start));
        this.f7001a.setOnClickListener(new ProGuard(this));
        this.f7002b.setOnClickListener(new ProGuard(this));
        this.f7003c.setOnClickListener(new ProGuard(this));
        this.f7004d.setOnClickListener(new ProGuard(this));
    }
}
