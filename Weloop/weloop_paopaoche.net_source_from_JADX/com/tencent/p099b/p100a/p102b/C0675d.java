package com.tencent.p099b.p100a.p102b;

import android.content.Context;
import com.tencent.p099b.p100a.C0712x;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.b.d */
public final class C0675d {
    static C0676e f5158a;
    private static C0673b f5159d;
    private static JSONObject f5160e;
    Integer f5161b;
    String f5162c;

    static {
        f5159d = C0683l.m6973c();
        f5160e = new JSONObject();
    }

    public C0675d(Context context) {
        this.f5161b = null;
        this.f5162c = null;
        try {
            C0675d.m6949a(context);
            this.f5161b = C0683l.m6990k(context.getApplicationContext());
            this.f5162c = C0712x.m7120a(context).m7126b();
        } catch (Throwable th) {
            f5159d.m6938b(th);
        }
    }

    private static synchronized C0676e m6949a(Context context) {
        C0676e c0676e;
        synchronized (C0675d.class) {
            if (f5158a == null) {
                f5158a = new C0676e((byte) 0);
            }
            c0676e = f5158a;
        }
        return c0676e;
    }

    public final void m6950a(JSONObject jSONObject, Thread thread) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            if (f5158a != null) {
                f5158a.m6951a(jSONObject2, thread);
            }
            C0689r.m7017a(jSONObject2, "cn", this.f5162c);
            if (this.f5161b != null) {
                jSONObject2.put("tn", this.f5161b);
            }
            if (thread == null) {
                jSONObject.put("ev", jSONObject2);
            } else {
                jSONObject.put("errkv", jSONObject2.toString());
            }
            if (f5160e != null && f5160e.length() > 0) {
                jSONObject.put("eva", f5160e);
            }
        } catch (Throwable th) {
            f5159d.m6938b(th);
        }
    }
}
