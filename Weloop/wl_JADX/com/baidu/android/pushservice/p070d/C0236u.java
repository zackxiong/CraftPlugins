package com.baidu.android.pushservice.p070d;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.p071e.C0251o;
import com.baidu.android.pushservice.p072f.C0269c;
import com.baidu.android.pushservice.p072f.C0277k;
import com.baidu.android.pushservice.p072f.C0284t;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p080d.C0399b;
import com.baidu.frontia.p075a.p081e.C0402c;
import java.util.HashMap;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.d.u */
public class C0236u extends C0216d {
    private int f3051f;
    private C0251o f3052g;
    private String f3053h;
    private String f3054i;
    private String f3055j;
    private String f3056k;
    private String f3057l;
    private String f3058m;
    private String f3059n;
    private String f3060o;

    public C0236u(C0226l c0226l, int i, String str, String str2, String str3, C0251o c0251o, Context context) {
        super(c0226l, context);
        this.f3051f = 2;
        this.f3053h = "";
        this.f3054i = "";
        this.f3055j = "";
        this.f3056k = "";
        this.f3057l = "";
        this.f3058m = "";
        this.f3059n = "DEFAULT";
        this.f3060o = "";
        this.f3051f = i;
        this.f3052g = c0251o;
        this.f3060o = str2;
        if (!TextUtils.isEmpty(str)) {
            this.f3059n = str;
        }
        this.f3053h = c0226l.f3029f;
    }

    public C0236u(C0226l c0226l, int i, String str, String str2, String str3, String str4, C0251o c0251o, Context context) {
        super(c0226l, context);
        this.f3051f = 2;
        this.f3053h = "";
        this.f3054i = "";
        this.f3055j = "";
        this.f3056k = "";
        this.f3057l = "";
        this.f3058m = "";
        this.f3059n = "DEFAULT";
        this.f3060o = "";
        this.f3051f = i;
        this.f3052g = c0251o;
        this.f3056k = str;
        if (!TextUtils.isEmpty(str2)) {
            this.f3057l = str2;
        }
        if (!TextUtils.isEmpty(str3)) {
            this.f3058m = str3;
        }
        if (!TextUtils.isEmpty(str4)) {
            this.f3059n = str4;
        }
    }

    protected void m4556a(int i) {
        m4557a(i, PushConstants.getErrorMsg(i).getBytes());
    }

    protected void m4557a(int i, byte[] bArr) {
        try {
            if (this.f3052g != null) {
                HashMap hashMap = new HashMap();
                if (i == 0) {
                    hashMap.put(PushConstants.EXTRA_APP_ID, this.f3053h);
                    hashMap.put("channel_id", this.f3055j);
                    hashMap.put(PushConstants.EXTRA_USER_ID, this.f3054i);
                } else {
                    try {
                        hashMap.put(PushConstants.EXTRA_ERROR_CODE, new JSONObject(new String(bArr)).getString(PushConstants.EXTRA_ERROR_CODE));
                    } catch (Exception e) {
                        if (C0192a.m4341b()) {
                            C0385a.m5311b("BaseApiProcessor", "sendResult E: " + e);
                        }
                    }
                }
                this.f3052g.m4778a(i, hashMap);
            }
            C0269c c0269c = new C0269c();
            if (this.f3051f == 2) {
                c0269c.g = "020701";
            } else if (this.f3051f == 1) {
                c0269c.g = "020703";
            } else if (this.f3051f == 3) {
                c0269c.g = "020702";
            } else if (this.f3051f == 4) {
                c0269c.g = "020705";
            } else if (this.f3051f == 5) {
                c0269c.g = "020707";
            }
            c0269c.h = System.currentTimeMillis();
            c0269c.i = C0399b.m5336d(this.a);
            c0269c.k = this.f3053h;
            if (i == 0) {
                c0269c.f3204c = this.f3055j;
                C0277k c0277k = new C0277k(this.f3053h);
                c0277k.m4910c(C0277k.f3244b);
                C0284t.m4933a(this.a, c0277k);
            } else {
                c0269c.j = i;
                try {
                    c0269c.f3202a = new JSONObject(new String(bArr)).getString(PushConstants.EXTRA_ERROR_CODE);
                } catch (JSONException e2) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("BaseApiProcessor", "insert BE: " + e2);
                    }
                }
            }
            C0284t.m4930a(this.a, c0269c);
        } catch (Exception e3) {
            if (C0192a.m4341b()) {
                C0385a.m5312c("BaseApiProcessor", "e: " + e3);
            }
        }
    }

    protected void m4558a(List<NameValuePair> list) {
        super.m4509a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "lightapp_bind"));
        String str = Build.MODEL;
        if (!TextUtils.isEmpty(str)) {
            str = "unknown";
        }
        list.add(new BasicNameValuePair(PushConstants.EXTRA_BIND_NAME, str));
        if (this.f3051f == 1 || this.f3051f == 4 || this.f3051f == 5) {
            list.add(new BasicNameValuePair("nonce", this.f3057l));
            if (!TextUtils.isEmpty(this.f3058m)) {
                list.add(new BasicNameValuePair("referer", this.f3058m));
            }
            if (this.f3051f == 5) {
                list.add(new BasicNameValuePair("push_type", "5"));
            } else {
                list.add(new BasicNameValuePair("push_type", "1"));
            }
        } else if (this.f3051f == 2 || this.f3051f == 3) {
            list.add(new BasicNameValuePair("push_type", "3"));
        }
        if (TextUtils.isEmpty(this.f3056k)) {
            list.add(new BasicNameValuePair("push_hash", this.f3060o));
            list.add(new BasicNameValuePair("appid", this.f3053h));
        } else {
            list.add(new BasicNameValuePair("csrftoken", this.f3056k));
            list.add(new BasicNameValuePair("cuid", C0402c.m5346a(this.a)));
        }
        list.add(new BasicNameValuePair("host_app", this.f3059n));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_PUSH_SDK_VERSION, "" + C0192a.m4336a()));
        if (C0192a.m4341b()) {
            C0385a.m5311b("BaseApiProcessor", "L BIND url: " + this.c);
            for (NameValuePair obj : list) {
                C0385a.m5311b("BaseApiProcessor", "L BIND param -- " + obj.toString());
            }
        }
    }

    protected String m4559b(String str) {
        String b = super.m4513b(str);
        try {
            JSONObject jSONObject = new JSONObject(b).getJSONObject("response_params");
            this.f3053h = jSONObject.getString("appid");
            this.f3054i = jSONObject.getString(PushConstants.EXTRA_USER_ID);
            this.f3055j = jSONObject.getString("channel_id");
        } catch (JSONException e) {
            if (C0192a.m4341b()) {
                C0385a.m5311b("BaseApiProcessor", "bindData Exception: " + e);
            }
        }
        return b;
    }
}
