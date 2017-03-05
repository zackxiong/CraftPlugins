package com.baidu.location;

import android.util.Log;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpProtocolParams;

class ae extends Thread {
    final /* synthetic */ ac f3991a;

    ae(ac acVar) {
        this.f3991a = acVar;
    }

    public void run() {
        int i;
        HttpEntity httpEntity;
        boolean z;
        HttpPost httpPost;
        Object obj;
        this.f3991a.cY = C0465K.m5635for();
        this.f3991a.m5573X();
        int i2 = this.f3991a.c9;
        this.f3991a.m5565d();
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
            try {
                httpPost = new HttpPost(this.f3991a.cY);
                try {
                    httpEntity = new UrlEncodedFormEntity(this.f3991a.c0, "utf-8");
                    httpPost.setHeader("Content-Type", "application/x-www-form-urlencoded; charset=utf-8");
                    httpPost.setHeader("Accept-Charset", "UTF-8;");
                    httpPost.setEntity(httpEntity);
                    HttpClient defaultHttpClient = new DefaultHttpClient();
                    defaultHttpClient.getParams().setParameter("http.connection.timeout", Integer.valueOf(C0452e.f3818M));
                    defaultHttpClient.getParams().setParameter("http.socket.timeout", Integer.valueOf(C0452e.f3818M));
                    HttpProtocolParams.setUseExpectContinue(defaultHttpClient.getParams(), false);
                    if (z) {
                        defaultHttpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(ac.f3873Z, ac.aa, "http"));
                    }
                    z = !z;
                    HttpResponse execute = defaultHttpClient.execute(httpPost);
                    if (execute.getStatusLine().getStatusCode() == 200) {
                        this.f3991a.cZ = execute.getEntity();
                        this.f3991a.m5575do(true);
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
            this.f3991a.cZ = null;
            this.f3991a.m5575do(false);
        } else {
            ac.ad = 0;
        }
        this.f3991a.f3874a = false;
    }
}
