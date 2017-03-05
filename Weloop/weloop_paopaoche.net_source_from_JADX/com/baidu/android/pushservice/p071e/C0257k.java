package com.baidu.android.pushservice.p071e;

import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.db.C0245a;
import java.util.HashMap;

/* renamed from: com.baidu.android.pushservice.e.k */
class C0257k implements C0251o {
    final /* synthetic */ boolean f3136a;
    final /* synthetic */ String f3137b;
    final /* synthetic */ String f3138c;
    final /* synthetic */ C0246a f3139d;
    final /* synthetic */ C0250e f3140e;

    C0257k(C0250e c0250e, boolean z, String str, String str2, C0246a c0246a) {
        this.f3140e = c0250e;
        this.f3136a = z;
        this.f3137b = str;
        this.f3138c = str2;
        this.f3139d = c0246a;
    }

    public void m4784a(int i, HashMap<String, String> hashMap) {
        String str;
        if (i != 0) {
            str = (String) hashMap.get(PushConstants.EXTRA_ERROR_CODE);
        } else if (this.f3136a) {
            this.f3140e.m4721e(this.f3137b, this.f3138c);
            C0245a.m4576a().m4599b(this.f3137b, this.f3138c);
            str = null;
        } else {
            this.f3140e.m4745a(null, this.f3138c, false);
            str = null;
        }
        if (this.f3139d != null) {
            String a = this.f3140e.m4710a(i, null, this.f3138c, this.f3137b, null, str, -1);
            if (this.f3136a) {
                this.f3139d.m4645d(i, a);
            } else {
                this.f3139d.m4641b(i, a);
            }
        }
    }
}
