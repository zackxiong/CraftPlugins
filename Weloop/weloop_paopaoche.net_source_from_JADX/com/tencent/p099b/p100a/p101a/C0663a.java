package com.tencent.p099b.p100a.p101a;

import android.content.Context;
import com.tencent.p099b.p100a.C0710v;
import com.tencent.p099b.p100a.C0711w;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.a.a */
public final class C0663a extends C0662d {
    protected C0664b f5073a;
    private long f5074m;

    public C0663a(Context context, int i, String str, C0711w c0711w) {
        super(context, i, c0711w);
        this.f5073a = new C0664b();
        this.f5074m = -1;
        this.f5073a.f5075a = str;
    }

    public final C0664b m6871a() {
        return this.f5073a;
    }

    public final boolean m6872a(JSONObject jSONObject) {
        jSONObject.put("ei", this.f5073a.f5075a);
        if (this.f5074m > 0) {
            jSONObject.put("du", this.f5074m);
        }
        if (this.f5073a.f5076b == null) {
            if (this.f5073a.f5075a != null) {
                Map a = C0710v.m7092a(this.f5073a.f5075a);
                if (a != null && a.size() > 0) {
                    if (this.f5073a.f5077c == null || this.f5073a.f5077c.length() == 0) {
                        this.f5073a.f5077c = new JSONObject(a);
                    } else {
                        for (Entry entry : a.entrySet()) {
                            try {
                                this.f5073a.f5077c.put(entry.getKey().toString(), entry.getValue());
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }
            }
            jSONObject.put("kv", this.f5073a.f5077c);
        } else {
            jSONObject.put("ar", this.f5073a.f5076b);
        }
        return true;
    }

    public final C0666e m6873b() {
        return C0666e.CUSTOM;
    }
}
