package com.baidu.android.pushservice.p070d;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.C0383z;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p079c.C0386a;
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
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.d.o */
public class C0229o {
    protected String f3038a;
    protected Context f3039b;

    public C0229o(Context context) {
        this.f3039b = context;
        this.f3038a = C0383z.f3620g;
    }

    public ArrayList<Integer> m4542a() {
        if (C0386a.m5315a(this.f3039b)) {
            return m4545b();
        }
        if (C0192a.m4341b()) {
            C0385a.m5313d("FetchLocalServerPort", "Network is not useful!");
        }
        return new ArrayList();
    }

    protected ArrayList<Integer> m4543a(String str) {
        ArrayList<Integer> arrayList = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("response_params")) {
                jSONObject = jSONObject.getJSONObject("response_params");
                if (jSONObject.has("port")) {
                    JSONArray jSONArray = jSONObject.getJSONArray("port");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.add(Integer.valueOf(jSONArray.getInt(i)));
                    }
                }
            }
        } catch (Exception e) {
            C0385a.m5313d("FetchLocalServerPort", "error " + e.getMessage());
        }
        return arrayList;
    }

    protected void m4544a(List<NameValuePair> list) {
        C0219b.m4530a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "fetch_localserver_port"));
    }

    protected ArrayList<Integer> m4545b() {
        if (TextUtils.isEmpty(this.f3038a)) {
            if (C0192a.m4341b()) {
                C0385a.m5313d("FetchLocalServerPort", "mUrl is null");
            }
            return new ArrayList();
        }
        if (C0192a.m4341b()) {
            C0385a.m5311b("FetchLocalServerPort", "Request Url = " + this.f3038a);
        }
        C0389c c0389c = new C0389c(this.f3039b);
        try {
            HttpUriRequest httpPost = new HttpPost(this.f3038a);
            httpPost.addHeader("Content-Type", "application/x-www-form-urlencoded");
            List arrayList = new ArrayList();
            m4544a(arrayList);
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
            HttpResponse execute = c0389c.execute(httpPost);
            if (execute.getStatusLine().getStatusCode() == 200) {
                String entityUtils = EntityUtils.toString(execute.getEntity());
                if (C0192a.m4341b()) {
                    C0385a.m5308a("FetchLocalServerPort", "<<< networkRegister return string :  " + entityUtils);
                }
                ArrayList<Integer> a = m4543a(entityUtils);
                c0389c.m5322a();
                return a;
            }
            if (C0192a.m4341b()) {
                C0385a.m5308a("FetchLocalServerPort", "network request failed  " + execute.getStatusLine());
                C0385a.m5308a("FetchLocalServerPort", "<<< networkRegister return string :  " + EntityUtils.toString(execute.getEntity()));
            }
            c0389c.m5322a();
            return new ArrayList();
        } catch (IOException e) {
            if (C0192a.m4341b()) {
                C0385a.m5313d("FetchLocalServerPort", e.getMessage());
                C0385a.m5308a("FetchLocalServerPort", "io exception do something ? ");
            }
            c0389c.m5322a();
        } catch (Exception e2) {
            if (C0192a.m4341b()) {
                C0385a.m5313d("FetchLocalServerPort", e2.getMessage());
            }
            c0389c.m5322a();
        } catch (Throwable th) {
            c0389c.m5322a();
        }
    }
}
