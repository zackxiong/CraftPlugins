package com.baidu.location;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.util.Log;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.location.n */
public class C0532n extends Service implements LLSInterface, C0452e {
    private static Context f4091Z;
    static C0531a f4092a;
    private static long ad;
    public static boolean g0;
    public static boolean gR;
    public static long gS;
    Messenger f4093Y;
    private Looper aa;
    private HandlerThread ab;
    private boolean ac;

    /* renamed from: com.baidu.location.n.a */
    public class C0531a extends Handler {
        final /* synthetic */ C0532n f4090a;

        public C0531a(C0532n c0532n, Looper looper) {
            this.f4090a = c0532n;
            super(looper);
        }

        public void handleMessage(Message message) {
            if (C0532n.gR) {
                switch (message.what) {
                    case ProGuard.styleable.Toolbar_titleMargins /*11*/:
                        this.f4090a.m6045a(message);
                        break;
                    case ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                        this.f4090a.m6049b(message);
                        break;
                    case ProGuard.styleable.Toolbar_titleMarginBottom /*15*/:
                        this.f4090a.m6052c(message);
                        break;
                    case ProGuard.styleable.Theme_actionBarSize /*22*/:
                        C0543v.aI().m6101case(message);
                        break;
                    case ProGuard.styleable.Theme_actionMenuTextAppearance /*25*/:
                        ak.aQ().m5877long(message);
                        break;
                    case ProGuard.styleable.Theme_actionModeCloseButtonStyle /*28*/:
                        C0516g.cP().m5971j(message);
                        break;
                    case ProGuard.styleable.Theme_textAppearanceSmallPopupMenu /*41*/:
                        C0543v.aI().aG();
                        break;
                    case ProGuard.styleable.Theme_toolbarStyle /*57*/:
                        this.f4090a.m6054d(message);
                        break;
                    case C0452e.f3847m /*110*/:
                        C0536r.bO().bS();
                        break;
                    case C0452e.f3837else /*111*/:
                        C0536r.bO().bQ();
                        break;
                    case C0452e.f3861z /*201*/:
                        C0552z.m6126a().m6135do();
                        break;
                    case C0452e.f3838f /*202*/:
                        C0552z.m6126a().m6136if();
                        break;
                    case C0452e.f3831byte /*203*/:
                        C0552z.m6126a().m6133a(message);
                        break;
                    case C0452e.f3850p /*206*/:
                        C0524j.de().m6015if(C0513f.getServiceContext(), message);
                        break;
                    case C0452e.f3822Q /*207*/:
                        C0460G.m5598int(C0513f.getServiceContext());
                        break;
                }
            }
            if (message.what == 0) {
                this.f4090a.m6044a();
            }
            if (message.what == 1) {
                this.f4090a.m6048b();
            }
            super.handleMessage(message);
        }
    }

    static {
        f4092a = null;
        f4091Z = null;
        gR = false;
        ad = 0;
    }

    public C0532n() {
        this.f4093Y = null;
        this.ac = false;
    }

    private void m6044a() {
        gR = true;
        aj.at().ay();
        C0453D.cs().cy();
        C0518i.cY();
        ao.bg().a5();
        aa.m5828I().m5833L();
        C0543v.aI().m6099b();
        C0516g.cP().cU();
        C0526k.bj().bk();
        C0512d.m5947do().m5949for();
        C0530m.bs().bt();
    }

    private void m6045a(Message message) {
        C0479T.m5734q().m5746new(message);
        C0526k.bj().bl();
        C0466L.ac().ae();
    }

    private void m6048b() {
        aj.at().as();
        C0543v.aI().m6100c();
        C0536r.bO().bQ();
        C0491Z.m5802x();
        C0479T.m5734q().m5747o();
        if (!this.ac) {
            Process.killProcess(Process.myPid());
        }
    }

    private void m6049b(Message message) {
        C0479T.m5734q().m5736do(message);
    }

    public static long bu() {
        return ad;
    }

    public static Handler bv() {
        return f4092a;
    }

    private void m6052c(Message message) {
        C0479T.m5734q().m5742int(message);
    }

    private void m6054d(Message message) {
        if (message != null && message.obj == null) {
        }
    }

    public double getVersion() {
        return 5.210000038146973d;
    }

    public IBinder onBind(Intent intent) {
        Bundle extras = intent.getExtras();
        boolean z = false;
        if (extras != null) {
            z = extras.getBoolean("cache_exception");
            this.ac = extras.getBoolean("kill_process");
            g0 = extras.getBoolean("debug_dev");
            gS = extras.getLong("interval");
        }
        if (!z) {
            Thread.setDefaultUncaughtExceptionHandler(C0530m.bs());
        }
        return this.f4093Y.getBinder();
    }

    public void onCreate(Context context) {
        ad = System.currentTimeMillis();
        f4091Z = context;
        this.ab = C0446B.m5497a();
        this.aa = this.ab.getLooper();
        f4092a = new C0531a(this, this.aa);
        this.f4093Y = new Messenger(f4092a);
        f4092a.sendEmptyMessage(0);
        Log.d(C0452e.f3849o, "baidu location service start1 ..." + Process.myPid());
    }

    public void onDestroy() {
        gR = false;
        C0453D.cs().co();
        C0476R.m5715for().m5717do();
        aa.m5828I().m5831H();
        ao.bg().a7();
        C0512d.m5947do().m5950if();
        f4092a.sendEmptyMessage(1);
        Log.d(C0452e.f3849o, "baidu location service stop ...");
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        return 1;
    }

    public boolean onUnBind(Intent intent) {
        return false;
    }
}
