package com.baidu.android.pushservice.p070d;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.PushSettings;
import com.baidu.android.pushservice.p069c.C0201b;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.d.f */
public class C0220f extends C0216d {
    protected int f3016f;
    private String f3017g;
    private int f3018h;

    public C0220f(C0226l c0226l, Context context, int i, String str, int i2) {
        super(c0226l, context);
        this.f3016f = 0;
        this.f3016f = i;
        this.f3017g = str;
        this.f3018h = i2;
        if (this.f3016f == 0) {
            this.e = true;
        }
    }

    protected void m4531a(Intent intent) {
        intent.putExtra(PushConstants.EXTRA_BIND_STATUS, this.f3016f);
    }

    protected void m4532a(List<NameValuePair> list) {
        super.m4509a((List) list);
        list.add(new BasicNameValuePair(PushConstants.EXTRA_METHOD, "bind"));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_BIND_NAME, TextUtils.isEmpty(this.f3017g) ? Build.MODEL : this.f3017g));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_BIND_STATUS, this.f3016f + ""));
        list.add(new BasicNameValuePair(PushConstants.EXTRA_PUSH_SDK_VERSION, this.f3018h + ""));
        if (C0192a.m4341b()) {
            for (NameValuePair obj : list) {
                C0385a.m5311b("Bind", "BIND param -- " + obj.toString());
            }
        }
    }

    protected String m4533b(String str) {
        String b = super.m4513b(str);
        String str2 = "";
        try {
            str2 = new JSONObject(b).getJSONObject("response_params").getString("appid");
        } catch (JSONException e) {
            C0385a.m5313d("Bind", "error " + e.getMessage());
        }
        if (!TextUtils.isEmpty(this.b.f3028e)) {
            C0201b.m4446a(this.a).m4462f(this.b.f3028e);
            if (!TextUtils.isEmpty(this.b.f3032i)) {
                C0201b.m4446a(this.a).m4456a(this.b.f3028e, new C0221g(this.b.f3032i, b));
                if (!TextUtils.isEmpty(str2)) {
                    PushSettings.m4211a(str2, 0, this.b.f3032i);
                }
            }
        }
        return b;
    }
}
