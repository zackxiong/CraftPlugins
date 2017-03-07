package com.baidu.android.pushservice.p070d;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.C0383z;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.ad;
import com.baidu.android.pushservice.p069c.C0201b;
import com.baidu.android.pushservice.p069c.C0208h;
import com.baidu.android.pushservice.p072f.C0269c;
import com.baidu.android.pushservice.p072f.C0276j;
import com.baidu.android.pushservice.p072f.C0277k;
import com.baidu.android.pushservice.p072f.C0284t;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p079c.C0386a;
import com.baidu.frontia.p075a.p079c.C0389c;
import com.baidu.frontia.p075a.p080d.C0399b;
import com.baidu.mapapi.SDKInitializer;
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
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.d.a */
public abstract class C0214a implements Runnable {
    protected Context f2999a;
    protected C0226l f3000b;
    protected String f3001c;
    protected boolean f3002d;

    public C0214a(C0226l c0226l, Context context) {
        this.f3002d = true;
        this.f3000b = c0226l;
        this.f2999a = context.getApplicationContext();
        this.f3001c = C0383z.m5300c();
    }

    private void m4500a(String str, int i) {
        try {
            C0276j c0276j = new C0276j();
            c0276j.g = str;
            c0276j.h = System.currentTimeMillis();
            c0276j.i = C0399b.m5336d(this.f2999a);
            c0276j.j = i;
            C0284t.m4936b(this.f2999a, c0276j);
        } catch (Exception e) {
            if (C0192a.m4341b()) {
                C0385a.m5308a("AbstractProcessor", "insertHttpBehavior exception");
            }
        }
    }

    private int m4501b(int i) {
        String b;
        int i2 = 0;
        if (i > 0) {
            b = C0383z.m5297b(this.f2999a, i == 1);
            if (b == null) {
                return PushConstants.ERROR_SERVICE_NOT_AVAILABLE;
            }
            if (this.f3001c.startsWith("http://")) {
                this.f3001c = this.f3001c.replace("http://", "");
                int indexOf = this.f3001c.indexOf("/");
                if (indexOf > 0) {
                    this.f3001c = this.f3001c.substring(indexOf);
                }
                this.f3001c = "http://" + b + this.f3001c;
                if (C0192a.m4341b()) {
                    C0385a.m5311b("AbstractProcessor", " --- abstract request URL: " + this.f3001c);
                }
            }
        }
        C0389c c0389c = new C0389c(this.f2999a);
        try {
            HttpUriRequest httpPost = new HttpPost(this.f3001c);
            httpPost.addHeader("Content-Type", "application/x-www-form-urlencoded");
            httpPost.addHeader("Host", "api.tuisong.baidu.com");
            List arrayList = new ArrayList();
            m4509a(arrayList);
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
            HttpResponse execute = c0389c.execute(httpPost);
            if (execute.getStatusLine().getStatusCode() == 200) {
                b = EntityUtils.toString(execute.getEntity());
                if (C0192a.m4341b()) {
                    C0385a.m5308a("AbstractProcessor", "<<< networkRegister return string :  " + b);
                }
                m4506a(0, m4510b(b).getBytes());
            } else {
                C0385a.m5308a("AbstractProcessor", "networkRegister request failed  " + execute.getStatusLine());
                if (execute.getStatusLine().getStatusCode() == 503) {
                    i2 = 1;
                }
                String entityUtils = EntityUtils.toString(execute.getEntity());
                if (C0192a.m4341b()) {
                    C0385a.m5308a("AbstractProcessor", "<<< networkRegister return string :  " + entityUtils);
                }
                m4508a(entityUtils);
                i2 = execute.getStatusLine().getStatusCode();
            }
            c0389c.m5322a();
        } catch (IOException e) {
            if (C0192a.m4341b()) {
                C0385a.m5313d("AbstractProcessor", e.getMessage());
                C0385a.m5308a("AbstractProcessor", "io exception do something ? ");
            }
            if (i >= 2) {
                m4505a((int) PushConstants.ERROR_SERVICE_NOT_AVAILABLE);
            }
            c0389c.m5322a();
            i2 = PushConstants.ERROR_SERVICE_NOT_AVAILABLE;
        } catch (Exception e2) {
            if (C0192a.m4341b()) {
                C0385a.m5313d("AbstractProcessor", e2.getMessage());
            }
            if (null != null) {
                m4505a((int) PushConstants.ERROR_SERVICE_NOT_AVAILABLE_TEMP);
            } else {
                m4505a((int) PushConstants.ERROR_UNKNOWN);
            }
            i2 = -1;
            c0389c.m5322a();
        } catch (Throwable th) {
            c0389c.m5322a();
        }
        return i2;
    }

