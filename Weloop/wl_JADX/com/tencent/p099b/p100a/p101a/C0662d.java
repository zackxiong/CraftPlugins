package com.tencent.p099b.p100a.p101a;

import android.content.Context;
import com.tencent.p095a.p096a.p097a.p098a.C0661h;
import com.tencent.p099b.p100a.C0708t;
import com.tencent.p099b.p100a.C0711w;
import com.tencent.p099b.p100a.ai;
import com.tencent.p099b.p100a.p102b.C0674c;
import com.tencent.p099b.p100a.p102b.C0683l;
import com.tencent.p099b.p100a.p102b.C0689r;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.a.d */
public abstract class C0662d {
    protected static String f5061j;
    private C0711w f5062a;
    protected String f5063b;
    protected long f5064c;
    protected int f5065d;
    protected C0674c f5066e;
    protected int f5067f;
    protected String f5068g;
    protected String f5069h;
    protected String f5070i;
    protected boolean f5071k;
    protected Context f5072l;

    static {
        f5061j = null;
    }

    C0662d(Context context, int i, C0711w c0711w) {
        this.f5063b = null;
        this.f5066e = null;
        this.f5068g = null;
        this.f5069h = null;
        this.f5070i = null;
        this.f5071k = false;
        this.f5062a = null;
        this.f5072l = context;
        this.f5064c = System.currentTimeMillis() / 1000;
        this.f5065d = i;
        this.f5069h = C0708t.m7059b(context);
        this.f5070i = C0683l.m6986i(context);
        this.f5063b = C0708t.m7048a(context);
        if (c0711w != null) {
            this.f5062a = c0711w;
            if (C0683l.m6975c(c0711w.m7116c())) {
                this.f5063b = c0711w.m7116c();
            }
            if (C0683l.m6975c(c0711w.m7117d())) {
                this.f5069h = c0711w.m7117d();
            }
            if (C0683l.m6975c(c0711w.m7115b())) {
                this.f5070i = c0711w.m7115b();
            }
            this.f5071k = c0711w.m7118e();
        }
        this.f5068g = C0708t.m7067d(context);
        this.f5066e = ai.m6901a(context).m6930b(context);
        if (m6865b() != C0666e.NETWORK_DETECTOR) {
            this.f5067f = C0683l.m6995p(context).intValue();
        } else {
            this.f5067f = -C0666e.NETWORK_DETECTOR.m6877a();
        }
        if (!C0661h.m6860b(f5061j)) {
            String e = C0708t.m7070e(context);
            f5061j = e;
            if (!C0683l.m6975c(e)) {
                f5061j = "0";
            }
        }
    }

    private boolean m6863b(JSONObject jSONObject) {
        boolean z = false;
        try {
            C0689r.m7017a(jSONObject, "ky", this.f5063b);
            jSONObject.put("et", m6865b().m6877a());
            if (this.f5066e != null) {
                jSONObject.put("ui", this.f5066e.m6945a());
                C0689r.m7017a(jSONObject, "mc", this.f5066e.m6946b());
                int d = this.f5066e.m6948d();
                jSONObject.put("ut", d);
                if (d == 0 && C0683l.m6998s(this.f5072l) == 1) {
                    jSONObject.put("ia", 1);
                }
            }
            C0689r.m7017a(jSONObject, "cui", this.f5068g);
            if (m6865b() != C0666e.SESSION_ENV) {
                C0689r.m7017a(jSONObject, "av", this.f5070i);
                C0689r.m7017a(jSONObject, "ch", this.f5069h);
            }
            if (this.f5071k) {
                jSONObject.put("impt", 1);
            }
            C0689r.m7017a(jSONObject, "mid", f5061j);
            jSONObject.put("idx", this.f5067f);
            jSONObject.put("si", this.f5065d);
            jSONObject.put("ts", this.f5064c);
            jSONObject.put("dts", C0683l.m6961a(this.f5072l, false));
            z = m6864a(jSONObject);
        } catch (Throwable th) {
        }
        return z;
    }

    public abstract boolean m6864a(JSONObject jSONObject);

    public abstract C0666e m6865b();

    public final long m6866c() {
        return this.f5064c;
    }

    public final C0711w m6867d() {
        return this.f5062a;
    }

    public final Context m6868e() {
        return this.f5072l;
    }

    public final boolean m6869f() {
        return this.f5071k;
    }

    public final String m6870g() {
        try {
            JSONObject jSONObject = new JSONObject();
            m6863b(jSONObject);
            return jSONObject.toString();
        } catch (Throwable th) {
            return "";
        }
    }
}
