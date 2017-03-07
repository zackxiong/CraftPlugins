package com.baidu.frontia.p075a.p079c;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import com.baidu.frontia.module.deeplink.GetApn;

/* renamed from: com.baidu.frontia.a.c.a */
public class C0386a {
    private static final String f3636a;
    private String f3637b;
    private String f3638c;
    private String f3639d;
    private boolean f3640e;
    private String f3641f;

    static {
        f3636a = C0386a.class.getSimpleName();
    }

    public C0386a(Context context) {
        m5316b(context);
    }

    private void m5314a(Context context, NetworkInfo networkInfo) {
        String toLowerCase;
        if (networkInfo.getExtraInfo() != null) {
            toLowerCase = networkInfo.getExtraInfo().toLowerCase();
            if (toLowerCase != null) {
                if (toLowerCase.startsWith("cmwap") || toLowerCase.startsWith("uniwap") || toLowerCase.startsWith("3gwap")) {
                    this.f3640e = true;
                    this.f3637b = toLowerCase;
                    this.f3638c = "10.0.0.172";
                    this.f3639d = "80";
                    return;
                } else if (toLowerCase.startsWith("ctwap")) {
                    this.f3640e = true;
                    this.f3637b = toLowerCase;
                    this.f3638c = "10.0.0.200";
                    this.f3639d = "80";
                    return;
                } else if (toLowerCase.startsWith("cmnet") || toLowerCase.startsWith("uninet") || toLowerCase.startsWith("ctnet") || toLowerCase.startsWith("3gnet")) {
                    this.f3640e = false;
                    this.f3637b = toLowerCase;
                    return;
                }
            }
        }
        toLowerCase = Proxy.getDefaultHost();
        int defaultPort = Proxy.getDefaultPort();
        if (toLowerCase == null || toLowerCase.length() <= 0) {
            this.f3640e = false;
            return;
        }
        this.f3638c = toLowerCase;
        if ("10.0.0.172".equals(this.f3638c.trim())) {
            this.f3640e = true;
            this.f3639d = "80";
        } else if ("10.0.0.200".equals(this.f3638c.trim())) {
            this.f3640e = true;
            this.f3639d = "80";
        } else {
            this.f3640e = false;
            this.f3639d = Integer.toString(defaultPort);
        }
    }

    public static boolean m5315a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null ? activeNetworkInfo.isConnectedOrConnecting() : false;
    }

    private void m5316b(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return;
        }
        if (GetApn.APN_TYPE_WIFI.equals(activeNetworkInfo.getTypeName().toLowerCase())) {
            this.f3641f = GetApn.APN_TYPE_WIFI;
            this.f3640e = false;
            return;
        }
        m5314a(context, activeNetworkInfo);
        this.f3641f = this.f3637b;
    }

    public boolean m5317a() {
        return this.f3640e;
    }

    public String m5318b() {
        return this.f3638c;
    }

    public String m5319c() {
        return this.f3639d;
    }
}
