package com.baidu.android.pushservice;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.provider.Settings.System;
import com.baidu.android.pushservice.jni.PushSocket;
import com.baidu.android.pushservice.message.C0318d;
import com.baidu.android.pushservice.message.C0319e;
import com.baidu.android.pushservice.p070d.C0214a;
import com.baidu.android.pushservice.p072f.C0276j;
import com.baidu.android.pushservice.p072f.C0284t;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p080d.C0399b;
import com.baidu.location.LocationClientOption;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Properties;
import java.util.Set;
import org.json.JSONArray;

/* renamed from: com.baidu.android.pushservice.h */
public final class C0293h {
    static int f3295a;
    private static Boolean f3296e;
    private static volatile C0293h f3297n;
    private final int f3298A;
    Handler f3299b;
    C0318d f3300c;
    private boolean f3301d;
    private boolean f3302f;
    private HashMap<Long, C0214a> f3303g;
    private C0292b f3304h;
    private C0291a f3305i;
    private boolean f3306j;
    private int f3307k;
    private Context f3308l;
    private boolean f3309m;
    private boolean f3310o;
    private String f3311p;
    private int f3312q;
    private Runnable f3313r;
    private Runnable f3314s;
    private long f3315t;
    private int[] f3316u;
    private int[] f3317v;
    private final int f3318w;
    private int f3319x;
    private int f3320y;
    private int f3321z;

    /* renamed from: com.baidu.android.pushservice.h.a */
    class C0291a extends Thread {
        final /* synthetic */ C0293h f3293a;

        C0291a(C0293h c0293h) {
            this.f3293a = c0293h;
            setName("PushService-PushConnection-readThread");
        }

