package cn.sharesdk.framework.network;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* renamed from: cn.sharesdk.framework.network.j */
public class C0039j extends SSLSocketFactory {
    SSLContext f1985a;

    public C0039j(KeyStore keyStore) {
        super(keyStore);
        this.f1985a = SSLContext.getInstance("TLS");
        C0040k c0040k = new C0040k(this);
        this.f1985a.init(null, new TrustManager[]{c0040k}, null);
    }

    public Socket createSocket() {
        return this.f1985a.getSocketFactory().createSocket();
    }

    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        return this.f1985a.getSocketFactory().createSocket(socket, str, i, z);
    }
}
