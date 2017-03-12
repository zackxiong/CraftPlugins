package com.baidu.android.pushservice.p070d;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.p071e.C0251o;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p081e.C0402c;
import java.util.HashMap;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.d.x */
public class C0239x extends C0216d {
    private int f3075f;
    private C0251o f3076g;
    private String f3077h;
    private String f3078i;
    private String f3079j;
    private String f3080k;
    private String f3081l;
    private String f3082m;
    private String f3083n;

    public C0239x(C0226l c0226l, int i, String str, String str2, C0251o c0251o, Context context) {
        super(c0226l, context);
        this.f3077h = "";
        this.f3078i = "";
        this.f3079j = "";
        this.f3080k = "DEFAULT";
        this.f3075f = i;
        this.f3076g = c0251o;
        if (!TextUtils.isEmpty(str)) {
            this.f3080k = str;
        }
        this.f3082m = str2;
        this.f3083n = c0226l.f3029f;
    }

    public C0239x(C0226l c0226l, int i, String str, String str2, String str3, String str4, String str5, C0251o c0251o, Context context) {
        super(c0226l, context);
        this.f3077h = "";
        this.f3078i = "";
        this.f3079j = "";
        this.f3080k = "DEFAULT";
        this.f3075f = i;
        this.f3076g = c0251o;
        this.f3077h = str;
        if (!TextUtils.isEmpty(str2)) {
            this.f3078i = str2;
        }
        if (!TextUtils.isEmpty(str3)) {
            this.f3079j = str3;
        }
        if (!TextUtils.isEmpty(str4)) {
            this.f3080k = str4;
        }
        if (!TextUtils.isEmpty(c0226l.f3032i)) {
            this.f3081l = c0226l.f3032i;
        }
    }

    protected void m4569a(int i) {
        m4570a(i, PushConstants.getErrorMsg(i).getBytes());
    }

    protected void m4570a(int i, byte[] bArr) {
        if (this.f3076g != null) {
            HashMap hashMap = new HashMap();
            try {
                hashMap.put(PushConstants.EXTRA_ERROR_CODE, new JSONObject(new String(bArr)).getString(PushConstants.EXTRA_ERROR_CODE));
            } catch (Exception e) {
            }
            this.f3076g.m4778a(i, hashMap);
        }
    }

    protected void m4571a(List<NameValuePair> list) {
        super.m4509a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "lightapp_unbind"));
        if (this.f3075f == 1) {
            list.add(new BasicNameValuePair("push_type", "1"));
            list.add(new BasicNameValuePair("nonce", this.f3078i));
            list.add(new BasicNameValuePair("referer", this.f3079j));
        } else if (this.f3075f == 2 || this.f3075f == 3) {
            list.add(new BasicNameValuePair("push_type", "3"));
        }
        if (TextUtils.isEmpty(this.f3077h)) {
            list.add(new BasicNameValuePair("push_hash", this.f3082m));
            list.add(new BasicNameValuePair("appid", this.f3083n));
        } else {
            list.add(new BasicNameValuePair("csrftoken", this.f3077h));
            list.add(new BasicNameValuePair("cuid", C0402c.m5346a(this.a)));
        }
        list.add(new BasicNameValuePair("host_app", this.f3080k));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_PUSH_SDK_VERSION, "" + C0192a.m4336a()));
        if (C0192a.m4341b()) {
            C0385a.m5311b("BaseRegisterProcessor", "L BIND url: " + this.c);
            for (NameValuePair obj : list) {
                C0385a.m5311b("BaseRegisterProcessor", "L UNBIND param -- " + obj.toString());
            }
        }
    }
}
