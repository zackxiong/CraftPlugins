package com.baidu.location;

import com.baidu.location.ac.C0501a;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

class ai implements X509TrustManager {
    final /* synthetic */ C0501a f3995a;

    ai(C0501a c0501a) {
        this.f3995a = c0501a;
    }

    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    public X509Certificate[] getAcceptedIssuers() {
        return null;
    }
}
