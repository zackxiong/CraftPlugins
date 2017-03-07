package com.baidu.android.pushservice.p072f;

import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.f.j */
public class C0276j extends C0267p {
    public int f3242a;

    public C0276j(C0267p c0267p) {
        super(c0267p);
    }

    public JSONObject m4908a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("action_name", this.g);
        jSONObject.put("timestamp", this.h);
        jSONObject.put("network_status", this.i);
        jSONObject.put("heart", this.f3242a);
        jSONObject.put("err_code", this.j);
        return jSONObject;
    }
}
