package com.baidu.android.pushservice.p070d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.C0383z;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.PushSDK;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p079c.C0389c;
import com.baidu.frontia.p075a.p081e.C0401b;
import com.baidu.frontia.p075a.p081e.C0404d;
import com.baidu.frontia.p075a.p081e.C0406f;
import com.baidu.location.LocationClientOption;
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
import org.json.JSONObject;

@SuppressLint({"WorldReadableFiles"})
/* renamed from: com.baidu.android.pushservice.d.ad */
public class ad implements Runnable {
    private Context f3011a;
    private int f3012b;
    private int f3013c;
    private boolean f3014d;
    private boolean f3015e;

    public ad(Context context) {
        this.f3012b = 5;
        this.f3013c = 0;
        this.f3014d = false;
        this.f3015e = true;
        this.f3011a = context.getApplicationContext();
    }

    private boolean m4521b() {
        boolean z;
        Throwable e;
        Object e2;
        String str = C0383z.f3620g;
        if (this.f3013c > 2) {
            Object b = C0383z.m5297b(this.f3011a, this.f3015e);
            if (C0192a.m4341b()) {
                C0385a.m5311b("TokenRequester", " --- token request use httpIp: " + b);
            }
            this.f3015e = false;
            if (!TextUtils.isEmpty(b)) {
                str = str.replace(C0383z.m5291a(), "http://" + b);
            }
        }
        if (C0192a.m4341b()) {
            C0385a.m5311b("TokenRequester", ">>> token request:" + str);
        }
        C0389c c0389c = new C0389c(this.f3011a);
        try {
            HttpUriRequest httpPost = new HttpPost(str);
            httpPost.addHeader("Content-Type", "application/x-www-form-urlencoded");
            if (C0383z.m5291a().startsWith("http://")) {
                httpPost.addHeader("Host", C0383z.m5291a().replace("http://", ""));
            }
            httpPost.setEntity(new UrlEncodedFormEntity(m4522c(), "UTF-8"));
            HttpResponse execute = c0389c.execute(httpPost);
            if (execute.getStatusLine().getStatusCode() == 200) {
                str = EntityUtils.toString(execute.getEntity());
                if (C0192a.m4341b()) {
                    C0385a.m5308a("TokenRequester", "<<< RequestToken return string :  " + str);
                }
                JSONObject jSONObject = new JSONObject(str).getJSONObject("response_params");
                if (jSONObject != null) {
                    str = jSONObject.getString("channel_id");
                    String string = jSONObject.getString("rsa_channel_token");
                    String string2 = jSONObject.getString("expires_time");
                    if (C0192a.m4341b()) {
                        C0385a.m5308a("TokenRequester", "RequestToken channelId :  " + str);
                        C0385a.m5308a("TokenRequester", "RequestToken rsaChannelToken :  " + string);
                        C0385a.m5308a("TokenRequester", "RequestToken expiresTime :  " + string2);
                    }
                    com.baidu.android.pushservice.ad.m4377a().m4379a(str, string);
                    z = true;
                } else {
                    if (C0192a.m4341b()) {
                        C0385a.m5308a("TokenRequester", "RequestToken failed :  " + str);
                    }
                    z = false;
                }
            } else {
                if (C0192a.m4341b()) {
                    C0385a.m5308a("TokenRequester", "RequestToken request failed  " + execute.getStatusLine());
                    C0385a.m5308a("TokenRequester", "<<< RequestToken return string :  " + EntityUtils.toString(execute.getEntity()));
                }
                z = false;
            }
            try {
                this.f3013c = 0;
                this.f3014d = false;
                c0389c.m5322a();
            } catch (IOException e3) {
                e = e3;
                try {
                    if (C0192a.m4341b()) {
                        C0385a.m5310a("TokenRequester", e);
                        C0385a.m5308a("TokenRequester", "io exception, schedule retry");
                    }
                    this.f3014d = true;
                    return z;
                } finally {
                    c0389c.m5322a();
                }
            } catch (Exception e4) {
                e2 = e4;
                if (C0192a.m4341b()) {
                    C0385a.m5313d("TokenRequester", "Connect Exception:" + e2);
                }
                this.f3014d = false;
                c0389c.m5322a();
                return z;
            }
        } catch (Throwable e5) {
            e = e5;
            z = false;
            if (C0192a.m4341b()) {
                C0385a.m5310a("TokenRequester", e);
                C0385a.m5308a("TokenRequester", "io exception, schedule retry");
            }
            this.f3014d = true;
            return z;
        } catch (Exception e6) {
            e2 = e6;
            z = false;
            if (C0192a.m4341b()) {
                C0385a.m5313d("TokenRequester", "Connect Exception:" + e2);
            }
            this.f3014d = false;
            c0389c.m5322a();
            return z;
        }
        return z;
    }

