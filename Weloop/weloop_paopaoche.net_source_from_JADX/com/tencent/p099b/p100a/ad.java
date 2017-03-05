package com.tencent.p099b.p100a;

import android.content.Context;
import com.tencent.p099b.p100a.p101a.C0662d;
import com.tencent.p099b.p100a.p101a.C0668g;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;

/* renamed from: com.tencent.b.a.ad */
final class ad implements Runnable {
    private Context f5102a;
    private Map<String, Integer> f5103b;
    private C0711w f5104c;

    public ad(Context context) {
        this.f5102a = null;
        this.f5103b = null;
        this.f5104c = null;
        this.f5102a = context;
        this.f5104c = null;
    }

    private static C0707s m6885a(String str, int i) {
        Throwable th;
        C0707s c0707s = new C0707s();
        Socket socket = new Socket();
        int i2 = 0;
        try {
            c0707s.m7044a(str);
            c0707s.m7045b(i);
            long currentTimeMillis = System.currentTimeMillis();
            SocketAddress inetSocketAddress = new InetSocketAddress(str, i);
            socket.connect(inetSocketAddress, 30000);
            c0707s.m7043a(System.currentTimeMillis() - currentTimeMillis);
            c0707s.m7046b(inetSocketAddress.getAddress().getHostAddress());
            socket.close();
            try {
                socket.close();
            } catch (Throwable th2) {
                C0710v.f5341q.m6938b(th2);
            }
        } catch (Throwable e) {
            th2 = e;
            i2 = -1;
            C0710v.f5341q.m6938b(th2);
            socket.close();
        } catch (Throwable th22) {
            C0710v.f5341q.m6938b(th22);
        }
        c0707s.m7042a(i2);
        return c0707s;
    }

    private static Map<String, Integer> m6886a() {
        Map<String, Integer> hashMap = new HashMap();
        String a = C0708t.m7049a("__MTA_TEST_SPEED__");
        if (!(a == null || a.trim().length() == 0)) {
            for (String a2 : a2.split(";")) {
                String[] split = a2.split(",");
                if (split != null && split.length == 2) {
                    String str = split[0];
                    if (!(str == null || str.trim().length() == 0)) {
                        try {
                            hashMap.put(str, Integer.valueOf(Integer.valueOf(split[1]).intValue()));
                        } catch (Throwable e) {
                            C0710v.f5341q.m6938b(e);
                        }
                    }
                }
            }
        }
        return hashMap;
    }

    public final void run() {
        try {
            if (this.f5103b == null) {
                this.f5103b = ad.m6886a();
            }
            if (this.f5103b == null || this.f5103b.size() == 0) {
                C0710v.f5341q.m6935a((Object) "empty domain list.");
                return;
            }
            JSONArray jSONArray = new JSONArray();
            for (Entry entry : this.f5103b.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null || str.length() == 0) {
                    C0710v.f5341q.m6939c("empty domain name.");
                } else if (((Integer) entry.getValue()) == null) {
                    C0710v.f5341q.m6939c("port is null for " + str);
                } else {
                    jSONArray.put(ad.m6885a((String) entry.getKey(), ((Integer) entry.getValue()).intValue()).m7041a());
                }
            }
            if (jSONArray.length() != 0) {
                C0662d c0668g = new C0668g(this.f5102a, C0710v.m7089a(this.f5102a, false, this.f5104c), this.f5104c);
                c0668g.m6880a(jSONArray.toString());
                new ae(c0668g).m6892a();
            }
        } catch (Throwable th) {
            C0710v.f5341q.m6938b(th);
        }
    }
}
