package org.acra.p165e;

import com.baidu.location.LocationClientOption;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;
import org.acra.ACRA;
import org.acra.sender.HttpSender.Method;
import org.acra.sender.HttpSender.Type;
import org.apache.http.HttpResponse;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;

/* renamed from: org.acra.e.c */
public final class ProGuard {
    private static /* synthetic */ int[] f9631g;
    private String f9632a;
    private String f9633b;
    private int f9634c;
    private int f9635d;
    private int f9636e;
    private Map<String, String> f9637f;

    /* renamed from: org.acra.e.c.a */
    private static class ProGuard implements HttpRequestRetryHandler {
        private final HttpParams f9629a;
        private final int f9630b;

        private ProGuard(HttpParams httpParams, int i) {
            this.f9629a = httpParams;
            this.f9630b = i;
        }

        public boolean retryRequest(IOException iOException, int i, HttpContext httpContext) {
            if (iOException instanceof SocketTimeoutException) {
                if (i <= this.f9630b) {
                    if (this.f9629a != null) {
                        int soTimeout = HttpConnectionParams.getSoTimeout(this.f9629a) * 2;
                        HttpConnectionParams.setSoTimeout(this.f9629a, soTimeout);
                        ACRA.log.m12146a(ACRA.LOG_TAG, "SocketTimeOut - increasing time out to " + soTimeout + " millis and trying again");
                    } else {
                        ACRA.log.m12146a(ACRA.LOG_TAG, "SocketTimeOut - no HttpParams, cannot increase time out. Trying again with current settings");
                    }
                    return true;
                }
                ACRA.log.m12146a(ACRA.LOG_TAG, "SocketTimeOut but exceeded max number of retries : " + this.f9630b);
            }
            return false;
        }
    }

    public ProGuard() {
        this.f9634c = LocationClientOption.MIN_SCAN_SPAN_NETWORK;
        this.f9635d = LocationClientOption.MIN_SCAN_SPAN_NETWORK;
        this.f9636e = 3;
    }

    static /* synthetic */ int[] m12158a() {
        int[] iArr = f9631g;
        if (iArr == null) {
            iArr = new int[Method.values().length];
            try {
                iArr[Method.POST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[Method.PUT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            f9631g = iArr;
        }
        return iArr;
    }

    public void m12164a(String str) {
        this.f9632a = str;
    }

    public void m12168b(String str) {
        this.f9633b = str;
    }

    public void m12163a(int i) {
        this.f9634c = i;
    }

    public void m12167b(int i) {
        this.f9635d = i;
    }

    public void m12166a(Map<String, String> map) {
        this.f9637f = map;
    }

    public void m12169c(int i) {
        this.f9636e = i;
    }

    public void m12165a(URL url, Method method, String str, Type type) {
        HttpClient b = m12160b();
        HttpUriRequest b2 = m12161b(url, method, str, type);
        ACRA.log.m12146a(ACRA.LOG_TAG, "Sending request to " + url);
        HttpResponse httpResponse = null;
        try {
            httpResponse = b.execute(b2, new BasicHttpContext());
            if (httpResponse != null) {
                if (httpResponse.getStatusLine() != null) {
                    String num = Integer.toString(httpResponse.getStatusLine().getStatusCode());
                    if (!(num.equals("409") || num.equals("403") || (!num.startsWith("4") && !num.startsWith("5")))) {
                        throw new IOException("Host returned error code " + num);
                    }
                }
                EntityUtils.toString(httpResponse.getEntity());
            }
            if (httpResponse != null) {
                httpResponse.getEntity().consumeContent();
            }
        } catch (Throwable th) {
            if (httpResponse != null) {
                httpResponse.getEntity().consumeContent();
            }
        }
    }

    private HttpClient m12160b() {
        HttpParams basicHttpParams = new BasicHttpParams();
        basicHttpParams.setParameter("http.protocol.cookie-policy", "rfc2109");
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, this.f9634c);
        HttpConnectionParams.setSoTimeout(basicHttpParams, this.f9635d);
        HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", new PlainSocketFactory(), 80));
        if (ACRA.getConfig().m12097N()) {
            schemeRegistry.register(new Scheme("https", new ProGuard(), 443));
        } else {
            schemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
        }
        HttpClient defaultHttpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        defaultHttpClient.setHttpRequestRetryHandler(new ProGuard(this.f9636e, null));
        return defaultHttpClient;
    }

    private UsernamePasswordCredentials m12162c() {
        if (this.f9632a == null && this.f9633b == null) {
            return null;
        }
        return new UsernamePasswordCredentials(this.f9632a, this.f9633b);
    }

    private HttpEntityEnclosingRequestBase m12161b(URL url, Method method, String str, Type type) {
        HttpEntityEnclosingRequestBase httpPost;
        switch (ProGuard.m12158a()[method.ordinal()]) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                httpPost = new HttpPost(url.toString());
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                httpPost = new HttpPut(url.toString());
                break;
            default:
                throw new UnsupportedOperationException("Unknown method: " + method.name());
        }
        Credentials c = m12162c();
        if (c != null) {
            httpPost.addHeader(BasicScheme.authenticate(c, "UTF-8", false));
        }
        httpPost.setHeader("User-Agent", "Android");
        httpPost.setHeader("Accept", "text/html,application/xml,application/json,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5");
        httpPost.setHeader("Content-Type", type.getContentType());
        if (this.f9637f != null) {
            for (String str2 : this.f9637f.keySet()) {
                httpPost.setHeader(str2, (String) this.f9637f.get(str2));
            }
        }
        httpPost.setEntity(new StringEntity(str, "UTF-8"));
        return httpPost;
    }

    public static String m12159b(Map<?, ?> map) {
        StringBuilder stringBuilder = new StringBuilder();
        for (Object next : map.keySet()) {
            if (stringBuilder.length() != 0) {
                stringBuilder.append('&');
            }
            Object obj = map.get(next);
            if (obj == null) {
                obj = "";
            }
            stringBuilder.append(URLEncoder.encode(next.toString(), "UTF-8"));
            stringBuilder.append('=');
            stringBuilder.append(URLEncoder.encode(obj.toString(), "UTF-8"));
        }
        return stringBuilder.toString();
    }
}
