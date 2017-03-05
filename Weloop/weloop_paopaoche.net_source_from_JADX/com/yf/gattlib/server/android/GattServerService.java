package com.yf.gattlib.server.android;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import com.yf.gattlib.db.LastConnection;

/* compiled from: ProGuard */
public class GattServerService extends Service {
    private long f6413a;
    private long f6414b;
    private long f6415c;
    private Handler f6416d;
    private boolean f6417e;
    private com.yf.gattlib.p108a.ProGuard f6418f;
    private final ProGuard f6419g;
    private final BroadcastReceiver f6420h;
    private com.yf.gattlib.p108a.ProGuard f6421i;

    /* renamed from: com.yf.gattlib.server.android.GattServerService.a */
    private class ProGuard implements Runnable {
        public String f6410a;
        final /* synthetic */ GattServerService f6411b;

        private ProGuard(GattServerService gattServerService) {
            this.f6411b = gattServerService;
        }

        public void run() {
            com.yf.gattlib.p117p.ProGuard.m8293a("GattServerService", "Connecter, 1 run connection ");
            com.yf.gattlib.p117p.ProGuard.m8245a((Object) "Connecter, 1 run connection ");
            if (com.yf.gattlib.p109b.ProGuard.m7398b(this.f6411b)) {
                Object obj = "Connecter 2 = " + this.f6411b.f6418f.m7376f().m8067a(this.f6410a) + ", " + this.f6411b.f6418f.m7376f().m8079i();
                com.yf.gattlib.p117p.ProGuard.m8293a("GattServerService", (String) obj);
                com.yf.gattlib.p117p.ProGuard.m8245a(obj);
                if (this.f6411b.f6418f.m7376f().m8067a(this.f6410a) || !this.f6411b.f6418f.m7376f().m8079i()) {
                    com.yf.gattlib.p109b.ProGuard.m7399a().m7402c();
                    this.f6411b.m8435e();
                    return;
                }
                com.yf.gattlib.p117p.ProGuard.m8293a("GattServerService", "Connecter 2.1 run connection ");
                com.yf.gattlib.p117p.ProGuard.m8245a((Object) "Connecter 2.1 run connection ");
                com.yf.gattlib.p117p.ProGuard.m8292a("GattServerService 3. Connecter run , ConnectDeviceCommand excute, address = " + this.f6410a);
                com.yf.gattlib.p117p.ProGuard.m8245a((Object) "GattServerService ConnectDeviceCommand.excute");
                ProGuard.m8440a(this.f6411b, new ProGuard().m8439a(this.f6410a, false, false, true));
                this.f6411b.m8431a(this.f6410a, this.f6411b.f6414b);
                return;
            }
            com.yf.gattlib.p117p.ProGuard.m8293a("GattServerService", "Connecter 1.1 isBLEEnabled is false");
            com.yf.gattlib.p117p.ProGuard.m8245a((Object) "Connecter 1.1 isBLEEnabled is false");
            com.yf.gattlib.p109b.ProGuard.m7399a().m7402c();
            this.f6411b.m8435e();
        }
    }

    /* renamed from: com.yf.gattlib.server.android.GattServerService.b */
    private class ProGuard implements ProGuard {
        final /* synthetic */ GattServerService f6412a;

        private ProGuard(GattServerService gattServerService) {
            this.f6412a = gattServerService;
        }

        public String m8409a() {
            return "destroy";
        }

        public boolean m8410a(Intent intent) {
            com.yf.gattlib.p109b.ProGuard.m7399a().m7402c();
            String f = com.yf.gattlib.client.ProGuard.m7965a().m7988f();
            if (!TextUtils.isEmpty(f)) {
                this.f6412a.m8435e();
                ProGuard.m8445a(f);
            }
            this.f6412a.m8433c();
            return true;
        }
    }

    public GattServerService() {
        this.f6419g = new ProGuard();
        this.f6420h = new ProGuard(this);
        this.f6421i = new ProGuard(this);
    }

    public void onCreate() {
        super.onCreate();
        com.yf.gattlib.p117p.ProGuard.m8292a("GattServerService GattServerService() onCreate ");
        com.yf.gattlib.p117p.ProGuard.m8245a((Object) "GattServerService, onCreate");
        this.f6418f = com.yf.gattlib.p108a.ProGuard.m7368a();
        this.f6416d = new Handler();
        m8419f();
        m8428n();
        m8421g();
        m8422h();
        m8430a();
    }

    private void m8419f() {
        this.f6413a = 15100;
        this.f6414b = com.yf.gattlib.p110c.ProGuard.m7420b();
        this.f6415c = com.yf.gattlib.p110c.ProGuard.m7422c();
    }

    private void m8421g() {
        this.f6418f.m7378h().m8123a((AudioManager) getSystemService("audio"));
    }

    private void m8422h() {
        ProGuard g = this.f6418f.m7377g();
        g.m8437a(new ProGuard(this));
        g.m8437a(new ProGuard(this));
        g.m8437a(new ProGuard());
    }

    public void m8430a() {
        if (!this.f6418f.m7387q().getBoolean("auto connect", true) || !m8425k()) {
            return;
        }
        if (this.f6417e) {
            m8426l();
        } else if (m8432b()) {
            m8426l();
        }
    }

