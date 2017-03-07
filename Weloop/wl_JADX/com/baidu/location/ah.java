package com.baidu.location;

import android.util.Log;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

class ah extends Thread {
    final /* synthetic */ ac f3994a;

    ah(ac acVar) {
        this.f3994a = acVar;
    }

    public void run() {
        int i;
        HttpEntity httpEntity;
        boolean z;
        this.f3994a.cY = C0465K.m5642int();
        this.f3994a.m5573X();
        int i2 = this.f3994a.c9;
        this.f3994a.m5565d();
        if (ac.f3872Y == 1) {
            i = i2;
            httpEntity = null;
            z = true;
        } else {
            i = i2;
            httpEntity = null;
            z = false;
        }
        while (i > 0) {
            HttpPost httpPost;
            Object obj;
            try {
                httpPost = new HttpPost(this.f3994a.cY);
                try {
                    httpEntity = new StringEntity(this.f3994a.c3, "UTF-8");
                    httpPost.setHeader("Content-Type", "text/xml");
                    httpPost.setEntity(httpEntity);
                    HttpParams basicHttpParams = new BasicHttpParams();
                    HttpConnectionParams.setConnectionTimeout(basicHttpParams, C0452e.f3818M);
                    HttpConnectionParams.setSoTimeout(basicHttpParams, C0452e.f3818M);
                    HttpClient httpClient = ac.m5567if(basicHttpParams);
                    HttpProtocolParams.setUseExpectContinue(httpClient.getParams(), false);
                    if (z) {
                        httpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(ac.f3873Z, ac.aa, "http"));
                    }
                    z = !z;
                    HttpResponse execute = httpClient.execute(httpPost);
                    if (execute.getStatusLine().getStatusCode() == 200) {
                        this.f3994a.cZ = execute.getEntity();
                        this.f3994a.m5575do(true);
                        break;
                    }
                    httpPost.abort();
                    i--;
                    obj = httpPost;
                } catch (Exception e) {
                }
            } catch (Exception e2) {
                Object obj2 = httpEntity;
                httpPost.abort();
                Log.d(C0452e.f3849o, "NetworkCommunicationException!");
                i--;
                obj = httpPost;
            }
        }
        if (i <= 0) {
            ac.ad++;
            this.f3994a.cZ = null;
            this.f3994a.m5575do(false);
        } else {
            ac.ad = 0;
        }
        this.f3994a.f3874a = false;
    }
}