    private void m4502b(int i, byte[] bArr) {
        Intent intent = new Intent("com.baidu.android.pushservice.action.internal.RECEIVE");
        intent.putExtra(PushConstants.EXTRA_METHOD, this.f3000b.f3024a);
        intent.putExtra(PushConstants.EXTRA_ERROR_CODE, i);
        intent.putExtra(PushConstants.EXTRA_CONTENT, bArr);
        intent.putExtra("appid", this.f3000b.f3029f);
        intent.setFlags(32);
        m4507a(intent);
        if (C0192a.m4341b()) {
            C0385a.m5311b("AbstractProcessor", "> sendInternalMethodResult  ,method:" + this.f3000b.f3024a + " ,errorCode : " + i + " ,content : " + new String(bArr));
        }
        this.f2999a.sendBroadcast(intent);
    }

    private boolean m4503c(String str) {
        for (String equals : new String[]{PushConstants.METHOD_LAPP_BIND_INTENT, PushConstants.METHOD_LAPP_UNBIND, PushConstants.METHOD_SET_LAPP_TAGS, PushConstants.METHOD_DEL_LAPP_TAGS, PushConstants.METHOD_LIST_LAPP_TAGS}) {
            if (equals.equals(str)) {
                return true;
            }
        }
        return false;
    }

    protected void m4504a() {
        if (this.f3000b != null && !TextUtils.isEmpty(this.f3000b.f3024a)) {
            if (!this.f3000b.f3024a.equals("com.baidu.android.pushservice.action.UNBIND") && !this.f3000b.f3024a.equals(PushConstants.METHOD_WEBAPP_BIND_INTENT) && !this.f3000b.f3024a.equals(PushConstants.METHOD_LAPP_BIND_INTENT) && !this.f3000b.f3024a.equals(PushConstants.METHOD_SDK_UNBIND) && !this.f3000b.f3024a.equals(PushConstants.METHOD_LAPP_UNBIND) && !this.f3000b.f3024a.equals(PushConstants.METHOD_SET_LAPP_TAGS) && !this.f3000b.f3024a.equals(PushConstants.METHOD_DEL_LAPP_TAGS) && !this.f3000b.f3024a.equals(PushConstants.METHOD_LIST_LAPP_TAGS) && TextUtils.isEmpty(this.f3000b.f3028e)) {
                return;
            }
            if (C0386a.m5315a(this.f2999a)) {
                ad a = ad.m4377a();
                synchronized (a) {
                    if (this.f3002d && !a.m4384e()) {
                        a.m4378a(this.f2999a, false);
                        this.f3002d = false;
                        while (!a.m4381b()) {
                            try {
                                a.wait();
                            } catch (InterruptedException e) {
                                if (C0192a.m4341b()) {
                                    C0385a.m5313d("AbstractProcessor", e.getMessage());
                                }
                            }
                        }
                    }
                }
                if (ad.m4377a().m4384e()) {
                    boolean b = m4511b();
                    if (C0192a.m4341b()) {
                        C0385a.m5308a("AbstractProcessor", "netWorkConnect connectResult: " + b);
                        return;
                    }
                    return;
                }
                m4505a((int) PushConstants.ERROR_SERVICE_NOT_AVAILABLE);
                return;
            }
            if (C0192a.m4341b()) {
                C0385a.m5313d("AbstractProcessor", "Network is not useful!");
            }
            m4505a((int) PushConstants.ERROR_NETWORK_ERROR);
            C0374f.m5229l(this.f2999a);
            if (C0192a.m4341b()) {
                C0385a.m5308a("AbstractProcessor", "startPushService BaseApiProcess");
            }
        }
    }

