package com.baidu.android.pushservice.p072f;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.p071e.C0250e;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.f.k */
public class C0277k extends C0270d {
    public static int f3243a;
    public static int f3244b;
    private int f3245c;

    static {
        f3243a = 0;
        f3244b = 1;
    }

    public C0277k() {
        this.f3245c = 0;
    }

    public C0277k(String str) {
        super(str);
        this.f3245c = 0;
    }

    public JSONObject m4909a(Context context) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("app_type", this.f3245c);
        if (!TextUtils.isEmpty(m4846d())) {
            jSONObject.put("app_package_name", m4846d());
        }
        if (!TextUtils.isEmpty(m4848e())) {
            jSONObject.put("app_name", m4848e());
        }
        if (!TextUtils.isEmpty(m4850f())) {
            jSONObject.put("app_cfrom", m4850f());
        }
        if (m4852g() != -1) {
            jSONObject.put("app_vercode", m4852g());
        }
        if (!TextUtils.isEmpty(m4854h())) {
            jSONObject.put("app_vername", m4854h());
        }
        if (m4855i() != -1) {
            jSONObject.put("app_push_version", m4855i());
        }
        jSONObject.put("app_appid", m4838a());
        if (!TextUtils.isEmpty(m4841b())) {
            jSONObject.put("user_id_rsa", m4841b());
        }
        if (!TextUtils.isEmpty(m4844c())) {
            jSONObject.put(PushConstants.EXTRA_USER_ID, m4844c());
        }
        if (m4911j() == f3244b) {
            jSONObject.put("msg_count", C0250e.m4709a(context).m4773f(m4838a()));
            jSONObject.put("msg_unread_count", C0250e.m4709a(context).m4774g(m4838a()));
        }
        return jSONObject;
    }

    public void m4910c(int i) {
        this.f3245c = i;
    }

    public int m4911j() {
        return this.f3245c;
    }
}
