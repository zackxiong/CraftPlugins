package com.baidu.android.pushservice.p072f;

import android.text.TextUtils;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.f.l */
public class C0278l extends C0267p {
    public String f3246a;
    public int f3247b;
    public int f3248c;
    public String f3249d;

    public C0278l() {
        this.f3246a = "";
        this.f3247b = -1;
        this.f3248c = -1;
    }

    public C0278l(C0267p c0267p) {
        super(c0267p);
        this.f3246a = "";
        this.f3247b = -1;
        this.f3248c = -1;
    }

    public JSONObject m4912a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("action_name", this.g);
        jSONObject.put("timestamp", this.h);
        jSONObject.put("network_status", this.i);
        if (this.f3248c != -1) {
            jSONObject.put("msg_type", this.f3248c);
        }
        if (!TextUtils.isEmpty(this.f3246a)) {
            jSONObject.put("msg_id", this.f3246a);
        }
        if (this.f3247b > 0) {
            jSONObject.put("msg_len", this.f3247b);
        }
        if (this.f3249d != null) {
            jSONObject.put("msg_open_by", this.f3249d);
        }
        jSONObject.put("err_code", this.j);
        return jSONObject;
    }
}