    protected void m4505a(int i) {
        m4506a(i, PushConstants.getErrorMsg(i).getBytes());
    }

    protected void m4506a(int i, byte[] bArr) {
        if (TextUtils.isEmpty(this.f3000b.f3025b) || !this.f3000b.f3025b.equals("internal")) {
            Intent intent = new Intent();
            if (this.f3000b.f3024a.equals(PushConstants.METHOD_WEBAPP_BIND_INTENT)) {
                intent.setAction(PushConstants.ACTION_WEB_RECEIVE);
            } else if (this.f3000b.f3024a.equals(PushConstants.METHOD_LAPP_BIND_INTENT) || this.f3000b.f3024a.equals(PushConstants.METHOD_LAPP_UNBIND) || this.f3000b.f3024a.equals(PushConstants.METHOD_SET_LAPP_TAGS) || this.f3000b.f3024a.equals(PushConstants.METHOD_DEL_LAPP_TAGS) || this.f3000b.f3024a.equals(PushConstants.METHOD_LIST_LAPP_TAGS)) {
                intent.setAction(PushConstants.ACTION_LAPP_RECEIVE);
            } else if (this.f3000b.f3024a.equals(PushConstants.METHOD_SDK_BIND)) {
                intent.setAction(PushConstants.ACTION_SDK_RECEIVE);
            } else {
                intent.setAction(PushConstants.ACTION_RECEIVE);
            }
            intent.putExtra(PushConstants.EXTRA_METHOD, this.f3000b.f3024a);
            intent.putExtra(PushConstants.EXTRA_ERROR_CODE, i);
            intent.putExtra(PushConstants.EXTRA_CONTENT, bArr);
            intent.setFlags(32);
            m4507a(intent);
            Object obj = null;
            if (this.f3000b.f3024a.equals(PushConstants.METHOD_BIND)) {
                intent.putExtra(PushConstants.EXTRA_ACCESS_TOKEN, this.f3000b.f3027d);
                intent.putExtra(PushConstants.EXTRA_API_KEY, this.f3000b.f3032i);
                intent.putExtra(PushConstants.EXTRA_REAL_BIND, PushConstants.EXTRA_REAL_BIND);
                C0269c c0269c = new C0269c();
                c0269c.g = "020101";
                c0269c.h = System.currentTimeMillis();
                c0269c.i = C0399b.m5336d(this.f2999a);
                C0277k c0277k = new C0277k();
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    c0269c.f3203b = jSONObject.getString("request_id");
                    if (i != 0) {
                        c0269c.f3202a = jSONObject.getString(PushConstants.EXTRA_ERROR_CODE);
                    }
                    String string = jSONObject.getJSONObject("response_params").getString("appid");
                    C0208h b = C0201b.m4446a(this.f2999a).m4458b(string);
                    c0269c.k = string;
                    String string2 = jSONObject.getJSONObject("response_params").getString(PushConstants.EXTRA_USER_ID);
                    c0277k.m4840a(string);
                    c0277k.m4845c(C0374f.m5205c(string2));
                    c0277k.m4843b(string2);
                    if (b != null) {
                        c0277k.m4847d(b.m4444c());
                        c0277k = C0374f.m5177a(c0277k, this.f2999a, b.m4444c());
                    }
                } catch (JSONException e) {
                    obj = 1;
                    if (bArr != null) {
                        C0385a.m5308a("AbstractProcessor", "bind failed msg: " + new String(bArr));
                    } else {
                        C0385a.m5308a("AbstractProcessor", "bind failed");
                    }
                }
                c0269c.j = i;
                try {
                    C0284t.m4930a(this.f2999a, c0269c);
                    if (obj == null) {
                        C0284t.m4933a(this.f2999a, c0277k);
                    }
                } catch (Exception e2) {
                    C0385a.m5313d("AbstractProcessor", "error " + e2.getMessage());
                }
            } else if (bArr != null && (this.f3000b.f3024a.equals(PushConstants.METHOD_UNBIND) || this.f3000b.f3024a.equals("com.baidu.android.pushservice.action.UNBINDAPP"))) {
                C0269c c0269c2 = new C0269c();
                if (this.f3000b.f3024a.equals(PushConstants.METHOD_UNBIND)) {
                    c0269c2.g = "020301";
                } else {
                    c0269c2.g = "020601";
                }
                c0269c2.h = System.currentTimeMillis();
                c0269c2.i = C0399b.m5336d(this.f2999a);
                c0269c2.k = this.f3000b.f3029f;
                try {
                    c0269c2.f3203b = new JSONObject(new String(bArr)).getString("request_id");
                } catch (JSONException e3) {
                    C0385a.m5308a("AbstractProcessor", "unbind failed msg: " + new String(bArr));
                    c0269c2.f3202a = new String(bArr);
                }
                try {
                    C0284t.m4930a(this.f2999a, c0269c2);
                } catch (Exception e22) {
                    C0385a.m5313d("AbstractProcessor", "error " + e22.getMessage());
                }
            }
            if (!TextUtils.isEmpty(this.f3000b.f3028e) || m4503c(this.f3000b.f3024a)) {
                if (!m4503c(this.f3000b.f3024a)) {
                    intent.setPackage(this.f3000b.f3028e);
                }
                if (C0192a.m4341b()) {
                    C0385a.m5311b("AbstractProcessor", "> sendResult to " + this.f3000b.f3032i + " ,method:" + this.f3000b.f3024a + " ,errorCode : " + i + " ,content : " + new String(bArr));
                }
                this.f2999a.sendBroadcast(intent);
                return;
            }
            return;
        }
        m4502b(i, bArr);
    }

    protected void m4507a(Intent intent) {
    }

    protected void m4508a(String str) {
        if (str != null) {
            if (!str.startsWith("{\"")) {
                str = str.substring(str.indexOf("{\""));
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                int i = jSONObject.getInt(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE);
                String string = jSONObject.getString(PushConstants.EXTRA_ERROR_CODE);
                String string2 = jSONObject.getString("request_id");
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(PushConstants.EXTRA_ERROR_CODE, string);
                jSONObject2.put("request_id", string2);
                m4506a(i, jSONObject2.toString().getBytes());
            } catch (JSONException e) {
                C0385a.m5313d("AbstractProcessor", e.getMessage());
            }
        }
    }

    protected void m4509a(List<NameValuePair> list) {
        C0219b.m4530a((List) list);
        if (!TextUtils.isEmpty(this.f3000b.f3031h)) {
            list.add(new BasicNameValuePair("rsa_bduss", this.f3000b.f3031h));
            list.add(new BasicNameValuePair("appid", this.f3000b.f3029f));
        } else if (!TextUtils.isEmpty(this.f3000b.f3027d)) {
            list.add(new BasicNameValuePair("rsa_access_token", this.f3000b.f3027d));
        } else if (!TextUtils.isEmpty(this.f3000b.f3032i)) {
            list.add(new BasicNameValuePair("apikey", this.f3000b.f3032i));
        }
    }

    protected String m4510b(String str) {
        return str;
    }

    public boolean m4511b() {
        boolean z = false;
        if (!TextUtils.isEmpty(this.f3001c)) {
            if (C0192a.m4341b()) {
                C0385a.m5311b("AbstractProcessor", "Request Url = " + this.f3001c);
            }
            int i = 0;
            while (i <= 2) {
                int b = m4501b(i);
                if (b != 0) {
                    if (b != PushConstants.ERROR_SERVICE_NOT_AVAILABLE) {
                        break;
                    }
                    if (i > 0) {
                        m4500a("030403", b);
                    } else {
                        m4500a("030401", b);
                    }
                    i++;
                } else {
                    z = true;
                    if (i > 0) {
                        m4500a("030402", b);
                    }
                }
            }
        } else if (C0192a.m4341b()) {
            C0385a.m5313d("AbstractProcessor", "mUrl is null");
        }
        return z;
    }

    public void run() {
        m4504a();
    }
}