    private List<NameValuePair> m4522c() {
        int i = 1;
        List<NameValuePair> arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "token"));
        C0219b.m4530a((List) arrayList);
        arrayList.add(new BasicNameValuePair("device_type", "3"));
        arrayList.add(new BasicNameValuePair("rsa_device_id", C0401b.m5343a(C0406f.m5361b(C0404d.m5351a(this.f3011a).getBytes(), "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/7VlVn9LIrZ71PL2RZMbK/Yxc\r\ndb046w/cXVylxS7ouPY06namZUFVhdbUnNRJzmGUZlzs3jUbvMO3l+4c9cw/n9aQ\r\nrm/brgaRDeZbeSrQYRZv60xzJIimuFFxsRM+ku6/dAyYmXiQXlRbgvFQ0MsVng4j\r\nv+cXhtTis2Kbwb8mQwIDAQAB\r\n"), "utf-8")));
        arrayList.add(new BasicNameValuePair("device_name", Build.MODEL));
        SharedPreferences sharedPreferences = this.f3011a.getSharedPreferences(this.f3011a.getPackageName(), 5);
        int i2 = sharedPreferences.getInt("com.baidu.android.pushservice.PushManager.LOGIN_TYPE", -1);
        String string = sharedPreferences.getString("com.baidu.android.pushservice.PushManager.LONGIN_VALUE", "");
        if (i2 == 2) {
            arrayList.add(new BasicNameValuePair("rsa_bduss", PushConstants.rsaEncrypt(sharedPreferences.getString("com.baidu.android.pushservice.PushManager.BDUSS", ""))));
            arrayList.add(new BasicNameValuePair("appid", string));
        } else if (i2 == 1) {
            arrayList.add(new BasicNameValuePair("rsa_access_token", PushConstants.rsaEncrypt(string)));
        } else {
            arrayList.add(new BasicNameValuePair("apikey", string));
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("api_level", VERSION.SDK_INT);
        int[] b = C0374f.m5204b(this.f3011a);
        jSONObject.put("screen_height", b[0]);
        jSONObject.put("screen_width", b[1]);
        jSONObject.put("model", Build.MODEL);
        jSONObject.put("isroot", C0374f.m5194a(this.f3011a) ? 1 : 0);
        String str = "is_baidu_app";
        if (!C0374f.m5218f(this.f3011a, this.f3011a.getPackageName())) {
            i = 0;
        }
        jSONObject.put(str, i);
        jSONObject.put(PushConstants.EXTRA_PUSH_SDK_VERSION, C0192a.m4336a());
        arrayList.add(new BasicNameValuePair("info", jSONObject.toString()));
        if (C0192a.m4341b()) {
            for (NameValuePair obj : arrayList) {
                C0385a.m5311b("TokenRequester", "TOKEN param -- " + obj.toString());
            }
        }
        return arrayList;
    }

    private void m4523d() {
        this.f3013c++;
        if (this.f3013c < this.f3012b) {
            int i = ((1 << (this.f3013c - 1)) * 5) * LocationClientOption.MIN_SCAN_SPAN;
            if (C0192a.m4341b()) {
                C0385a.m5308a("TokenRequester", "schedule retry-- retry times: " + this.f3013c + "time delay: " + i);
            }
            try {
                Thread.sleep((long) i);
                return;
            } catch (Throwable e) {
                if (C0192a.m4341b()) {
                    C0385a.m5310a("TokenRequester", e);
                    return;
                }
                return;
            }
        }
        if (C0192a.m4341b()) {
            C0385a.m5308a("TokenRequester", "hava reconnect " + this.f3012b + " times, all failed.");
        }
        this.f3014d = false;
    }

    protected void m4524a() {
        do {
            boolean b = m4521b();
            if (this.f3014d) {
                m4523d();
            }
            if (this.f3012b <= 0) {
                break;
            }
        } while (this.f3014d);
        if (C0192a.m4341b()) {
            C0385a.m5308a("TokenRequester", "RequestTokenThread connectResult: " + b);
        }
        if (b) {
            C0219b.m4528a(this.f3011a);
            if (PushSDK.mPushConnection != null) {
                if (C0192a.m4341b()) {
                    C0385a.m5308a("TokenRequester", "TokenRequester start PushService after Request finish.");
                }
                C0374f.m5229l(this.f3011a);
                return;
            }
            return;
        }
        C0374f.m5226j(this.f3011a);
    }

    public void m4525a(int i) {
        this.f3012b = i;
    }

    public void run() {
        m4524a();
        synchronized (com.baidu.android.pushservice.ad.m4377a()) {
            com.baidu.android.pushservice.ad.m4377a().m4380a(true);
            com.baidu.android.pushservice.ad.m4377a().notifyAll();
        }
    }
}
