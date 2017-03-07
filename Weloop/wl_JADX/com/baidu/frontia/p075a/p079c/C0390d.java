package com.baidu.frontia.p075a.p079c;

import java.security.KeyStore;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionManagerFactory;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpParams;

/* renamed from: com.baidu.frontia.a.c.d */
class C0390d implements ClientConnectionManagerFactory {
    final /* synthetic */ C0389c f3645a;

    C0390d(C0389c c0389c) {
        this.f3645a = c0389c;
    }

    public ClientConnectionManager newInstance(HttpParams httpParams, SchemeRegistry schemeRegistry) {
        SocketFactory c0394h;
        try {
            KeyStore instance = KeyStore.getInstance(KeyStore.getDefaultType());
            instance.load(null, null);
            c0394h = new C0394h(instance);
            c0394h.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
        } catch (Exception e) {
            c0394h = SSLSocketFactory.getSocketFactory();
        }
        schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeRegistry.register(new Scheme("https", c0394h, 443));
        return new ThreadSafeClientConnManager(httpParams, schemeRegistry);
    }
}
