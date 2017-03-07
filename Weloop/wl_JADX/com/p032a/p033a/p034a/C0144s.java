package com.p032a.p033a.p034a;

import com.p032a.p033a.p034a.C0143r.C0142d;
import java.util.Hashtable;

/* renamed from: com.a.a.a.s */
class C0144s implements C0142d {
    private final Hashtable f2263a;

    C0144s() {
        this.f2263a = new Hashtable();
    }

    public String m3553a(String str) {
        String str2 = (String) this.f2263a.get(str);
        if (str2 != null) {
            return str2;
        }
        this.f2263a.put(str, str);
        return str;
    }
}
