package com.tencent.p099b.p100a.p101a;

import android.content.Context;
import com.tencent.p099b.p100a.C0711w;
import com.tencent.p099b.p100a.C0712x;
import com.tencent.p099b.p100a.p102b.C0683l;
import com.tencent.p099b.p100a.p102b.C0689r;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.a.g */
public final class C0668g extends C0662d {
    private static String f5094a;
    private String f5095m;
    private String f5096n;

    static {
        f5094a = null;
    }

    public C0668g(Context context, int i, C0711w c0711w) {
        super(context, i, c0711w);
        this.f5095m = null;
        this.f5096n = null;
        this.f5095m = C0712x.m7120a(context).m7126b();
        if (f5094a == null) {
            f5094a = C0683l.m6985h(context);
        }
    }

    public final void m6880a(String str) {
        this.f5096n = str;
    }

    public final boolean m6881a(JSONObject jSONObject) {
        C0689r.m7017a(jSONObject, "op", f5094a);
        C0689r.m7017a(jSONObject, "cn", this.f5095m);
        jSONObject.put("sp", this.f5096n);
        return true;
    }

    public final C0666e m6882b() {
        return C0666e.NETWORK_MONITOR;
    }
}
