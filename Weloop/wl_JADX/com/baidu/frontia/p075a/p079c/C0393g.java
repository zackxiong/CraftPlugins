package com.baidu.frontia.p075a.p079c;

import android.util.Log;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpRequestBase;

/* renamed from: com.baidu.frontia.a.c.g */
public class C0393g {
    public static HttpResponse m5323a(HttpRequestBase httpRequestBase) {
        HttpResponse httpResponse = null;
        if (httpRequestBase != null) {
            C0389c c0389c = new C0389c();
            int i = 0;
            while (httpResponse == null && i < 6) {
                HttpResponse execute;
                try {
                    execute = c0389c.execute(httpRequestBase);
                } catch (Exception e) {
                    Log.e("HttpRequest", "error " + e.getMessage());
                    execute = httpResponse;
                }
                if (execute == null) {
                    try {
                        Thread.sleep(1000);
                    } catch (InterruptedException e2) {
                    }
                }
                i++;
                httpResponse = execute;
            }
        }
        return httpResponse;
    }
}
