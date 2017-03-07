package com.baidu.android.pushservice.message;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.C0383z;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.p070d.C0219b;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p079c.C0389c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.baidu.android.pushservice.message.h */
class C0322h implements Runnable {
    final /* synthetic */ Context f3384a;
    final /* synthetic */ String f3385b;
    final /* synthetic */ String f3386c;
    final /* synthetic */ String f3387d;
    final /* synthetic */ PublicMsg f3388e;

    C0322h(PublicMsg publicMsg, Context context, String str, String str2, String str3) {
        this.f3388e = publicMsg;
        this.f3384a = context;
        this.f3385b = str;
        this.f3386c = str2;
        this.f3387d = str3;
    }

    public void run() {
        C0389c c0389c = new C0389c(this.f3384a);
        try {
            HttpUriRequest httpPost = new HttpPost(C0383z.m5300c() + this.f3385b);
            httpPost.addHeader("Content-Type", "application/x-www-form-urlencoded");
            List<NameValuePair> arrayList = new ArrayList();
            C0219b.m4530a((List) arrayList);
            arrayList.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "linkhit"));
            arrayList.add(new BasicNameValuePair("channel_token", this.f3386c));
            arrayList.add(new BasicNameValuePair("data", this.f3387d));
            if (C0192a.m4341b()) {
                for (NameValuePair obj : arrayList) {
                    C0385a.m5311b("PublicMsg", "linkhit param -- " + obj.toString());
                }
            }
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
            HttpResponse execute = c0389c.execute(httpPost);
            if (execute.getStatusLine().getStatusCode() == 200) {
                if (C0192a.m4341b()) {
                    C0385a.m5308a("PublicMsg", "<<< public msg send result return OK!");
                }
            } else if (C0192a.m4341b()) {
                C0385a.m5313d("PublicMsg", "networkRegister request failed  " + execute.getStatusLine());
            }
            c0389c.m5322a();
        } catch (IOException e) {
            if (C0192a.m4341b()) {
                C0385a.m5313d("PublicMsg", e.getMessage());
                C0385a.m5313d("PublicMsg", "io exception do something ? ");
            }
            c0389c.m5322a();
        } catch (Exception e2) {
            if (C0192a.m4341b()) {
                C0385a.m5313d("PublicMsg", e2.getMessage());
            }
            c0389c.m5322a();
        } catch (Throwable th) {
            c0389c.m5322a();
        }
    }
}
