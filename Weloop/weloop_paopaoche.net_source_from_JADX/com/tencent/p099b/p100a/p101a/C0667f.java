package com.tencent.p099b.p100a.p101a;

import android.content.Context;
import com.tencent.p099b.p100a.C0708t;
import com.tencent.p099b.p100a.C0711w;
import com.tencent.p099b.p100a.p102b.C0689r;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.a.f */
public final class C0667f extends C0662d {
    public static final C0711w f5093a;

    static {
        C0711w c0711w = new C0711w();
        f5093a = c0711w;
        c0711w.m7113a("A9VH9B8L4GX4");
    }

    public C0667f(Context context) {
        super(context, 0, f5093a);
    }

    public final boolean m6878a(JSONObject jSONObject) {
        C0689r.m7017a(jSONObject, "actky", C0708t.m7048a(this.l));
        return true;
    }

    public final C0666e m6879b() {
        return C0666e.NETWORK_DETECTOR;
    }
}
