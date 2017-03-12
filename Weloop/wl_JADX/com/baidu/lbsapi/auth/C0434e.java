package com.baidu.lbsapi.auth;

import com.baidu.lbsapi.auth.C0432c.C0431b;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* renamed from: com.baidu.lbsapi.auth.e */
class C0434e implements X509TrustManager {
    final /* synthetic */ C0432c f3737a;
    final /* synthetic */ C0431b f3738b;

    C0434e(C0431b c0431b, C0432c c0432c) {
        this.f3738b = c0431b;
        this.f3737a = c0432c;
    }

    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    public X509Certificate[] getAcceptedIssuers() {
        return null;
    }
}
