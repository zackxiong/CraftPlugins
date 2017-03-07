package com.baidu.location;

import android.util.Log;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpProtocolParams;

class ad extends Thread {
    final /* synthetic */ ac f3990a;

    ad(ac acVar) {
        this.f3990a = acVar;
    }

    public void run() {
        int i;
        boolean z;
        this.f3990a.cY = C0465K.m5635for();
        this.f3990a.m5573X();
        int i2 = this.f3990a.c9;
        this.f3990a.m5565d();
        if (ac.f3872Y == 1) {
            i = i2;
            z = true;
        } else {
            i = i2;
            z = false;
        }
        while (i > 0) {
            try {
                Object httpGet = new HttpGet(this.f3990a.cY);
                httpGet.setHeader("Content-Type", "application/x-www-form-urlencoded; charset=utf-8");
                httpGet.setHeader("Accept-Charset", "UTF-8;");
                HttpClient defaultHttpClient = new DefaultHttpClient();
                defaultHttpClient.getParams().setParameter("http.connection.timeout", Integer.valueOf(C0452e.f3818M));
                defaultHttpClient.getParams().setParameter("http.socket.timeout", Integer.valueOf(C0452e.f3818M));
                HttpProtocolParams.setUseExpectContinue(defaultHttpClient.getParams(), false);
                if (z) {
                    defaultHttpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(ac.f3873Z, ac.aa, "http"));
                }
                z = !z;
                HttpResponse execute = defaultHttpClient.execute(httpGet);
                if (execute.getStatusLine().getStatusCode() == 200) {
                    this.f3990a.cZ = execute.getEntity();
                    this.f3990a.m5575do(true);
                    break;
                }
                httpGet.abort();
                i--;
            } catch (Exception e) {
                Log.d(C0452e.f3849o, "NetworkCommunicationException!");
            }
        }
        if (i <= 0) {
            ac.ad++;
            this.f3990a.cZ = null;
            this.f3990a.m5575do(false);
        } else {
            ac.ad = 0;
        }
        this.f3990a.f3874a = false;
    }
}
