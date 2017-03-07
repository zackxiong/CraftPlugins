package com.baidu.android.pushservice.p072f;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.PushSettings;
import com.baidu.android.pushservice.ad;
import com.baidu.android.pushservice.p070d.C0219b;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p079c.C0386a;
import com.baidu.frontia.p075a.p079c.C0389c;
import com.baidu.frontia.p075a.p080d.C0399b;
import com.baidu.location.C0452e;
import com.baidu.mapapi.SDKInitializer;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.f.n */
public abstract class C0274n {
    protected Context f3235a;
    protected String f3236b;
    private boolean f3237c;
    private boolean f3238d;

    public C0274n(Context context) {
        this.f3237c = false;
        this.f3235a = context.getApplicationContext();
        this.f3238d = false;
    }

    private void m4889c(boolean z) {
        Object e;
        Throwable th;
        if (!TextUtils.isEmpty(this.f3236b)) {
            C0389c c0389c;
            try {
                c0389c = new C0389c(this.f3235a);
                try {
                    String a = m4890a(z);
                    if (!TextUtils.isEmpty(a)) {
                        if (!m4897b()) {
                            this.f3236b += ad.m4377a().m4382c();
                        }
                        HttpUriRequest httpPost = new HttpPost(this.f3236b);
                        httpPost.addHeader("Content-Type", "application/x-www-form-urlencoded");
                        List arrayList = new ArrayList();
                        C0219b.m4530a(arrayList);
                        m4892a(a, arrayList);
                        httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
                        HttpResponse execute = c0389c.execute(httpPost);
                        if (execute != null) {
                            m4893a(execute);
                        }
                    }
                    if (c0389c != null) {
                        c0389c.m5322a();
                    }
                } catch (Exception e2) {
                    e = e2;
                    try {
                        C0385a.m5313d("Statistics-BaseSender", "startSendLoop Exception: " + e);
                        if (c0389c != null) {
                            c0389c.m5322a();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (c0389c != null) {
                            c0389c.m5322a();
                        }
                        throw th;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                c0389c = null;
                C0385a.m5313d("Statistics-BaseSender", "startSendLoop Exception: " + e);
                if (c0389c != null) {
                    c0389c.m5322a();
                }
            } catch (Throwable th3) {
                th = th3;
                c0389c = null;
                if (c0389c != null) {
                    c0389c.m5322a();
                }
                throw th;
            }
        } else if (C0192a.m4339a(this.f3235a)) {
            C0385a.m5313d("Statistics-BaseSender", "mUrl is null");
        }
    }

    abstract String m4890a(boolean z);

    abstract void m4891a(String str);

    abstract void m4892a(String str, List<NameValuePair> list);

    public void m4893a(HttpResponse httpResponse) {
        InputStream inputStream = null;
        try {
            inputStream = httpResponse.getEntity().getContent();
            String a = C0399b.m5329a(inputStream);
            if (C0192a.m4339a(this.f3235a)) {
                C0385a.m5311b("Statistics-BaseSender", "return conncection = " + a);
            }
            if (httpResponse.getStatusLine().getStatusCode() == 200) {
                m4895b(a);
            } else if (httpResponse.getStatusLine().getStatusCode() == C0452e.f3861z) {
                m4898c(a);
            } else if (httpResponse.getStatusLine().getStatusCode() == 403) {
                m4900d(a);
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    C0385a.m5313d("Statistics-BaseSender", "error " + e.getMessage());
                }
            }
        } catch (IOException e2) {
            C0385a.m5313d("Statistics-BaseSender", "error " + e2.getMessage());
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e22) {
                    C0385a.m5313d("Statistics-BaseSender", "error " + e22.getMessage());
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                    C0385a.m5313d("Statistics-BaseSender", "error " + e3.getMessage());
                }
            }
        }
    }

    abstract boolean m4894a();

    public void m4895b(String str) {
        m4891a(str);
    }

    public synchronized void m4896b(boolean z) {
        if (!this.f3237c) {
            if (m4894a()) {
                if (C0386a.m5315a(this.f3235a)) {
                    if (ad.m4377a().m4384e()) {
                        this.f3237c = true;
                        Thread thread = new Thread(new C0280o(this, z));
                        thread.setName("PushService-stats-sender");
                        thread.start();
                    } else if (C0192a.m4339a(this.f3235a)) {
                        C0385a.m5313d("Statistics-BaseSender", "Fail Send Statistics. Token invalid!");
                    }
                } else if (C0192a.m4339a(this.f3235a)) {
                    C0385a.m5312c("Statistics-BaseSender", "Network is not reachable!");
                }
            } else if (C0192a.m4339a(this.f3235a)) {
                C0385a.m5312c("Statistics-BaseSender", "No new data producted, do nothing!");
            }
        }
    }

    abstract boolean m4897b();

    public void m4898c(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                int i = jSONObject.getInt("config_type");
                int i2 = jSONObject.getInt("interval");
                if (C0192a.m4339a(this.f3235a)) {
                    C0385a.m5311b("Statistics-BaseSender", "lbs config_type = " + i + " interval = " + i2);
                }
                if (i == 0) {
                    if (i2 > 0) {
                        PushSettings.m4220c(i2);
                    }
                } else if (i != 1 && i == 2) {
                }
            } catch (JSONException e) {
                if (C0192a.m4339a(this.f3235a)) {
                    C0385a.m5311b("Statistics-BaseSender", "parse 201 exception" + e);
                }
            }
        }
    }

    public boolean m4899c() {
        return this.f3238d;
    }

    public void m4900d(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                int i = jSONObject.getInt(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE);
                String string = jSONObject.getString(PushConstants.EXTRA_ERROR_CODE);
                if (C0192a.m4339a(this.f3235a)) {
                    C0385a.m5311b("Statistics-BaseSender", "error code = " + i + " error_msg = " + string);
                }
                if (i == 50009) {
                    PushSettings.m4225d(this.f3235a);
                }
            } catch (JSONException e) {
                if (C0192a.m4339a(this.f3235a)) {
                    C0385a.m5311b("Statistics-BaseSender", " parse 403 exception" + e);
                }
            }
        }
    }
}
