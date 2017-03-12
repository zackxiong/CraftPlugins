package com.baidu.frontia.p075a.p079c;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

/* renamed from: com.baidu.frontia.a.c.c */
public class C0389c extends DefaultHttpClient {
    private boolean f3643a;
    private RuntimeException f3644b;

    /* renamed from: com.baidu.frontia.a.c.c.a */
    private static class C0388a extends HttpEntityWrapper {
        public C0388a(HttpEntity httpEntity) {
            super(httpEntity);
        }

        public InputStream getContent() {
            return new GZIPInputStream(this.wrappedEntity.getContent());
        }

        public long getContentLength() {
            return -1;
        }
    }

    public C0389c() {
        this(null, null, null);
    }

    public C0389c(Context context) {
        this(context, null, null);
    }

    public C0389c(Context context, String str, C0386a c0386a) {
        Object obj;
        Object obj2 = null;
        this.f3643a = false;
        this.f3644b = new IllegalStateException("ProxyHttpClient created and never closed");
        HttpParams params = getParams();
        HttpConnectionParams.setConnectionTimeout(params, 30000);
        HttpConnectionParams.setSoTimeout(params, 30000);
        HttpConnectionParams.setSocketBufferSize(params, 8192);
        if (context == null && c0386a == null) {
            obj = null;
        } else {
            if (c0386a == null && context != null) {
                c0386a = new C0386a(context);
            }
            if (c0386a != null) {
                this.f3643a = c0386a.m5317a();
                obj = c0386a.m5318b();
                obj2 = c0386a.m5319c();
            } else {
                obj = null;
            }
        }
        if (!(TextUtils.isEmpty(obj) || TextUtils.isEmpty(obj2))) {
            try {
                params.setParameter("http.route.default-proxy", new HttpHost(obj, Integer.valueOf(obj2).intValue()));
            } catch (NumberFormatException e) {
                Log.e("FrontiaHttpClient", " ex " + e.getMessage());
            }
        }
        if (TextUtils.isEmpty(str)) {
            HttpProtocolParams.setUserAgent(params, "Baidu-Frontia-Android");
        } else {
            HttpProtocolParams.setUserAgent(getParams(), str);
        }
        ConnManagerParams.setTimeout(params, 30000);
        ConnManagerParams.setMaxConnectionsPerRoute(params, new ConnPerRouteBean(10));
        ConnManagerParams.setMaxTotalConnections(params, 10);
        HttpConnectionParams.setTcpNoDelay(params, true);
        HttpClientParams.setCookiePolicy(params, "compatibility");
        params.setParameter("http.connection-manager.factory-object", new C0390d(this));
        addRequestInterceptor(new C0391e(this));
        addResponseInterceptor(new C0392f(this));
    }

    public void m5322a() {
        if (this.f3644b != null) {
            getConnectionManager().shutdown();
            this.f3644b = null;
        }
    }

    protected HttpParams createHttpParams() {
        HttpParams createHttpParams = super.createHttpParams();
        HttpProtocolParams.setUseExpectContinue(createHttpParams, false);
        return createHttpParams;
    }
}
