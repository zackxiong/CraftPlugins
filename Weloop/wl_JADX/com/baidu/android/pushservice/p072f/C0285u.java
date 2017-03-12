package com.baidu.android.pushservice.p072f;

import android.text.TextUtils;
import com.umeng.update.ProGuard;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.f.u */
public class C0285u extends C0267p {
    public String f3263a;
    public String f3264b;
    public String f3265c;
    public String f3266d;
    public String f3267e;
    public int f3268v;

    public C0285u() {
        this.f3263a = "";
        this.f3264b = "";
        this.f3265c = "";
        this.f3266d = "";
        this.f3267e = "";
        this.f3268v = -1;
    }

    public C0285u(C0267p c0267p) {
        super(c0267p);
        this.f3263a = "";
        this.f3264b = "";
        this.f3265c = "";
        this.f3266d = "";
        this.f3267e = "";
        this.f3268v = -1;
    }

    public JSONObject m4940a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("action_name", this.g);
        jSONObject.put("timestamp", this.h);
        jSONObject.put("network_status", this.i);
        if (!TextUtils.isEmpty(this.f3263a)) {
            jSONObject.put("lbsInfo", this.f3263a);
        }
        if (!TextUtils.isEmpty(this.f3264b)) {
            jSONObject.put("msg_id", this.f3264b);
        }
        if (!TextUtils.isEmpty(this.f3265c)) {
            jSONObject.put("ssid", this.f3265c);
        }
        if (!TextUtils.isEmpty(this.f3266d)) {
            jSONObject.put("bssid", this.f3266d);
        }
        if (!TextUtils.isEmpty(this.f3267e)) {
            jSONObject.put(ProGuard.f5477e, this.f3267e);
        }
        if (this.f3268v != -1) {
            jSONObject.put("msg_type", this.f3268v);
        }
        return jSONObject;
    }
}
