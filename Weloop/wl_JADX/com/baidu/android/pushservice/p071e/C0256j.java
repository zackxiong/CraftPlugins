package com.baidu.android.pushservice.p071e;

import com.baidu.android.pushservice.PushConstants;
import java.util.HashMap;

/* renamed from: com.baidu.android.pushservice.e.j */
class C0256j implements C0251o {
    final /* synthetic */ C0249d f3134a;
    final /* synthetic */ C0255i f3135b;

    C0256j(C0255i c0255i, C0249d c0249d) {
        this.f3135b = c0255i;
        this.f3134a = c0249d;
    }

    public void m4783a(int i, HashMap<String, String> hashMap) {
        if (hashMap != null) {
            String str = (String) hashMap.get("channel_id");
            String str2 = (String) hashMap.get(PushConstants.EXTRA_USER_ID);
            String str3 = null;
            if (i == 0) {
                this.f3135b.f3133i.m4734a(this.f3135b.f3125a, this.f3134a);
            } else {
                str3 = (String) hashMap.get(PushConstants.EXTRA_ERROR_CODE);
            }
            boolean z = this.f3134a.m4705g() && this.f3135b.f3126b;
            if (this.f3135b.f3127c != null) {
                this.f3135b.f3127c.m4643c(i, this.f3135b.f3133i.m4710a(i, str, this.f3135b.f3128d, this.f3135b.f3129e, str2, str3, z ? 0 : 1));
            }
            if (i == 0) {
                this.f3135b.f3133i.m4749a(z, this.f3135b.f3125a, this.f3134a);
            }
        }
    }
}
