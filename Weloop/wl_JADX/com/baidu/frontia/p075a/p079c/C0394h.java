package com.baidu.frontia.p075a.p079c;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* renamed from: com.baidu.frontia.a.c.h */
class C0394h extends SSLSocketFactory {
    private SSLContext f3648a;

    public C0394h(KeyStore keyStore) {
        super(keyStore);
        C0395i c0395i = new C0395i(this);
        this.f3648a = SSLContext.getInstance("TLS");
        this.f3648a.init(null, new TrustManager[]{c0395i}, null);
    }

    public Socket createSocket() {
        return this.f3648a.getSocketFactory().createSocket();
    }

    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        return this.f3648a.getSocketFactory().createSocket(socket, str, i, z);
    }
}
