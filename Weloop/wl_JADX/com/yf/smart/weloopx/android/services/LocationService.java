package com.yf.smart.weloopx.android.services;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import android.support.v4.app.ag;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.location.BDGeofence;
import com.baidu.location.BDLocationListener;
import com.baidu.location.LocationClient;
import com.baidu.location.LocationClientOption;
import com.baidu.location.LocationClientOption.LocationMode;
import com.baidu.mapapi.SDKInitializer;
import com.yf.gattlib.p118d.ProGuard.ProGuard;
import com.yf.smart.weloopx.android.ui.activities.SplashScreenActivity;
import com.yf.smart.weloopx.dist.R;
import com.yftech.pedometer.Recognizer;
import com.yftech.pedometer.Recognizer.Reporter;
import java.util.Calendar;
import java.util.Random;
import java.util.Timer;

/* compiled from: ProGuard */
public class LocationService extends Service implements SensorEventListener, Reporter {
    private static volatile WakeLock f7141k;
    private ProGuard f7142A;
    private BroadcastReceiver f7143B;
    private OnSharedPreferenceChangeListener f7144C;
    private BDLocationListener f7145D;
    private Runnable f7146E;
    private Runnable f7147F;
    private BroadcastReceiver f7148G;
    private Runnable f7149H;
    private LocationClient f7150a;
    private final int f7151b;
    private LocationClientOption f7152c;
    private Recognizer f7153d;
    private final int[] f7154e;
    private long f7155f;
    private long f7156g;
    private int f7157h;
    private com.yf.gattlib.p110c.ProGuard f7158i;
    private com.yf.smart.weloopx.p145g.ProGuard f7159j;
    private boolean f7160l;
    private Handler f7161m;
    private Handler f7162n;
    private boolean f7163o;
    private int f7164p;
    private ProGuard f7165q;
    private boolean f7166r;
    private com.yf.smart.weloopx.android.p142a.ProGuard f7167s;
    private ag.ProGuard f7168t;
    private final Timer f7169u;
    private com.yf.smart.weloopx.p145g.ProGuard f7170v;
    private final Timer f7171w;
    private Handler f7172x;
    private com.yf.smart.weloopx.data.ProGuard f7173y;
    private com.yf.smart.weloopx.p140b.ProGuard f7174z;

