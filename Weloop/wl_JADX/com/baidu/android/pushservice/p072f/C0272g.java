package com.baidu.android.pushservice.p072f;

import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.f.g */
public class C0272g extends C0267p {
    public String f3228a;

    public C0272g(C0267p c0267p) {
        super(c0267p);
    }

    public JSONObject m4877a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("action_name", this.g);
        jSONObject.put("timestamp", this.h);
        jSONObject.put("network_status", this.i);
        jSONObject.put("crash_stack", this.f3228a);
        return jSONObject;
    }
}