        public void run() {
            while (!this.f3293a.f3302f) {
                byte[] b;
                try {
                    b = PushSocket.m5016b(C0293h.f3295a);
                } catch (Exception e) {
                    b = null;
                    C0385a.m5313d("PushConnection", "Get message exception");
                }
                this.f3293a.f3299b.removeCallbacks(this.f3293a.f3314s);
                if (this.f3293a.f3310o) {
                    this.f3293a.f3310o = false;
                    this.f3293a.m4983b(true);
                }
                if (b == null || b.length == 0) {
                    int lastSocketError = PushSocket.getLastSocketError();
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("PushConnection", "Receive err,errno:" + lastSocketError);
                    }
                    this.f3293a.m4979a("030301", lastSocketError);
                    this.f3293a.m4993f();
                    if (C0192a.f2943d > 0) {
                        C0374f.m5189a("PushConnection Receive err " + this.f3293a.f3308l.getPackageName() + " lastSocketError " + lastSocketError + " socketfd " + C0293h.f3295a + System.currentTimeMillis(), this.f3293a.f3308l.getApplicationContext());
                    }
                } else {
                    try {
                        C0319e a = this.f3293a.f3300c.m5050a(b, b.length);
                        if (a != null) {
                            try {
                                if (C0192a.m4341b()) {
                                    C0385a.m5311b("PushConnection", "ReadThread receive msg :" + a.toString());
                                }
                                this.f3293a.f3300c.m5055b(a);
                            } catch (Throwable e2) {
                                C0385a.m5313d("PushConnection", "Handle message exception " + C0374f.m5180a(e2));
                                this.f3293a.m4993f();
                                if (C0192a.f2943d > 0) {
                                    C0374f.m5189a("PushConnection Handle message exception " + this.f3293a.f3308l.getPackageName() + C0374f.m5180a(e2) + " lastSocketError " + PushSocket.getLastSocketError() + " socketfd " + C0293h.f3295a + System.currentTimeMillis(), this.f3293a.f3308l.getApplicationContext());
                                }
                            }
                        }
                        this.f3293a.f3307k = 0;
                    } catch (Throwable e22) {
                        C0385a.m5308a("PushConnection", "Read message exception " + C0374f.m5180a(e22));
                        this.f3293a.m4993f();
                        if (C0192a.f2943d > 0) {
                            C0374f.m5189a("PushConnection Read message exception " + this.f3293a.f3308l.getPackageName() + C0374f.m5180a(e22) + " lastSocketError " + PushSocket.getLastSocketError() + " socketfd " + C0293h.f3295a + System.currentTimeMillis(), this.f3293a.f3308l.getApplicationContext());
                        }
                    }
                }
            }
        }
    }

    /* renamed from: com.baidu.android.pushservice.h.b */
    class C0292b extends Thread {
        final /* synthetic */ C0293h f3294a;

        C0292b(C0293h c0293h) {
            this.f3294a = c0293h;
            setName("PushService-PushConnection-SendThread");
        }

        public void run() {
            while (!this.f3294a.f3302f) {
                synchronized (this.f3294a.f3300c.m5051a()) {
                    if (this.f3294a.f3300c.m5051a().size() == 0) {
                        try {
                            this.f3294a.f3300c.m5051a().wait();
                        } catch (InterruptedException e) {
                            C0385a.m5313d("PushConnection", "SendThread wait exception: " + e);
                        }
                    }
                    C0319e c0319e = this.f3294a.f3300c.m5051a().size() > 0 ? (C0319e) this.f3294a.f3300c.m5051a().removeFirst() : null;
                }
                if (!this.f3294a.f3302f) {
                    if (!(c0319e == null || c0319e.m5059a() == null)) {
                        if (C0192a.m4341b()) {
                            C0385a.m5311b("PushConnection", "SendThread send msg :" + c0319e.toString());
                        }
                        if (c0319e.m5060b()) {
                            if (c0319e.m5061c()) {
                                this.f3294a.f3310o = true;
                            } else {
                                this.f3294a.f3310o = false;
                            }
                            this.f3294a.f3299b.removeCallbacks(this.f3294a.f3314s);
                            this.f3294a.f3299b.postDelayed(this.f3294a.f3314s, 60000);
                        }
                        if (PushSocket.sendMsg(C0293h.f3295a, c0319e.m5059a(), c0319e.m5059a().length) == -1) {
                            C0385a.m5311b("PushConnection", "sendMsg err, errno:" + PushSocket.getLastSocketError());
                            this.f3294a.m4993f();
                            if (C0192a.f2943d > 0) {
                                C0374f.m5189a("PushConnection sendMsg err " + this.f3294a.f3308l.getPackageName() + " lastSocketError " + PushSocket.getLastSocketError() + " socketfd " + C0293h.f3295a + System.currentTimeMillis(), this.f3294a.f3308l.getApplicationContext());
                            }
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    static {
        f3295a = -1;
        f3296e = Boolean.valueOf(false);
    }

    private C0293h(Context context) {
        this.f3301d = false;
        this.f3302f = false;
        this.f3303g = new HashMap();
        this.f3306j = false;
        this.f3307k = 0;
        this.f3299b = new Handler();
        this.f3309m = true;
        this.f3311p = C0383z.m5296b();
        this.f3312q = C0383z.f3618e;
        this.f3313r = new C0295j(this);
        this.f3314s = new C0296k(this);
        this.f3315t = 0;
        this.f3316u = new int[]{180, 300, 420, 540};
        this.f3317v = new int[]{0, 0, 0, 0};
        this.f3318w = 2;
        this.f3319x = 0;
        this.f3320y = 0;
        this.f3321z = 0;
        this.f3298A = 7200;
        this.f3308l = context;
        int i = m4998i();
        if (i > 0 && i < this.f3316u.length) {
            this.f3319x = i;
        }
        m5000j();
        PushSDK.getInstance(this.f3308l).setAlarmTimeout(this.f3316u[this.f3319x]);
    }

    public static C0293h m4973a(Context context) {
        if (f3297n == null) {
            f3297n = new C0293h(context);
        }
        return f3297n;
    }

    private void m4977a(int i) {
        PushSettings.m4205a(i);
    }

    private void m4979a(String str, int i) {
        try {
            C0276j c0276j = new C0276j();
            c0276j.g = str;
            c0276j.h = System.currentTimeMillis();
            c0276j.i = C0399b.m5336d(this.f3308l);
            c0276j.j = i;
            C0284t.m4936b(this.f3308l, c0276j);
        } catch (Exception e) {
            if (C0192a.m4341b()) {
                C0385a.m5308a("PushConnection", "insertAgent exception");
            }
        }
    }

    private void m4983b(boolean z) {
        int i = this.f3319x;
        if (z) {
            this.f3320y++;
            this.f3321z++;
            this.f3317v[this.f3319x] = 0;
            if (this.f3316u[this.f3319x] * this.f3320y >= 7200) {
                this.f3320y = 0;
                if (this.f3319x < this.f3316u.length - 1 && this.f3317v[this.f3319x + 1] < 2) {
                    this.f3321z = 0;
                    this.f3319x++;
                    m4977a(this.f3319x);
                    try {
                        PushSDK.getInstance(this.f3308l).setAlarmTimeout(this.f3316u[this.f3319x]);
                    } catch (Exception e) {
                        C0385a.m5313d("PushConnection", e.getMessage());
                    }
                }
            }
            if (this.f3316u[this.f3319x] * this.f3321z >= 14400) {
                this.f3321z = 0;
                C0276j c0276j = new C0276j();
                c0276j.g = "030101";
                c0276j.h = System.currentTimeMillis();
                c0276j.i = C0399b.m5336d(this.f3308l);
                c0276j.f3242a = this.f3316u[this.f3319x];
                C0284t.m4932a(this.f3308l, c0276j);
            }
        } else {
            this.f3320y = 0;
            this.f3321z = 0;
            int[] iArr = this.f3317v;
            int i2 = this.f3319x;
            iArr[i2] = iArr[i2] + 1;
            if (this.f3319x > 0) {
                this.f3319x--;
                m4977a(this.f3319x);
                PushSDK.getInstance(this.f3308l).setAlarmTimeout(this.f3316u[this.f3319x]);
            }
        }
        if (PushSettings.m4222c()) {
            C0385a.m5311b("PushConnection", "RTC stat update from " + this.f3316u[i] + " to " + this.f3316u[this.f3319x]);
            C0374f.m5201b("RTC stat update from " + this.f3316u[i] + " to " + this.f3316u[this.f3319x]);
        }
    }

    private synchronized void m4989e() {
        if (this.f3301d || f3296e.booleanValue()) {
            if (C0192a.m4341b()) {
                C0385a.m5308a("PushConnection", "Connect return. mConnected:" + this.f3301d + " mConnectting:" + f3296e);
            }
        } else if (ad.m4377a().m4384e()) {
            if (C0192a.f2943d > 0) {
                C0374f.m5189a("PushConnection connectImpl from " + this.f3308l.getPackageName() + " at Time " + System.currentTimeMillis(), this.f3308l);
            }
            f3296e = Boolean.valueOf(true);
            f3295a = -1;
            Thread thread = new Thread(new C0294i(this));
            thread.setName("PushService-PushService-connect");
            thread.start();
        } else {
            if (C0192a.m4341b()) {
                C0385a.m5311b("PushConnection", "re-token");
            }
            PushSDK.getInstance(this.f3308l).sendRequestTokenIntent();
        }
    }

    private void m4993f() {
        if (C0192a.m4341b()) {
            C0385a.m5308a("PushConnection", "disconnectedByPeer, mStoped == " + this.f3306j);
            C0374f.m5201b("disconnectedByPeer, mStoped == " + this.f3306j + PushSocket.getLastSocketError());
        }
        if (C0192a.f2943d > 0) {
            C0374f.m5189a("PushConnection destroy from " + this.f3308l.getPackageName() + " at Time " + System.currentTimeMillis(), this.f3308l);
        }
        m4995g();
        if (!this.f3306j) {
            this.f3307k++;
            if (this.f3307k < 3) {
                this.f3299b.removeCallbacks(this.f3313r);
                int i = ((this.f3307k - 1) * 30) * LocationClientOption.MIN_SCAN_SPAN;
                if (this.f3307k == 1) {
                    i = LocationClientOption.MIN_SCAN_SPAN_NETWORK;
                }
                this.f3299b.postDelayed(this.f3313r, (long) i);
                if (C0192a.m4341b()) {
                    C0385a.m5308a("PushConnection", "Schedule retry-- retry times: " + this.f3307k + " time delay: " + i);
                }
            }
        }
    }

    private void m4995g() {
        if (C0192a.m4341b()) {
            C0385a.m5308a("PushConnection", "destroy");
        }
        if (this.f3299b != null) {
            this.f3299b.removeCallbacks(this.f3314s);
        }
        this.f3302f = true;
        this.f3301d = false;
        m5006a(false);
        if (this.f3300c != null) {
            synchronized (this.f3300c.m5051a()) {
                this.f3300c.m5051a().notifyAll();
            }
        }
        PushSocket.m5013a(f3295a);
        if (this.f3300c != null) {
            this.f3300c.m5054b();
        }
    }

    private void m4996h() {
        Set<Long> keySet = this.f3303g.keySet();
        long currentTimeMillis = System.currentTimeMillis();
        ac registrationService = PushSDK.getInstance(this.f3308l).getRegistrationService();
        if (registrationService != null) {
            for (Long longValue : keySet) {
                long longValue2 = longValue.longValue();
                if (longValue2 < currentTimeMillis) {
                    registrationService.m4374a((C0214a) this.f3303g.get(Long.valueOf(longValue2)));
                    this.f3303g.remove(Long.valueOf(longValue2));
                }
            }
        }
    }

    private int m4998i() {
        return PushSettings.m4223d();
    }

    private void m5000j() {
        FileInputStream fileInputStream;
        Throwable th;
        File file = new File(Environment.getExternalStorageDirectory(), "baidu/pushservice/pushservice.cfg");
        if (file.exists()) {
            Properties properties = new Properties();
            FileInputStream fileInputStream2 = null;
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    properties.load(fileInputStream);
                    String property = properties.getProperty("rtcseed");
                    if (property != null && property.length() > 0) {
                        JSONArray jSONArray = new JSONArray(property);
                        for (int i = 0; i < jSONArray.length(); i++) {
                            this.f3316u[i] = jSONArray.getInt(i);
                            this.f3317v[i] = 0;
                        }
                    }
                    property = properties.getProperty("originseed");
                    if (property != null && property.length() > 0) {
                        this.f3319x = Integer.parseInt(property);
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e) {
                            C0385a.m5313d("PushConnection", "error " + e.getMessage());
                        }
                    }
                } catch (Exception e2) {
                    try {
                        if (C0192a.m4341b()) {
                            C0385a.m5313d("PushConnection", "getTestConfig exception ");
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e3) {
                                C0385a.m5313d("PushConnection", "error " + e3.getMessage());
                            }
                        }
                    } catch (Throwable th2) {
                        Throwable th3 = th2;
                        fileInputStream2 = fileInputStream;
                        th = th3;
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (IOException e4) {
                                C0385a.m5313d("PushConnection", "error " + e4.getMessage());
                            }
                        }
                        throw th;
                    }
                }
            } catch (Exception e5) {
                fileInputStream = null;
                if (C0192a.m4341b()) {
                    C0385a.m5313d("PushConnection", "getTestConfig exception ");
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
            } catch (Throwable th4) {
                th = th4;
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
                throw th;
            }
        }
    }

    public void m5005a(long j, C0214a c0214a) {
        this.f3303g.put(Long.valueOf(j), c0214a);
    }

    public void m5006a(boolean z) {
        if (this.f3308l == null) {
            C0385a.m5313d("PushConnection", "setConnectState, mContext == null");
            return;
        }
        int i = 0;
        if (z) {
            i = 1;
        }
        System.putInt(this.f3308l.getContentResolver(), "com.baidu.pushservice.PushSettings.connect_state", i);
    }

    public boolean m5007a() {
        return this.f3301d;
    }

    public void m5008b() {
        this.f3307k = 0;
        this.f3306j = false;
        m4989e();
    }

    public void m5009c() {
        if (C0192a.m4341b()) {
            C0385a.m5308a("PushConnection", "---stop---");
        }
        if (C0192a.f2943d > 0) {
            C0374f.m5189a("PushConnection stop from " + this.f3308l.getPackageName() + " at Time " + System.currentTimeMillis(), this.f3308l);
        }
        this.f3302f = true;
        this.f3306j = true;
        this.f3299b.removeCallbacks(this.f3313r);
        m4995g();
        f3297n = null;
    }

    public void m5010d() {
        if (this.f3300c != null) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.f3315t > 120000) {
                this.f3300c.m5056c();
                this.f3315t = currentTimeMillis;
                if (C0192a.m4341b()) {
                    C0385a.m5308a("PushConnection", "sendHeartbeatMessage");
                }
            } else if (C0192a.m4341b()) {
                C0385a.m5308a("PushConnection", "sendHeartbeatMessage ingnored\uff0c because too frequent.");
            }
        }
        m4996h();
    }
}
