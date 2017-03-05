package com.baidu.location;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import java.net.Socket;
import java.security.KeyStore;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.HttpEntity;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

abstract class ac implements C0452e {
    private static int f3872Y;
    private static String f3873Z;
    private static int aa;
    protected static int ad;
    private boolean f3874a;
    public List c0;
    public String c3;
    public byte[] c4;
    public String c5;
    public int c9;
    public String cY;
    public HttpEntity cZ;

    /* renamed from: com.baidu.location.ac.a */
    public static class C0501a extends SSLSocketFactory {
        final SSLContext f3989a;

        public C0501a(KeyStore keyStore) {
            super(keyStore);
            this.f3989a = SSLContext.getInstance("TLS");
            ai aiVar = new ai(this);
            this.f3989a.init(null, new TrustManager[]{aiVar}, null);
        }

        public Socket createSocket() {
            return this.f3989a.getSocketFactory().createSocket();
        }

        public Socket createSocket(Socket socket, String str, int i, boolean z) {
            return this.f3989a.getSocketFactory().createSocket(socket, str, i, z);
        }
    }

    static {
        f3872Y = 4;
        f3873Z = "10.0.0.172";
        aa = 80;
        ad = 0;
    }

    ac() {
        this.f3874a = false;
        this.cY = null;
        this.c9 = 3;
        this.cZ = null;
        this.c0 = null;
        this.c5 = null;
        this.c4 = null;
        this.c3 = null;
    }

    private static int m5560a(Context context, NetworkInfo networkInfo) {
        String toLowerCase;
        if (!(networkInfo == null || networkInfo.getExtraInfo() == null)) {
            toLowerCase = networkInfo.getExtraInfo().toLowerCase();
            if (toLowerCase != null) {
                String defaultHost;
                if (toLowerCase.startsWith("cmwap") || toLowerCase.startsWith("uniwap") || toLowerCase.startsWith("3gwap")) {
                    defaultHost = Proxy.getDefaultHost();
                    if (defaultHost == null || defaultHost.equals("") || defaultHost.equals("null")) {
                        defaultHost = "10.0.0.172";
                    }
                    f3873Z = defaultHost;
                    return 1;
                } else if (toLowerCase.startsWith("ctwap")) {
                    defaultHost = Proxy.getDefaultHost();
                    if (defaultHost == null || defaultHost.equals("") || defaultHost.equals("null")) {
                        defaultHost = "10.0.0.200";
                    }
                    f3873Z = defaultHost;
                    return 1;
                } else if (toLowerCase.startsWith("cmnet") || toLowerCase.startsWith("uninet") || toLowerCase.startsWith("ctnet") || toLowerCase.startsWith("3gnet")) {
                    return 2;
                }
            }
        }
        toLowerCase = Proxy.getDefaultHost();
        if (toLowerCase == null || toLowerCase.length() <= 0) {
            return 2;
        }
        if ("10.0.0.172".equals(toLowerCase.trim())) {
            f3873Z = "10.0.0.172";
            return 1;
        } else if (!"10.0.0.200".equals(toLowerCase.trim())) {
            return 2;
        } else {
            f3873Z = "10.0.0.200";
            return 1;
        }
    }

    private void m5565d() {
        f3872Y = m5566e();
    }

    private int m5566e() {
        Context serviceContext = C0513f.getServiceContext();
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) serviceContext.getSystemService("connectivity");
            if (connectivityManager == null) {
                return 4;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            return (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) ? 4 : activeNetworkInfo.getType() == 1 ? 3 : m5560a(serviceContext, activeNetworkInfo);
        } catch (Exception e) {
            return 4;
        }
    }

    public static HttpClient m5567if(HttpParams httpParams) {
        try {
            KeyStore instance = KeyStore.getInstance(KeyStore.getDefaultType());
            instance.load(null, null);
            SocketFactory c0501a = new C0501a(instance);
            c0501a.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            HttpProtocolParams.setVersion(httpParams, HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(httpParams, "UTF-8");
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", c0501a, 443));
            return new DefaultHttpClient(new ThreadSafeClientConnManager(httpParams, schemeRegistry), httpParams);
        } catch (Exception e) {
            return new DefaultHttpClient(httpParams);
        }
    }

    public static boolean m5568if(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            return connectivityManager.getActiveNetworkInfo() != null ? connectivityManager.getActiveNetworkInfo().isAvailable() : false;
        } catch (Exception e) {
            return false;
        }
    }

    public void m5569P() {
        new ag(this).start();
    }

    public void m5570R() {
        new ae(this).start();
    }

    public void m5571U() {
        new ad(this).start();
    }

    public void m5572V() {
        new af(this).start();
    }

    abstract void m5573X();

    public void m5574Y() {
        new ah(this).start();
    }

    abstract void m5575do(boolean z);
}
