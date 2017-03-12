package com.baidu.android.pushservice.p070d;

import android.content.Context;
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

/* renamed from: com.baidu.android.pushservice.d.w */
public class C0238w extends C0215c {
    protected String f3067e;
    private C0251o f3068f;
    private String f3069g;
    private String f3070h;
    private String f3071i;
    private String f3072j;
    private String f3073k;
    private int f3074l;

    public C0238w(C0226l c0226l, String str, String str2, String str3, String str4, String str5, C0251o c0251o, Context context, int i) {
        super(c0226l, context);
        this.f3069g = null;
        this.f3070h = "";
        this.f3071i = "";
        this.f3072j = "";
        this.f3073k = "";
        this.f3074l = 0;
        this.f3067e = str;
        this.f3070h = str2;
        this.f3071i = str3;
        this.f3072j = str4;
        this.f3073k = str5;
        this.f3068f = c0251o;
        this.f3074l = i;
    }

    private void m4564b(int i) {
        C0269c c0269c = new C0269c();
        if (this.f3074l == 1) {
            c0269c.g = "020706";
        } else if (this.f3074l == 0) {
            c0269c.g = "020704";
        } else if (this.f3074l == 2) {
            c0269c.g = "020708";
        }
        c0269c.h = System.currentTimeMillis();
        c0269c.i = C0399b.m5336d(this.a);
        c0269c.k = this.f3067e;
        if (i == 0) {
            c0269c.f3204c = this.f3073k;
            C0277k c0277k = new C0277k(this.f3067e);
            c0277k.m4910c(C0277k.f3244b);
            C0284t.m4933a(this.a, c0277k);
        } else {
            c0269c.j = i;
            c0269c.f3202a = this.f3069g;
        }
        C0284t.m4930a(this.a, c0269c);
    }

    protected void m4565a(int i) {
        if (this.f3068f != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("details", this.f3069g);
            this.f3068f.m4778a(i, hashMap);
        }
        m4564b(i);
    }

    protected void m4566a(int i, byte[] bArr) {
        if (this.f3068f != null) {
            HashMap hashMap = new HashMap();
            if (i == 0) {
                hashMap.put("details", this.f3069g);
            } else {
                try {
                    hashMap.put(PushConstants.EXTRA_ERROR_CODE, new JSONObject(new String(bArr)).getString(PushConstants.EXTRA_ERROR_CODE));
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("BaseApiProcessor", "sendResult E: " + e);
                    }
                }
            }
            this.f3068f.m4778a(i, hashMap);
        }
        m4564b(i);
    }

    protected void m4567a(List<NameValuePair> list) {
        super.m4509a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "lightapp_settags"));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_TAGS, this.f3067e));
        list.add(new BasicNameValuePair("cuid", C0402c.m5346a(this.a)));
        list.add(new BasicNameValuePair("csrftoken", this.f3070h));
        list.add(new BasicNameValuePair("nonce", this.f3071i));
        if (this.f3074l == 1 || this.f3074l == 0) {
            list.add(new BasicNameValuePair("push_type", "2"));
        } else if (this.f3074l == 2) {
            list.add(new BasicNameValuePair("push_type", "6"));
        }
        if (!TextUtils.isEmpty(this.f3072j)) {
            list.add(new BasicNameValuePair("referer", this.f3072j));
        }
        if (C0192a.m4341b()) {
            for (NameValuePair obj : list) {
                C0385a.m5311b("BaseApiProcessor", "lightapp_subscribe_service param -- " + obj.toString());
            }
        }
    }

    protected String m4568b(String str) {
        String b = super.m4510b(str);
        try {
            this.f3069g = new JSONObject(b).getJSONObject("response_params").getJSONArray("details").toString();
        } catch (JSONException e) {
            C0385a.m5313d("BaseApiProcessor", "error " + e.getMessage());
        }
        return b;
    }
}
