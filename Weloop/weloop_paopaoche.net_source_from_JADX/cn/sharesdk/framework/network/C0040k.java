package cn.sharesdk.framework.network;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* renamed from: cn.sharesdk.framework.network.k */
class C0040k implements X509TrustManager {
    final /* synthetic */ C0039j f1986a;

    C0040k(C0039j c0039j) {
        this.f1986a = c0039j;
    }

    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    public X509Certificate[] getAcceptedIssuers() {
        return null;
    }
}
