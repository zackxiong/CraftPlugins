package com.tencent.p095a.p096a.p097a.p098a;

import android.util.Log;
import org.json.JSONObject;

/* renamed from: com.tencent.a.a.a.a.c */
public final class C0657c {
    String f5053a;
    String f5054b;
    String f5055c;
    long f5056d;

    public C0657c() {
        this.f5053a = null;
        this.f5054b = null;
        this.f5055c = "0";
        this.f5056d = 0;
    }

    static C0657c m6841a(String str) {
        C0657c c0657c = new C0657c();
        if (C0661h.m6858a(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (!jSONObject.isNull("ui")) {
                    c0657c.f5053a = jSONObject.getString("ui");
                }
                if (!jSONObject.isNull("mc")) {
                    c0657c.f5054b = jSONObject.getString("mc");
                }
                if (!jSONObject.isNull("mid")) {
                    c0657c.f5055c = jSONObject.getString("mid");
                }
                if (!jSONObject.isNull("ts")) {
                    c0657c.f5056d = jSONObject.getLong("ts");
                }
            } catch (Throwable e) {
                Log.w("MID", e);
            }
        }
        return c0657c;
    }

    private JSONObject m6842b() {
        JSONObject jSONObject = new JSONObject();
        try {
            C0661h.m6856a(jSONObject, "ui", this.f5053a);
            C0661h.m6856a(jSONObject, "mc", this.f5054b);
            C0661h.m6856a(jSONObject, "mid", this.f5055c);
            jSONObject.put("ts", this.f5056d);
        } catch (Throwable e) {
            Log.w("MID", e);
        }
        return jSONObject;
    }

    public final String m6843a() {
        return this.f5055c;
    }

    public final String toString() {
        return m6842b().toString();
    }
}
