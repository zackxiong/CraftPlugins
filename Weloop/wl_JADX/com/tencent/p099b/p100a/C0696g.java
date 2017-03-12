package com.tencent.p099b.p100a;

import android.content.Context;
import com.baidu.location.LocationClientOption;
import com.tencent.p099b.p100a.p102b.C0683l;
import java.util.Timer;
import java.util.TimerTask;

/* renamed from: com.tencent.b.a.g */
public class C0696g {
    private static volatile C0696g f5240b;
    private Timer f5241a;
    private Context f5242c;

    static {
        f5240b = null;
    }

    private C0696g(Context context) {
        this.f5241a = null;
        this.f5242c = null;
        this.f5242c = context.getApplicationContext();
        this.f5241a = new Timer(false);
    }

    public static C0696g m7031a(Context context) {
        if (f5240b == null) {
            synchronized (C0696g.class) {
                if (f5240b == null) {
                    f5240b = new C0696g(context);
                }
            }
        }
        return f5240b;
    }

    public final void m7032a() {
        if (C0708t.m7047a() == C0709u.PERIOD) {
            long l = (long) ((C0708t.m7077l() * 60) * LocationClientOption.MIN_SCAN_SPAN);
            if (C0708t.m7062b()) {
                C0683l.m6973c().m6935a("setupPeriodTimer delay:" + l);
            }
            TimerTask c0697h = new C0697h(this);
            if (this.f5241a != null) {
                if (C0708t.m7062b()) {
                    C0683l.m6973c().m6935a("setupPeriodTimer schedule delay:" + l);
                }
                this.f5241a.schedule(c0697h, l);
            } else if (C0708t.m7062b()) {
                C0683l.m6973c().m6939c("setupPeriodTimer schedule timer == null");
            }
        }
    }
}