    public boolean m8432b() {
        com.yf.gattlib.p117p.ProGuard.m8293a("GattServerService", "create gatt");
        this.f6417e = m8434d();
        if (!this.f6417e) {
            return false;
        }
        m8415b("created");
        com.yf.gattlib.p117p.ProGuard.m8293a("GattServerService", "create gatt 2");
        return true;
    }

    private void m8423i() {
        this.f6418f.m7378h().m8122a((Context) this);
        this.f6418f.m7385o().m8222a(this);
        this.f6418f.m7379i().m8126a(this);
        this.f6418f.m7380j().m8098a(this);
    }

    private void m8424j() {
        this.f6418f.m7378h().m8124b((Context) this);
        this.f6418f.m7385o().m8223b(this);
        this.f6418f.m7379i().m8127b(this);
        this.f6418f.m7380j().m8099b(this);
    }

    public void m8433c() {
        com.yf.gattlib.p117p.ProGuard.m8293a("GattServerService", "destory gatt");
        this.f6417e = false;
        m8424j();
        this.f6418f.m7376f().m8075e();
        m8415b("detroyed");
        com.yf.gattlib.p117p.ProGuard.m8293a("GattServerService", "destory gatt 2");
    }

    public boolean m8434d() {
        return this.f6418f.m7376f().m8074d();
    }

    private boolean m8425k() {
        return !TextUtils.isEmpty(LastConnection.obtainLastConnection().device);
    }

    private boolean m8413a(String str) {
        return str.equals(LastConnection.obtainLastConnection().device);
    }

    private void m8426l() {
        LastConnection obtainLastConnection = LastConnection.obtainLastConnection();
        if (!TextUtils.isEmpty(obtainLastConnection.device) && !this.f6418f.m7376f().m8067a(obtainLastConnection.device)) {
            this.f6418f.m7376f().m8066a(true);
            ProGuard.m8440a((Context) this, new ProGuard().m8439a(obtainLastConnection.device, false, false, true));
            com.yf.gattlib.p117p.ProGuard.m8292a("GattServerService connectHistoryDevice() postConnection ");
            m8431a(obtainLastConnection.device, this.f6413a);
        }
    }

    private void m8427m() {
        m8433c();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null) {
            CharSequence stringExtra = intent.getStringExtra("code");
            com.yf.gattlib.p117p.ProGuard.m8292a("GattServerService 4. GattServerService onStartCommand get code = " + stringExtra);
            com.yf.gattlib.p117p.ProGuard.m8245a("GattServerService 4. GattServerService onStartCommand get code = " + stringExtra);
            com.yf.gattlib.p117p.ProGuard.m8293a("GattServerService", "code=" + stringExtra);
            if ("destroy".equals(stringExtra) && "disconnect".equals(stringExtra)) {
                this.f6418f.m7377g().m8436a(intent);
            } else {
                if (!(this.f6417e || TextUtils.isEmpty(stringExtra))) {
                    m8432b();
                }
                if (this.f6417e) {
                    this.f6418f.m7377g().m8436a(intent);
                }
            }
        }
        return 1;
    }

    public void onDestroy() {
        m8427m();
        m8429o();
        com.yf.gattlib.p117p.ProGuard.m8293a("GattServerService", "onDestroy");
        com.yf.gattlib.p117p.ProGuard.m8245a((Object) "GattServerService, onDestroy");
        super.onDestroy();
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    private void m8428n() {
        com.yf.gattlib.p108a.ProGuard.m7347a().m7359b(this.f6420h, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
        com.yf.gattlib.p108a.ProGuard.m7347a().m7350a(this.f6420h, new IntentFilter("com.yf.gattlib.intent.action.CONNECTION_STATE_CHANGE"));
        com.yf.gattlib.p108a.ProGuard.m7347a().m7356a("rx_service_uuid", this.f6421i);
        com.yf.gattlib.p108a.ProGuard.m7347a().m7356a("dfu_service_uuid", this.f6421i);
    }

    private void m8429o() {
        com.yf.gattlib.p108a.ProGuard.m7347a().m7349a(this.f6420h);
        com.yf.gattlib.p108a.ProGuard.m7347a().m7358b(this.f6420h);
        com.yf.gattlib.p108a.ProGuard.m7347a().m7361b("rx_service_uuid", this.f6421i);
        com.yf.gattlib.p108a.ProGuard.m7347a().m7361b("dfu_service_uuid", this.f6421i);
    }

    public void m8435e() {
        if (this.f6419g != null) {
            this.f6416d.removeCallbacks(this.f6419g);
        }
    }

    public void m8431a(String str, long j) {
        String str2 = " 2. postConnection, delayed = " + j + ", address = " + str;
        com.yf.gattlib.p117p.ProGuard.m8292a("GattServerService" + str2);
        com.yf.gattlib.p117p.ProGuard.m8293a("GattServerService", str2);
        com.yf.gattlib.p117p.ProGuard.m8245a("GattServerService" + str2);
        m8435e();
        this.f6419g.f6410a = str;
        this.f6416d.postDelayed(this.f6419g, j);
    }

    private void m8415b(String str) {
        Intent intent = new Intent("com.yf.gattlib.intent.action.ACTION_GATT_STATUS");
        intent.putExtra("EXTRA_STATUS", str);
        com.yf.gattlib.p108a.ProGuard.m7347a().m7360b(intent);
    }
}
