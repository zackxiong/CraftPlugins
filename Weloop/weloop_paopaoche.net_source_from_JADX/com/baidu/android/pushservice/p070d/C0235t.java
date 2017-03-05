package com.baidu.android.pushservice.p070d;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.C0383z;
import com.baidu.android.pushservice.p071e.C0249d;
import com.baidu.android.pushservice.p071e.C0261p;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p079c.C0389c;
import com.baidu.location.LocationClientOption;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.d.t */
public class C0235t implements Runnable {
    private final String f3043a;
    private final String f3044b;
    private Context f3045c;
    private C0249d f3046d;
    private int f3047e;
    private int f3048f;
    private boolean f3049g;
    private C0234a f3050h;

    /* renamed from: com.baidu.android.pushservice.d.t.a */
    public interface C0234a {
        void m4550a(boolean z, C0249d c0249d);
    }

    public C0235t(Context context, String str, String str2, C0234a c0234a) {
        this.f3043a = C0383z.f3615b + "/lightapp/infosbykey/%s";
        this.f3044b = C0383z.f3615b + "/lightapp/infos/%s";
        this.f3047e = 3;
        this.f3048f = 0;
        this.f3049g = false;
        this.f3045c = context.getApplicationContext();
        this.f3050h = c0234a;
        this.f3046d = new C0249d(str, str2);
    }

    private boolean m4551a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.isNull("state") || jSONObject.getInt("state") == 0) {
                return false;
            }
            jSONObject = jSONObject.getJSONArray("data").getJSONObject(0);
            String string = jSONObject.getString("title");
            String string2 = jSONObject.getString("id");
            String string3 = jSONObject.getString("api_key");
            JSONObject jSONObject2 = jSONObject.getJSONObject("logo");
            if (jSONObject2 != null) {
                JSONObject jSONObject3 = jSONObject2.getJSONObject("thumbnails");
                if (jSONObject3 != null) {
                    this.f3046d.m4703f(jSONObject3.getString("L"));
                    this.f3046d.m4704g(jSONObject3.getString("M"));
                    this.f3046d.m4706h(jSONObject3.getString("S"));
                    this.f3046d.m4707i(jSONObject3.getString("XL"));
                    int i = this.f3045c.getResources().getDisplayMetrics().densityDpi;
                    switch (i) {
                        case 120:
                            this.f3046d.m4699d(jSONObject3.getString("S"));
                            break;
                        case 160:
                            this.f3046d.m4699d(jSONObject3.getString("M"));
                            break;
                        case 240:
                            this.f3046d.m4699d(jSONObject3.getString("L"));
                            break;
                        default:
                            if (i <= 240) {
                                this.f3046d.m4699d(jSONObject3.getString("S"));
                                break;
                            }
                            this.f3046d.m4699d(jSONObject3.getString("XL"));
                            break;
                    }
                }
            }
            this.f3046d.m4695b(string2);
            this.f3046d.m4697c(string3);
            this.f3046d.m4691a(string);
            this.f3046d.m4701e(jSONObject2.toString());
            this.f3046d.m4692a(jSONObject.getBoolean("allow_shortcut"));
            return true;
        } catch (JSONException e) {
            if (!C0192a.m4341b()) {
                return false;
            }
            C0385a.m5308a("GetLightAppInfoRequester", "GetLightAppInfo e : " + e);
            return false;
        }
    }

    private boolean m4552b() {
        String format;
        if (TextUtils.isEmpty(this.f3046d.m4696c())) {
            format = String.format(this.f3044b, new Object[]{this.f3046d.m4694b()});
        } else {
            format = String.format(this.f3043a, new Object[]{this.f3046d.m4696c()});
        }
        if (C0192a.m4341b()) {
            C0385a.m5311b("GetLightAppInfoRequester", "getLightAppInfo request url:" + format);
        }
        C0389c c0389c = new C0389c(this.f3045c);
        boolean a;
        try {
            HttpUriRequest httpGet = new HttpGet(format);
            httpGet.addHeader("Content-Type", "application/json;charset=UTF-8");
            HttpResponse execute = c0389c.execute(httpGet);
            if (execute == null || execute.getStatusLine() == null || execute.getStatusLine().getStatusCode() != 200) {
                this.f3048f = 0;
                this.f3049g = false;
                c0389c.m5322a();
                return false;
            }
            format = EntityUtils.toString(execute.getEntity(), "utf-8");
            if (C0192a.m4341b()) {
                C0385a.m5308a("GetLightAppInfoRequester", "getLightAppInfo return string :  " + format);
            }
            a = m4551a(format);
            return a;
        } catch (IOException e) {
            if (C0192a.m4341b()) {
                C0385a.m5313d("GetLightAppInfoRequester", "error " + e.getMessage());
            }
            a = true;
            this.f3049g = true;
        } catch (Exception e2) {
            if (C0192a.m4341b()) {
                C0385a.m5313d("GetLightAppInfoRequester", "error " + e2.getMessage());
            }
            a = true;
            this.f3049g = true;
        } finally {
            c0389c.m5322a();
        }
    }

    private void m4553c() {
        this.f3048f++;
        if (this.f3048f < this.f3047e) {
            int i = ((1 << (this.f3048f - 1)) * 5) * LocationClientOption.MIN_SCAN_SPAN;
            if (C0192a.m4341b()) {
                C0385a.m5308a("GetLightAppInfoRequester", "schedule retry-- retry times: " + this.f3048f + "time delay: " + i);
            }
            try {
                Thread.sleep((long) i);
                return;
            } catch (Throwable e) {
                if (C0192a.m4341b()) {
                    C0385a.m5310a("GetLightAppInfoRequester", e);
                    return;
                }
                return;
            }
        }
        if (C0192a.m4341b()) {
            C0385a.m5308a("GetLightAppInfoRequester", "hava reconnect " + this.f3047e + " times, all failed.");
        }
        this.f3049g = false;
    }

    protected void m4554a() {
        do {
            boolean b = m4552b();
            if (b && this.f3046d.m4690a() == null) {
                this.f3046d.m4693a(C0261p.m4796a(this.f3045c, this.f3046d.m4696c(), this.f3046d.m4700e(), false));
            }
            if (this.f3049g) {
                m4553c();
            }
            if (this.f3050h != null) {
                this.f3047e = 0;
                this.f3050h.m4550a(b, this.f3046d);
            }
            if (this.f3047e <= 0) {
                break;
            }
        } while (this.f3049g);
        if (C0192a.m4341b()) {
            C0385a.m5308a("GetLightAppInfoRequester", "GetLightAppInfoRequester connectResult: " + b);
        }
    }

    public void m4555a(int i) {
        this.f3047e = i;
    }

    public void run() {
        m4554a();
    }
}
