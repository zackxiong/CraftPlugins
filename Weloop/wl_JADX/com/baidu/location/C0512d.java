package com.baidu.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.location.d */
class C0512d {
    private static C0512d f4041d;
    private boolean f4042a;
    private String f4043b;
    private C0511a f4044c;

    /* renamed from: com.baidu.location.d.a */
    public class C0511a extends BroadcastReceiver {
        final /* synthetic */ C0512d f4040a;

        public C0511a(C0512d c0512d) {
            this.f4040a = c0512d;
        }

        public void onReceive(Context context, Intent intent) {
            try {
                if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                    this.f4040a.f4042a = false;
                    int intExtra = intent.getIntExtra("status", 0);
                    int intExtra2 = intent.getIntExtra("plugged", 0);
                    switch (intExtra) {
                        case ProGuard.styleable.View_paddingStart /*2*/:
                            this.f4040a.f4043b = "4";
                            break;
                        case ProGuard.styleable.View_paddingEnd /*3*/:
                        case ProGuard.styleable.View_theme /*4*/:
                            this.f4040a.f4043b = "3";
                            break;
                        default:
                            this.f4040a.f4043b = null;
                            break;
                    }
                    switch (intExtra2) {
                        case ProGuard.styleable.View_android_focusable /*1*/:
                            this.f4040a.f4043b = "6";
                            this.f4040a.f4042a = true;
                            break;
                        case ProGuard.styleable.View_paddingStart /*2*/:
                            this.f4040a.f4043b = "5";
                            this.f4040a.f4042a = true;
                            break;
                    }
                    if (this.f4040a.f4042a) {
                        C0544w.b5().b4();
                    } else {
                        C0544w.b5().b6();
                    }
                }
            } catch (Exception e) {
                this.f4040a.f4043b = null;
            }
        }
    }

    static {
        f4041d = null;
    }

    private C0512d() {
        this.f4042a = false;
        this.f4043b = null;
        this.f4044c = null;
        this.f4044c = new C0511a(this);
    }

    public static C0512d m5947do() {
        if (f4041d == null) {
            f4041d = new C0512d();
        }
        return f4041d;
    }

    public String m5948a() {
        return this.f4043b;
    }

    public void m5949for() {
        C0513f.getServiceContext().registerReceiver(this.f4044c, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }

    public void m5950if() {
        if (this.f4044c != null) {
            try {
                C0513f.getServiceContext().unregisterReceiver(this.f4044c);
            } catch (Exception e) {
            }
        }
        this.f4044c = null;
    }

    public boolean m5951int() {
        return this.f4042a;
    }
}
