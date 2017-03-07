package com.baidu.android.pushservice.p072f;

import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.f.w */
public class C0287w extends C0267p {
    public String f3280a;

    public JSONObject m4956a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("action_name", this.g);
        jSONObject.put("timestamp", this.h);
        jSONObject.put("msg_result", this.f3280a);
        return jSONObject;
    }
}
