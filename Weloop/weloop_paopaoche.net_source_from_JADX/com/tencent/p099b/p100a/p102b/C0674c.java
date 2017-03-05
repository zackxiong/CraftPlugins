package com.tencent.p099b.p100a.p102b;

import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.b.c */
public final class C0674c {
    private String f5151a;
    private String f5152b;
    private String f5153c;
    private String f5154d;
    private int f5155e;
    private int f5156f;
    private long f5157g;

    public C0674c() {
        this.f5151a = null;
        this.f5152b = null;
        this.f5153c = null;
        this.f5154d = "0";
        this.f5156f = 0;
        this.f5157g = 0;
    }

    public C0674c(String str, String str2, int i) {
        this.f5151a = null;
        this.f5152b = null;
        this.f5153c = null;
        this.f5154d = "0";
        this.f5156f = 0;
        this.f5157g = 0;
        this.f5151a = str;
        this.f5152b = str2;
        this.f5155e = i;
    }

    private JSONObject m6944e() {
        JSONObject jSONObject = new JSONObject();
        try {
            C0689r.m7017a(jSONObject, "ui", this.f5151a);
            C0689r.m7017a(jSONObject, "mc", this.f5152b);
            C0689r.m7017a(jSONObject, "mid", this.f5154d);
            C0689r.m7017a(jSONObject, "aid", this.f5153c);
            jSONObject.put("ts", this.f5157g);
            jSONObject.put("ver", this.f5156f);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    public final String m6945a() {
        return this.f5151a;
    }

    public final String m6946b() {
        return this.f5152b;
    }

    public final void m6947c() {
        this.f5155e = 1;
    }

    public final int m6948d() {
        return this.f5155e;
    }

    public final String toString() {
        return m6944e().toString();
    }
}
