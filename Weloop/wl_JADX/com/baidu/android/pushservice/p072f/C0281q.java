package com.baidu.android.pushservice.p072f;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.PushService;
import com.baidu.android.pushservice.PushSettings;
import com.baidu.android.pushservice.util.PushDatabase;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p079c.C0393g;
import com.baidu.frontia.p075a.p080d.C0396a;
import com.baidu.frontia.p075a.p080d.C0399b;
import com.baidu.frontia.p075a.p081e.C0401b;
import com.baidu.location.C0452e;
import com.baidu.location.LocationClientOption;
import com.baidu.mapapi.SDKInitializer;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.f.q */
public final class C0281q {
    public static String f3252a;
    private Context f3253b;
    private C0283s f3254c;
    private boolean f3255d;

    static {
        f3252a = "";
    }

    public C0281q(Context context) {
        this.f3253b = null;
        this.f3254c = null;
        this.f3253b = context.getApplicationContext();
        this.f3254c = C0283s.m4927a(context);
        this.f3255d = false;
    }

    private boolean m4917a(String str, String str2, String str3) {
        HttpRequestBase httpPost = new HttpPost(str);
        List arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("stats", str2));
        arrayList.add(new BasicNameValuePair("pbVer", str3));
        arrayList.add(new BasicNameValuePair("os", "android"));
        try {
            HttpEntity urlEncodedFormEntity = new UrlEncodedFormEntity(arrayList, "utf-8");
            urlEncodedFormEntity.setContentType("application/json");
            try {
                httpPost.addHeader("Content-Type", "application/x-www-form-urlencoded");
                httpPost.setEntity(urlEncodedFormEntity);
                HttpResponse a = C0393g.m5323a(httpPost);
                InputStream content = a.getEntity().getContent();
                String a2 = C0399b.m5329a(content);
                if (a.getStatusLine().getStatusCode() == 200) {
                    return true;
                }
                if (a.getStatusLine().getStatusCode() == C0452e.f3861z) {
                    m4923a(a2);
                } else if (a.getStatusLine().getStatusCode() == 403) {
                    m4925b(a2);
                }
                if (content == null) {
                    return false;
                }
                content.close();
                return false;
            } catch (Exception e) {
                return false;
            }
        } catch (UnsupportedEncodingException e2) {
            C0385a.m5313d("StatisticPoster", "error " + e2.getMessage());
            return false;
        }
    }

    private synchronized void m4919c() {
        long currentTimeMillis = System.currentTimeMillis();
        long c = PushSettings.m4219c(this.f3253b);
        int i = 0;
        int behaviorEnumCount = PushDatabase.getBehaviorEnumCount(this.f3253b, currentTimeMillis, c);
        while (behaviorEnumCount >= LocationClientOption.MIN_SCAN_SPAN) {
            if (!m4926b(currentTimeMillis, c, i, LocationClientOption.MIN_SCAN_SPAN)) {
                break;
            }
            i += LocationClientOption.MIN_SCAN_SPAN;
            behaviorEnumCount -= 1000;
        }
        boolean z = true;
        if (behaviorEnumCount <= LocationClientOption.MIN_SCAN_SPAN && behaviorEnumCount > 0) {
            z = m4926b(currentTimeMillis, c, i, behaviorEnumCount);
        }
        if (z) {
            PushSettings.m4206a(System.currentTimeMillis());
            try {
                PushDatabase.clearBehaviorInfo(this.f3253b);
            } catch (Exception e) {
                if (C0192a.m4341b()) {
                    C0385a.m5308a("StatisticPoster", "clearBehaviorInfo exception" + e);
                }
            }
        }
    }

    private boolean m4920d() {
        if (!C0399b.m5338e(this.f3253b) || this.f3255d || PushSettings.m4228f() == 1) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long c = PushSettings.m4219c(this.f3253b);
        if (C0192a.m4341b()) {
            C0385a.m5311b("StatisticPoster", "checkSendStatisticData currentTime:" + currentTimeMillis + " lastSendTime " + c);
        }
        return (C0399b.m5334c(this.f3253b) || currentTimeMillis - c >= PushSettings.m4226e()) ? PushDatabase.isNeedUpload(this.f3253b, currentTimeMillis, c) : false;
    }

    public String m4921a() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject.put("user_device", C0399b.m5339f(this.f3253b));
            jSONObject.put("user_network", C0399b.m5340g(this.f3253b));
            jSONObject2.put("channel_id", PushSettings.m4204a());
            jSONObject2.put("push_running_version", C0192a.m4336a());
            jSONObject.put("push_channel", jSONObject2);
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    public String m4922a(long j, long j2, int i, int i2) {
        byte[] a;
        String str = null;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", "1.0");
            Object a2 = m4921a();
            if (!TextUtils.isEmpty(a2)) {
                jSONObject.put("common", new JSONObject(a2));
            }
            a2 = this.f3254c.m4928a(j, j2, i, i2);
            if (!TextUtils.isEmpty(a2)) {
                jSONObject.put("application_info", new JSONArray(a2));
            }
        } catch (JSONException e) {
        }
        try {
            a = C0396a.m5324a(jSONObject.toString());
            a[0] = (byte) 117;
            a[1] = (byte) 123;
        } catch (IOException e2) {
            a = str;
        }
        if (a != null) {
            try {
                str = C0401b.m5343a(a, "utf-8");
            } catch (UnsupportedEncodingException e3) {
                C0385a.m5313d("StatisticPoster", "error " + e3.getMessage());
            }
        }
        return str;
    }

    public void m4923a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                int i = jSONObject.getInt("config_type");
                int i2 = jSONObject.getInt("interval");
                if (i == 0) {
                    if (i2 > 0) {
                        PushSettings.m4217b((long) (i2 * LocationClientOption.MIN_SCAN_SPAN));
                    }
                } else if (i == 1) {
                    this.f3255d = true;
                } else if (i == 2) {
                    if (i2 > 0) {
                        PushSettings.m4216b(1);
                        Intent intent = new Intent(PushConstants.ACTION_METHOD);
                        intent.putExtra(PushConstants.EXTRA_METHOD, "com.baidu.android.pushservice.action.ENBALE_APPSTAT");
                        intent.setClass(this.f3253b, PushService.class);
                        PendingIntent service = PendingIntent.getService(this.f3253b.getApplicationContext(), 0, intent, 268435456);
                        long elapsedRealtime = SystemClock.elapsedRealtime() + ((long) i2);
                        AlarmManager alarmManager = (AlarmManager) this.f3253b.getSystemService("alarm");
                        alarmManager.cancel(service);
                        alarmManager.set(1, elapsedRealtime, service);
                    }
                } else if (i == 10) {
                    PushSettings.m4225d(this.f3253b);
                } else if (i == 11) {
                    PushSettings.m4227e(this.f3253b);
                }
            } catch (JSONException e) {
                if (C0192a.m4339a(this.f3253b)) {
                    C0385a.m5311b("StatisticPoster", "parse 201 exception" + e);
                }
            }
        }
    }

    public void m4924b() {
        if (m4920d()) {
            new C0282r(this).start();
        }
    }

    public void m4925b(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                int i = jSONObject.getInt(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE);
                jSONObject.getString(PushConstants.EXTRA_ERROR_CODE);
                if (i == 50009) {
                    PushSettings.m4216b(1);
                }
            } catch (JSONException e) {
            }
        }
    }

    public boolean m4926b(long j, long j2, int i, int i2) {
        Object a = m4922a(j, j2, i, i2);
        String str = "http://statsonline.pushct.baidu.com/pushlog";
        try {
            if (!TextUtils.isEmpty(a)) {
                return m4917a(str, a, "1.0");
            }
        } catch (OutOfMemoryError e) {
            C0385a.m5313d("StatisticPoster", "OutOfMemoryError when posting");
        }
        return false;
    }
}