    public LocationService() {
        this.f7151b = 60;
        this.f7154e = new int[]{1, 4};
        this.f7157h = 0;
        this.f7160l = false;
        this.f7164p = 1;
        this.f7165q = ProGuard.normal;
        this.f7168t = new ag.ProGuard(this);
        this.f7169u = new Timer();
        this.f7171w = new Timer();
        this.f7172x = new Handler();
        this.f7142A = new ProGuard(this);
        this.f7143B = new ProGuard(this);
        this.f7144C = new ProGuard(this);
        this.f7145D = new ProGuard(this);
        this.f7146E = new ProGuard(this);
        this.f7147F = new ProGuard(this);
        this.f7148G = new ProGuard(this);
        this.f7149H = new ProGuard(this);
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
        com.yf.gattlib.p117p.ProGuard.m8292a("LocationService \u5f00\u59cb\u5b9a\u4f4d\u670d\u52a1 Start location service");
        this.f7173y = new com.yf.smart.weloopx.data.ProGuard(this);
        this.f7158i = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q();
        this.f7167s = new com.yf.smart.weloopx.android.p142a.ProGuard(this);
        SDKInitializer.initialize(getApplicationContext());
        m9076h();
        m9078i();
        m9093s();
        m9096v();
        m9057a();
        com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10718a(this.f7142A);
        m9099y();
        m9060a(false);
        this.f7170v = new com.yf.smart.weloopx.p145g.ProGuard();
        this.f7174z = com.yf.smart.weloopx.p140b.ProGuard.m10712a();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null) {
            ProGuard proGuard = (ProGuard) intent.getSerializableExtra("evt_switch_location_mode");
            if (!(proGuard == null || proGuard == this.f7165q)) {
                this.f7165q = proGuard;
                m9093s();
            }
        }
        return super.onStartCommand(intent, i, i2);
    }

    private void m9057a() {
        if (m9064b()) {
            this.f7167s.m9032a((NotificationManager) getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION), 100, m9065c());
        } else {
            this.f7167s.m9031a((NotificationManager) getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION), 100);
        }
    }

    private boolean m9064b() {
        return this.f7158i.getBoolean("connect_notification", this.f7166r);
    }

    private Notification m9065c() {
        Intent intent = new Intent(this, SplashScreenActivity.class);
        intent.addFlags(268435456);
        this.f7168t.m156a(getString(R.string.app_name)).m159b((com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10711o() ? getString(R.string.ble_connected) : getString(R.string.ble_disconnected)) + "!!!").m153a((int) R.drawable.ic_launcher).m157a(true).m154a(System.currentTimeMillis()).m155a(PendingIntent.getActivity(this, 0, intent, 134217728));
        return this.f7168t.m152a();
    }

    private void m9068d() {
        if (m9064b()) {
            ((NotificationManager) getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION)).notify(100, m9065c());
        }
    }

    private void m9069e() {
        long elapsedRealtime = SystemClock.elapsedRealtime() + 300000;
        registerReceiver(this.f7143B, new IntentFilter("com.yf.smart.weloopx.location.alarm.xx"));
        ((AlarmManager) getSystemService("alarm")).setRepeating(2, elapsedRealtime, 300000, m9073g());
        this.f7160l = true;
    }

    private void m9071f() {
        this.f7160l = false;
        try {
            unregisterReceiver(this.f7143B);
        } catch (Throwable th) {
        }
        ((AlarmManager) getSystemService("alarm")).cancel(m9073g());
    }

    private PendingIntent m9073g() {
        Intent intent = new Intent("com.yf.smart.weloopx.location.alarm.xx");
        intent.putExtra("1", true);
        return PendingIntent.getBroadcast(this, 0, intent, 0);
    }

    public void onDestroy() {
        com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10722b(this.f7142A);
        m9071f();
        this.f7161m.removeCallbacks(this.f7146E);
        this.f7162n.removeCallbacks(this.f7147F);
        unregisterReceiver(this.f7148G);
        m9098x();
        m9090p();
        com.yf.gattlib.p117p.ProGuard.m8297b("LocationService Destory location service");
        if (this.f7172x != null) {
            this.f7172x.removeCallbacks(this.f7149H);
        }
        super.onDestroy();
    }

    private void m9076h() {
        this.f7159j = new com.yf.smart.weloopx.p145g.ProGuard(this);
        this.f7163o = this.f7158i.getBoolean("KEY_TRAJECTORY_SWITCH", false);
        this.f7158i.registerOnSharedPreferenceChangeListener(this.f7144C);
        this.f7161m = new Handler();
        this.f7162n = new Handler();
        this.f7153d = new Recognizer(this);
        this.f7166r = com.yf.gattlib.p110c.ProGuard.m7425f();
    }

    private void m9078i() {
        if (this.f7163o) {
            m9080j();
        } else {
            m9081k();
        }
    }

    private void m9080j() {
        m9097w();
        m9086m();
        m9084l();
    }

    private void m9081k() {
        m9098x();
        m9086m();
    }

    private void m9084l() {
        SensorManager sensorManager = (SensorManager) getSystemService("sensor");
        for (int defaultSensor : this.f7154e) {
            sensorManager.registerListener(this, sensorManager.getDefaultSensor(defaultSensor), 40000);
        }
    }

    private void m9086m() {
        ((SensorManager) getSystemService("sensor")).unregisterListener(this);
    }

    private void m9087n() {
        this.f7150a = new LocationClient(getApplicationContext());
        this.f7150a.registerLocationListener(this.f7145D);
    }

    private void m9089o() {
        if (this.f7150a == null) {
            m9087n();
        }
        LocationClientOption locationClientOption = new LocationClientOption();
        this.f7152c = locationClientOption;
        locationClientOption.setOpenGps(true);
        locationClientOption.setTimeOut(300);
        locationClientOption.setLocationMode(LocationMode.Hight_Accuracy);
        locationClientOption.setCoorType(BDGeofence.COORD_TYPE_GCJ);
        locationClientOption.setScanSpan(this.f7164p);
        this.f7150a.setLocOption(locationClientOption);
        this.f7150a.start();
        com.yf.gattlib.p117p.ProGuard.m8293a("LocationService", "start location: locationTrackInterval=" + this.f7164p);
    }

    private void m9090p() {
        com.yf.gattlib.p117p.ProGuard.m8293a("LocationService", "stop track: 1");
        if (this.f7150a != null && this.f7150a.isStarted()) {
            com.yf.gattlib.p117p.ProGuard.m8293a("LocationService", "stop track: 2");
            this.f7150a.stop();
        }
    }

    public void onRecongnizerChanged(int i, int i2) {
        com.yf.gattlib.p117p.ProGuard.m8292a("LocationService" + (" onRecongnizerChanged: " + i + ", " + i2));
        if (i == 1) {
            long currentTimeMillis = System.currentTimeMillis() / 60000;
            if (currentTimeMillis == this.f7155f) {
                this.f7157h += i2;
            } else {
                this.f7155f = currentTimeMillis;
                this.f7157h = i2;
            }
            m9092r();
            if (com.yf.smart.weloopx.p145g.ProGuard.f8961a) {
                com.yf.gattlib.p117p.ProGuard.m8297b("LocationService value = " + i2 + ", stepOfCurMinute = " + this.f7157h);
            }
        }
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        this.f7153d.onSensorChanged(sensorEvent.sensor.getType(), sensorEvent.timestamp, sensorEvent.values);
    }

    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    private void m9091q() {
        this.f7161m.removeCallbacks(this.f7146E);
        this.f7161m.postDelayed(this.f7146E, 240000);
    }

    private void m9092r() {
        if (this.f7165q.m9119a() <= ProGuard.run.m9119a()) {
            ProGuard proGuard = this.f7165q;
            if (this.f7157h >= 60) {
                this.f7165q = ProGuard.run;
                this.f7156g = this.f7155f;
                m9091q();
            } else if (this.f7155f - this.f7156g >= 3) {
                this.f7165q = ProGuard.normal;
            }
            com.yf.gattlib.p117p.ProGuard.m8293a("LocationService", "stepOfCurMinute=" + this.f7157h + ", sensorSportMode=" + this.f7165q + ", oldMode=" + proGuard);
            if (proGuard != this.f7165q) {
                m9093s();
            }
        }
    }

    private void m9093s() {
        m9095u();
        m9094t();
    }

    private void m9094t() {
        m9090p();
        if (this.f7163o) {
            if (this.f7165q == ProGuard.normal) {
                this.f7164p = 1;
            } else {
                this.f7164p = LocationClientOption.MIN_SCAN_SPAN;
            }
            com.yf.gattlib.p117p.ProGuard.m8292a("LocationService \u5b9a\u4f4d\u626b\u63cf\u95f4\u9694\u65f6\u95f4 = " + this.f7164p);
            m9089o();
        }
    }

    private void m9095u() {
        if (!this.f7163o || this.f7165q != ProGuard.normal) {
            m9071f();
        } else if (!this.f7160l) {
            m9069e();
        }
    }

    private void m9096v() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        registerReceiver(this.f7148G, intentFilter);
    }

    private void m9097w() {
        synchronized (LocationService.class) {
            com.yf.gattlib.p117p.ProGuard.m8293a("LocationService", "acquire");
            if (f7141k == null) {
                com.yf.gattlib.p117p.ProGuard.m8293a("LocationService", "acquire 1");
                f7141k = ((PowerManager) getSystemService("power")).newWakeLock(1, "StepService");
                return;
            }
            try {
                if (!f7141k.isHeld()) {
                    f7141k.acquire();
                }
            } catch (Throwable th) {
            }
        }
    }

    private void m9098x() {
        synchronized (LocationService.class) {
            com.yf.gattlib.p117p.ProGuard.m8293a("LocationService", "release");
            if (f7141k != null) {
                try {
                    com.yf.gattlib.p117p.ProGuard.m8293a("LocationService", "release 1");
                    f7141k.release();
                    f7141k = null;
                } catch (Throwable th) {
                    f7141k = null;
                }
            }
        }
    }

    private void m9099y() {
        String B = m9056B();
        long a = com.yf.gattlib.p117p.ProGuard.m8228a(B);
        com.yf.gattlib.p117p.ProGuard.m8297b("LocationService \u8ddd\u79bb\u4e0a\u4f20\u7edf\u8ba1\u4fe1\u606ffixedTime = " + B + " \u8fd8\u6709\u591a\u957f\u65f6\u95f4 = " + a);
        if (a >= 0) {
            this.f7169u.schedule(new ProGuard(this), a, 86400000);
        }
    }

    private void m9060a(boolean z) {
        new com.yf.smart.weloopx.p143f.ProGuard(this).m11191a(new ProGuard(this), z);
    }

    private void m9100z() {
        boolean z = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().getBoolean("KEY_AUTO_SYNC_DATA", false);
        m9059a("LocationService \u81ea\u52a8\u540c\u6b65\u6570\u636e\u5f00\u5173 = " + z);
        if (!z) {
            return;
        }
        if (!this.f7170v.m11306a((Context) this)) {
            m9059a("LocationService \u6ca1\u6709\u7f51\u7edc\u4e0d\u540c\u6b65");
        } else if (this.f7170v.m11320g(this)) {
            int i = Calendar.getInstance().get(11);
            m9059a("LocationService \u73b0\u5728\u7684\u65f6\u95f4 = " + i);
            if (i < 23 && i > 7) {
                if (com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10711o()) {
                    com.yf.smart.weloopx.p146c.ProGuard.m10923a().m10962a(com.yf.gattlib.p117p.ProGuard.m8238e(), true);
                } else {
                    m9059a("LocationService \u8bbe\u5907\u6ca1\u6709\u521d\u59cb\u5316\u3001\u8bbe\u5907\u65e0\u8fde\u63a5\uff0c\u4e0d\u540c\u6b65");
                }
            }
        } else {
            m9059a("LocationService \u5904\u4e8e\u524d\u53f0\uff0c\u4e0d\u6267\u884c\u540c\u6b65\u6570\u636e");
        }
    }

    private void m9055A() {
        com.yf.gattlib.p117p.ProGuard.m8292a("LocationService \u66f4\u65b0\u65ad\u8fde\u3001\u91cd\u8fde\u60c5\u51b5 ");
        this.f7173y.m11126c(com.yf.gattlib.p117p.ProGuard.m8238e());
        this.f7173y.m11125b(com.yf.gattlib.p117p.ProGuard.m8238e());
    }

    private void m9059a(String str) {
        com.yf.gattlib.p117p.ProGuard.m8292a(str);
        com.yf.gattlib.p117p.ProGuard.m8245a((Object) str);
    }

    private String m9056B() {
        Random random = new Random();
        int nextInt = random.nextInt(3) + 20;
        int nextInt2 = random.nextInt(60);
        return com.yf.gattlib.p117p.ProGuard.m8238e() + " " + String.valueOf(nextInt) + ":" + (nextInt2 < 10 ? "0" : "") + nextInt2 + ":00";
    }
}
