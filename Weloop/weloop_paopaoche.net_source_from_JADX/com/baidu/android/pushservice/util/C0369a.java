package com.baidu.android.pushservice.util;

import android.util.Log;
import com.baidu.location.LocationClientOption;
import java.net.Socket;
import java.net.SocketException;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.security.KeyStore;
import java.util.Iterator;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.util.a */
public class C0369a {
    private static HttpClient f3599a;

    /* renamed from: com.baidu.android.pushservice.util.a.a */
    public static class C0368a extends SSLSocketFactory {
        final SSLContext f3598a;

        public C0368a(KeyStore keyStore) {
            super(keyStore);
            this.f3598a = SSLContext.getInstance("TLS");
            C0370b c0370b = new C0370b(this);
            this.f3598a.init(null, new TrustManager[]{c0370b}, null);
        }

        public Socket createSocket() {
            return this.f3598a.getSocketFactory().createSocket();
        }

        public Socket createSocket(Socket socket, String str, int i, boolean z) {
            return this.f3598a.getSocketFactory().createSocket(socket, str, i, z);
        }
    }

    static {
        f3599a = null;
    }

    public static synchronized String m5147a(String str, JSONObject jSONObject) {
        String str2;
        synchronized (C0369a.class) {
            String str3 = "";
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                str2 = (String) keys.next();
                try {
                    String string = jSONObject.getString(str2);
                    str2 = str3.length() == 0 ? str2 + "=" + URLEncoder.encode(string) : str3 + "&" + str2 + "=" + URLEncoder.encode(string);
                } catch (JSONException e) {
                    str2 = str3;
                }
                str3 = str2;
            }
            HttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, LocationClientOption.MIN_SCAN_SPAN_NETWORK);
            HttpConnectionParams.setSoTimeout(basicHttpParams, LocationClientOption.MIN_SCAN_SPAN_NETWORK);
            HttpClient a = C0369a.m5148a(basicHttpParams);
            HttpUriRequest httpPost = new HttpPost(str);
            httpPost.addHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
            httpPost.addHeader("Accept", "application/json");
            httpPost.setEntity(new StringEntity(str3, "UTF-8"));
            httpPost.setParams(basicHttpParams);
            HttpResponse httpResponse = null;
            try {
                httpResponse = a.execute(httpPost);
            } catch (UnknownHostException e2) {
                throw new Exception("Unable to access " + e2.getLocalizedMessage());
            } catch (SocketException e3) {
                Log.e("HttpsUtil", "error " + e3.getMessage());
            }
            int statusCode = httpResponse.getStatusLine().getStatusCode();
            if (statusCode == 200) {
                str2 = EntityUtils.toString(httpResponse.getEntity());
            } else {
                throw new Exception("StatusCode is " + statusCode);
            }
        }
        return str2;
    }

    public static synchronized HttpClient m5148a(HttpParams httpParams) {
        HttpClient defaultHttpClient;
        synchronized (C0369a.class) {
            if (f3599a == null) {
                try {
                    KeyStore instance = KeyStore.getInstance(KeyStore.getDefaultType());
                    instance.load(null, null);
                    SocketFactory c0368a = new C0368a(instance);
                    c0368a.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
                    HttpProtocolParams.setVersion(httpParams, HttpVersion.HTTP_1_1);
                    HttpProtocolParams.setContentCharset(httpParams, "UTF-8");
                    SchemeRegistry schemeRegistry = new SchemeRegistry();
                    schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
                    schemeRegistry.register(new Scheme("https", c0368a, 443));
                    defaultHttpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(httpParams, schemeRegistry), httpParams);
                } catch (Exception e) {
                    Log.e("HttpsUtil", "error " + e.getMessage());
                    defaultHttpClient = new DefaultHttpClient(httpParams);
                }
            } else {
                defaultHttpClient = f3599a;
            }
        }
        return defaultHttpClient;
    }
}
