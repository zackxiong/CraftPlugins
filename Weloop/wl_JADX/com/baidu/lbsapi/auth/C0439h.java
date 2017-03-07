package com.baidu.lbsapi.auth;

import com.baidu.lbsapi.auth.C0437f.C0436b;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* renamed from: com.baidu.lbsapi.auth.h */
class C0439h implements X509TrustManager {
    final /* synthetic */ C0437f f3748a;
    final /* synthetic */ C0436b f3749b;

    C0439h(C0436b c0436b, C0437f c0437f) {
        this.f3749b = c0436b;
        this.f3748a = c0437f;
    }

    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    public X509Certificate[] getAcceptedIssuers() {
        return null;
    }
}
