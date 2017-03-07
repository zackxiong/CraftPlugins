package com.baidu.location;

import android.util.Log;
import java.io.File;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.FileEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpProtocolParams;

class af extends Thread {
    final /* synthetic */ ac f3992a;

    af(ac acVar) {
        this.f3992a = acVar;
    }

    public void run() {
        HttpPost httpPost;
        Object obj;
        this.f3992a.cY = C0465K.m5635for();
        this.f3992a.m5573X();
        int i = this.f3992a.c9;
        this.f3992a.m5565d();
        int i2 = i;
        HttpEntity httpEntity = null;
        while (i2 > 0) {
            try {
                httpPost = new HttpPost(this.f3992a.cY);
                try {
                    httpEntity = new FileEntity(new File(this.f3992a.c5), "binary/octet-stream");
                    httpPost.setHeader("Content-Type", "application/octet-stream");
                    httpPost.setHeader("Accept-Charset", "UTF-8;");
                    httpPost.setEntity(httpEntity);
                    HttpClient defaultHttpClient = new DefaultHttpClient();
                    defaultHttpClient.getParams().setParameter("http.connection.timeout", Integer.valueOf(C0452e.f3818M));
                    defaultHttpClient.getParams().setParameter("http.socket.timeout", Integer.valueOf(C0452e.f3818M));
                    HttpProtocolParams.setUseExpectContinue(defaultHttpClient.getParams(), false);
                    if ((ac.f3872Y == 1 || ac.f3872Y == 4) && (this.f3992a.c9 - i2) % 2 == 0) {
                        defaultHttpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(ac.f3873Z, ac.aa, "http"));
                    }
                    HttpResponse execute = defaultHttpClient.execute(httpPost);
                    if (execute.getStatusLine().getStatusCode() == 200) {
                        this.f3992a.cZ = execute.getEntity();
                        this.f3992a.m5575do(true);
                        break;
                    }
                    httpPost.abort();
                    i2--;
                    obj = httpPost;
                } catch (Exception e) {
                }
            } catch (Exception e2) {
                Object obj2 = httpEntity;
                httpPost.abort();
                Log.d(C0452e.f3849o, "NetworkCommunicationException!");
                i2--;
                obj = httpPost;
            }
        }
        if (i2 <= 0) {
            ac.ad++;
            this.f3992a.cZ = null;
            this.f3992a.m5575do(false);
        } else {
            ac.ad = 0;
        }
        this.f3992a.f3874a = false;
    }
}
