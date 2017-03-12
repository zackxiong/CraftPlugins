package com.baidu.android.pushservice.util;

import com.baidu.android.pushservice.util.C0369a.C0368a;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* renamed from: com.baidu.android.pushservice.util.b */
class C0370b implements X509TrustManager {
    final /* synthetic */ C0368a f3600a;

    C0370b(C0368a c0368a) {
        this.f3600a = c0368a;
    }

    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    public X509Certificate[] getAcceptedIssuers() {
        return null;
    }
}
