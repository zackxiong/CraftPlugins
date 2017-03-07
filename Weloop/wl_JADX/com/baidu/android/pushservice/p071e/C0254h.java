package com.baidu.android.pushservice.p071e;

import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.db.C0245a;
import java.util.HashMap;

/* renamed from: com.baidu.android.pushservice.e.h */
class C0254h implements C0251o {
    final /* synthetic */ String f3121a;
    final /* synthetic */ boolean f3122b;
    final /* synthetic */ C0246a f3123c;
    final /* synthetic */ C0250e f3124d;

    C0254h(C0250e c0250e, String str, boolean z, C0246a c0246a) {
        this.f3124d = c0250e;
        this.f3121a = str;
        this.f3122b = z;
        this.f3123c = c0246a;
    }

    public void m4781a(int i, HashMap<String, String> hashMap) {
        String str;
        if (i == 0) {
            this.f3124d.m4745a(this.f3121a, null, false);
            if (this.f3122b) {
                C0245a.m4576a().m4581a(this.f3121a);
                str = null;
            }
            str = null;
        } else {
            if (hashMap != null) {
                str = (String) hashMap.get(PushConstants.EXTRA_ERROR_CODE);
            }
            str = null;
        }
        if (this.f3123c != null) {
            this.f3123c.m4641b(i, this.f3124d.m4710a(i, null, null, this.f3121a, null, str, -1));
        }
    }
}
