package com.baidu.android.pushservice.richmedia;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.DefaultHttpRequestRetryHandler;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

/* renamed from: com.baidu.android.pushservice.richmedia.a */
public class C0333a {
    DefaultHttpClient f3433a;
    private C0344l f3434b;

    public C0333a() {
        this.f3434b = C0344l.m5135a(C0333a.class.getName());
        HttpParams basicHttpParams = new BasicHttpParams();
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basicHttpParams, "utf-8");
        HttpProtocolParams.setUseExpectContinue(basicHttpParams, false);
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, 15000);
        HttpConnectionParams.setSoTimeout(basicHttpParams, 15000);
        this.f3433a = new DefaultHttpClient(basicHttpParams);
        this.f3433a.setHttpRequestRetryHandler(new DefaultHttpRequestRetryHandler(3, false));
    }

    public HttpResponse m5118a(String str, String str2, Map<String, String> map, List<NameValuePair> list) {
        HttpUriRequest httpGet;
        if (str.equals("GET")) {
            httpGet = new HttpGet(str2);
        } else {
            HttpPost httpPost = new HttpPost(str2);
            if (list != null && list.size() > 0) {
                httpPost.setEntity(new UrlEncodedFormEntity(list, "utf-8"));
            }
            Object obj = httpPost;
        }
        this.f3434b.m5136b("url:" + str2);
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                httpGet.setHeader((String) entry.getKey(), (String) entry.getValue());
            }
        }
        return this.f3433a.execute(httpGet);
    }

    public void m5119a() {
        this.f3433a.getConnectionManager().shutdown();
    }
}
