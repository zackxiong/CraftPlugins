package com.baidu.android.pushservice.p072f;

import android.text.TextUtils;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.f.b */
public class C0268b extends C0267p {
    public String f3197a;
    public int f3198b;
    public int f3199c;
    public String f3200d;
    public String f3201e;

    public C0268b() {
        this.f3197a = "";
        this.f3198b = -1;
        this.f3199c = -1;
        this.f3200d = "";
        this.f3201e = "";
    }

    public C0268b(C0267p c0267p) {
        super(c0267p);
        this.f3197a = "";
        this.f3198b = -1;
        this.f3199c = -1;
        this.f3200d = "";
        this.f3201e = "";
    }

    public JSONObject m4836a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("action_name", this.g);
        jSONObject.put("timestamp", this.h);
        jSONObject.put("network_status", this.i);
        if (this.f3199c != -1) {
            jSONObject.put("msg_type", this.f3199c);
        }
        if (!TextUtils.isEmpty(this.f3197a)) {
            jSONObject.put("msg_id", this.f3197a);
        }
        if (this.f3198b > 0) {
            jSONObject.put("msg_len", this.f3198b);
        }
        if (this.f3200d != null) {
            jSONObject.put("request_id", this.f3200d);
        }
        if (this.f3201e != null) {
            jSONObject.put("msg_open_by", this.f3201e);
        }
        return jSONObject;
    }
}
