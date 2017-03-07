package com.baidu.android.pushservice.p072f;

import android.text.TextUtils;
import com.umeng.update.ProGuard;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.f.c */
public class C0269c extends C0267p {
    public String f3202a;
    public String f3203b;
    public String f3204c;

    public C0269c(C0267p c0267p) {
        super(c0267p);
    }

    public JSONObject m4837a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("action_name", this.g);
        jSONObject.put("timestamp", this.h);
        jSONObject.put("network_status", this.i);
        jSONObject.put("msg_result", this.f3202a);
        jSONObject.put("request_id", this.f3203b);
        jSONObject.put("err_code", this.j);
        if (!TextUtils.isEmpty(this.f3204c)) {
            jSONObject.put(ProGuard.f5477e, this.f3204c);
        }
        return jSONObject;
    }
}
