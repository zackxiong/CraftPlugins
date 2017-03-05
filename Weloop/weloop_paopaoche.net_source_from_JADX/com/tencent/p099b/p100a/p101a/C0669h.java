package com.tencent.p099b.p100a.p101a;

import android.content.Context;
import com.tencent.p099b.p100a.C0711w;
import com.tencent.p099b.p100a.p102b.C0675d;
import com.tencent.p099b.p100a.p102b.C0683l;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.a.h */
public final class C0669h extends C0662d {
    private C0675d f5097a;
    private JSONObject f5098m;

    public C0669h(Context context, int i, JSONObject jSONObject, C0711w c0711w) {
        super(context, i, c0711w);
        this.f5098m = null;
        this.f5097a = new C0675d(context);
        this.f5098m = jSONObject;
    }

    public final boolean m6883a(JSONObject jSONObject) {
        if (this.f5066e != null) {
            jSONObject.put("ut", this.f5066e.m6948d());
        }
        if (this.f5098m != null) {
            jSONObject.put("cfg", this.f5098m);
        }
        if (C0683l.m7000u(this.l)) {
            jSONObject.put("ncts", 1);
        }
        this.f5097a.m6950a(jSONObject, null);
        return true;
    }

    public final C0666e m6884b() {
        return C0666e.SESSION_ENV;
    }
}
