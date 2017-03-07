package com.baidu.frontia.module.deeplink;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;

/* renamed from: com.baidu.frontia.module.deeplink.c */
public class C0417c {
    private static final String f3699a;
    private String f3700b;
    private String f3701c;
    private String f3702d;
    private boolean f3703e;
    private String f3704f;

    static {
        f3699a = C0417c.class.getSimpleName();
    }

    public C0417c(Context context) {
        m5413a(context);
    }

    private void m5413a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return;
        }
        if (GetApn.APN_TYPE_WIFI.equals(activeNetworkInfo.getTypeName().toLowerCase())) {
            this.f3704f = GetApn.APN_TYPE_WIFI;
            this.f3703e = false;
            return;
        }
        m5414a(context, activeNetworkInfo);
        this.f3704f = this.f3700b;
    }

    private void m5414a(Context context, NetworkInfo networkInfo) {
        String toLowerCase;
        if (networkInfo.getExtraInfo() != null) {
            toLowerCase = networkInfo.getExtraInfo().toLowerCase();
            if (toLowerCase != null) {
                if (toLowerCase.startsWith("cmwap") || toLowerCase.startsWith("uniwap") || toLowerCase.startsWith("3gwap")) {
                    this.f3703e = true;
                    this.f3700b = toLowerCase;
                    this.f3701c = "10.0.0.172";
                    this.f3702d = "80";
                    return;
                } else if (toLowerCase.startsWith("ctwap")) {
                    this.f3703e = true;
                    this.f3700b = toLowerCase;
                    this.f3701c = "10.0.0.200";
                    this.f3702d = "80";
                    return;
                } else if (toLowerCase.startsWith("cmnet") || toLowerCase.startsWith("uninet") || toLowerCase.startsWith("ctnet") || toLowerCase.startsWith("3gnet")) {
                    this.f3703e = false;
                    this.f3700b = toLowerCase;
                    return;
                }
            }
        }
        toLowerCase = Proxy.getDefaultHost();
        int defaultPort = Proxy.getDefaultPort();
        if (toLowerCase == null || toLowerCase.length() <= 0) {
            this.f3703e = false;
            return;
        }
        this.f3701c = toLowerCase;
        if ("10.0.0.172".equals(this.f3701c.trim())) {
            this.f3703e = true;
            this.f3702d = "80";
        } else if ("10.0.0.200".equals(this.f3701c.trim())) {
            this.f3703e = true;
            this.f3702d = "80";
        } else {
            this.f3703e = false;
            this.f3702d = Integer.toString(defaultPort);
        }
    }

    public String m5415a() {
        return this.f3700b;
    }
}
