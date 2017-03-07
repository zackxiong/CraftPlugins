package com.tencent.p099b.p100a;

import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.s */
public final class C0707s {
    private long f5265a;
    private int f5266b;
    private String f5267c;
    private int f5268d;
    private String f5269e;

    public C0707s() {
        this.f5265a = 0;
        this.f5266b = 0;
        this.f5267c = "";
        this.f5268d = 0;
        this.f5269e = "";
    }

    public final JSONObject m7041a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("tm", this.f5265a);
            jSONObject.put("st", this.f5266b);
            if (this.f5267c != null) {
                jSONObject.put("dm", this.f5267c);
            }
            jSONObject.put("pt", this.f5268d);
            if (this.f5269e != null) {
                jSONObject.put("rip", this.f5269e);
            }
            jSONObject.put("ts", System.currentTimeMillis() / 1000);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    public final void m7042a(int i) {
        this.f5266b = i;
    }

    public final void m7043a(long j) {
        this.f5265a = j;
    }

    public final void m7044a(String str) {
        this.f5267c = str;
    }

    public final void m7045b(int i) {
        this.f5268d = i;
    }

    public final void m7046b(String str) {
        this.f5269e = str;
    }
}
