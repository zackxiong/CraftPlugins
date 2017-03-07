package com.tencent.p099b.p100a;

import android.content.Context;
import android.content.IntentFilter;
import com.tencent.p099b.p100a.p102b.C0673b;
import com.tencent.p099b.p100a.p102b.C0677f;
import com.tencent.p099b.p100a.p102b.C0683l;
import com.tencent.p099b.p100a.p102b.C0689r;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.regex.Pattern;
import org.apache.http.HttpHost;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.x */
public class C0712x {
    private static C0712x f5350g;
    private List<String> f5351a;
    private volatile int f5352b;
    private volatile String f5353c;
    private volatile HttpHost f5354d;
    private C0677f f5355e;
    private int f5356f;
    private Context f5357h;
    private C0673b f5358i;

    static {
        f5350g = null;
    }

    private C0712x(Context context) {
        this.f5351a = null;
        this.f5352b = 2;
        this.f5353c = "";
        this.f5354d = null;
        this.f5355e = null;
        this.f5356f = 0;
        this.f5357h = null;
        this.f5358i = null;
        this.f5357h = context.getApplicationContext();
        this.f5355e = new C0677f();
        C0700l.m7034a(context);
        this.f5358i = C0683l.m6973c();
        m7123j();
        this.f5351a = new ArrayList(10);
        this.f5351a.add("117.135.169.101");
        this.f5351a.add("140.207.54.125");
        this.f5351a.add("180.153.8.53");
        this.f5351a.add("120.198.203.175");
        this.f5351a.add("14.17.43.18");
        this.f5351a.add("163.177.71.186");
        this.f5351a.add("111.30.131.31");
        this.f5351a.add("123.126.121.167");
        this.f5351a.add("123.151.152.111");
        this.f5351a.add("113.142.45.79");
        this.f5351a.add("123.138.162.90");
        this.f5351a.add("103.7.30.94");
        m7131g();
    }

    public static C0712x m7120a(Context context) {
        if (f5350g == null) {
            synchronized (C0712x.class) {
                if (f5350g == null) {
                    f5350g = new C0712x(context);
                }
            }
        }
        return f5350g;
    }

    private static boolean m7121b(String str) {
        return Pattern.compile("(2[5][0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})").matcher(str).matches();
    }

    private String m7122i() {
        try {
            String str = "pingma.qq.com";
            if (!C0712x.m7121b(str)) {
                return InetAddress.getByName(str).getHostAddress();
            }
        } catch (Throwable e) {
            this.f5358i.m6938b(e);
        }
        return "";
    }

    private void m7123j() {
        this.f5352b = 0;
        this.f5354d = null;
        this.f5353c = null;
    }

    public final HttpHost m7124a() {
        return this.f5354d;
    }

    public final void m7125a(String str) {
        if (C0708t.m7062b()) {
            this.f5358i.m6935a("updateIpList " + str);
        }
        try {
            if (C0683l.m6975c(str)) {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.length() > 0) {
                    Iterator keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String string = jSONObject.getString((String) keys.next());
                        if (C0683l.m6975c(string)) {
                            for (String str2 : string.split(";")) {
                                String str22;
                                if (C0683l.m6975c(str22)) {
                                    String[] split = str22.split(":");
                                    if (split.length > 1) {
                                        str22 = split[0];
                                        if (C0712x.m7121b(str22) && !this.f5351a.contains(str22)) {
                                            if (C0708t.m7062b()) {
                                                this.f5358i.m6935a("add new ip:" + str22);
                                            }
                                            this.f5351a.add(str22);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable e) {
            this.f5358i.m6938b(e);
        }
        this.f5356f = new Random().nextInt(this.f5351a.size());
    }

    public final String m7126b() {
        return this.f5353c;
    }

    public final int m7127c() {
        return this.f5352b;
    }

    public final void m7128d() {
        this.f5356f = (this.f5356f + 1) % this.f5351a.size();
    }

    public final boolean m7129e() {
        return this.f5352b == 1;
    }

    public final boolean m7130f() {
        return this.f5352b != 0;
    }

    final void m7131g() {
        if (C0689r.m7023e(this.f5357h)) {
            if (C0708t.f5296g) {
                String i = m7122i();
                if (C0708t.m7062b()) {
                    this.f5358i.m6935a("remoteIp ip is " + i);
                }
                if (C0683l.m6975c(i)) {
                    String str;
                    if (this.f5351a.contains(i)) {
                        str = i;
                    } else {
                        str = (String) this.f5351a.get(this.f5356f);
                        if (C0708t.m7062b()) {
                            this.f5358i.m6939c(i + " not in ip list, change to:" + str);
                        }
                    }
                    C0708t.m7064c("http://" + str + ":80/mstat/report");
                }
            }
            this.f5353c = C0683l.m6989j(this.f5357h);
            if (C0708t.m7062b()) {
                this.f5358i.m6935a("NETWORK name:" + this.f5353c);
            }
            if (C0683l.m6975c(this.f5353c)) {
                if ("WIFI".equalsIgnoreCase(this.f5353c)) {
                    this.f5352b = 1;
                } else {
                    this.f5352b = 2;
                }
                this.f5354d = C0683l.m6966a(this.f5357h);
            }
            if (C0710v.m7097a()) {
                C0710v.m7093a(this.f5357h);
                return;
            }
            return;
        }
        if (C0708t.m7062b()) {
            this.f5358i.m6935a((Object) "NETWORK TYPE: network is close.");
        }
        m7123j();
    }

    public final void m7132h() {
        this.f5357h.getApplicationContext().registerReceiver(new ao(this), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }
}
