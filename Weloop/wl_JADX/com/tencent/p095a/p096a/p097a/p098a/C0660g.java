package com.tencent.p095a.p096a.p097a.p098a;

import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* renamed from: com.tencent.a.a.a.a.g */
public final class C0660g {
    private static C0660g f5057d;
    private Map<Integer, C0655f> f5058a;
    private int f5059b;
    private Context f5060c;

    static {
        f5057d = null;
    }

    private C0660g(Context context) {
        this.f5058a = null;
        this.f5059b = 0;
        this.f5060c = null;
        this.f5060c = context.getApplicationContext();
        this.f5058a = new HashMap(3);
        this.f5058a.put(Integer.valueOf(1), new C0659e(context));
        this.f5058a.put(Integer.valueOf(2), new C0656b(context));
        this.f5058a.put(Integer.valueOf(4), new C0658d(context));
    }

    private C0657c m6850a(List<Integer> list) {
        if (list != null && list.size() >= 0) {
            for (Integer num : list) {
                C0655f c0655f = (C0655f) this.f5058a.get(num);
                if (c0655f != null) {
                    C0657c c = c0655f.m6837c();
                    if (c != null && C0661h.m6860b(c.f5055c)) {
                        return c;
                    }
                }
            }
        }
        return new C0657c();
    }

    public static synchronized C0660g m6851a(Context context) {
        C0660g c0660g;
        synchronized (C0660g.class) {
            if (f5057d == null) {
                f5057d = new C0660g(context);
            }
            c0660g = f5057d;
        }
        return c0660g;
    }

    public final C0657c m6852a() {
        return m6850a(new ArrayList(Arrays.asList(new Integer[]{Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(4)})));
    }

    public final void m6853a(String str) {
        C0657c a = m6852a();
        a.f5055c = str;
        if (!C0661h.m6858a(a.f5053a)) {
            a.f5053a = C0661h.m6854a(this.f5060c);
        }
        if (!C0661h.m6858a(a.f5054b)) {
            a.f5054b = C0661h.m6859b(this.f5060c);
        }
        a.f5056d = System.currentTimeMillis();
        for (Entry value : this.f5058a.entrySet()) {
            ((C0655f) value.getValue()).m6833a(a);
        }
    }
}
