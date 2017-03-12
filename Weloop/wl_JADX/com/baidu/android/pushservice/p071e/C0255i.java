package com.baidu.android.pushservice.p071e;

import android.text.TextUtils;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.db.C0245a;
import com.baidu.android.pushservice.jni.BaiduAppSSOJni;
import com.baidu.android.pushservice.p070d.C0226l;
import com.baidu.android.pushservice.p070d.C0235t.C0234a;
import com.baidu.android.pushservice.p070d.C0236u;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.e.i */
class C0255i implements C0234a {
    final /* synthetic */ String f3125a;
    final /* synthetic */ boolean f3126b;
    final /* synthetic */ C0246a f3127c;
    final /* synthetic */ String f3128d;
    final /* synthetic */ String f3129e;
    final /* synthetic */ int f3130f;
    final /* synthetic */ String f3131g;
    final /* synthetic */ String f3132h;
    final /* synthetic */ C0250e f3133i;

    C0255i(C0250e c0250e, String str, boolean z, C0246a c0246a, String str2, String str3, int i, String str4, String str5) {
        this.f3133i = c0250e;
        this.f3125a = str;
        this.f3126b = z;
        this.f3127c = c0246a;
        this.f3128d = str2;
        this.f3129e = str3;
        this.f3130f = i;
        this.f3131g = str4;
        this.f3132h = str5;
    }

    public void m4782a(boolean z, C0249d c0249d) {
        if (z) {
            C0251o c0256j = new C0256j(this, c0249d);
            C0226l c0226l = new C0226l(PushConstants.METHOD_LAPP_BIND_INTENT, this.f3129e, this.f3128d);
            if (!TextUtils.isEmpty(this.f3129e)) {
                this.f3133i.m4712a(new C0236u(c0226l, this.f3130f, this.f3131g, null, null, this.f3125a, c0256j, this.f3133i.f3112b));
            } else if (!TextUtils.isEmpty(this.f3128d)) {
                String k = C0245a.m4576a().m4627k(this.f3125a);
                String str = "other";
                if (!TextUtils.isEmpty(this.f3132h)) {
                    try {
                        str = new JSONObject(this.f3132h).optString("src");
                    } catch (Exception e) {
                    }
                }
                Object pushHash = BaiduAppSSOJni.getPushHash(this.f3133i.f3112b, k, this.f3128d, str);
                if (!TextUtils.isEmpty(pushHash)) {
                    this.f3133i.m4712a(new C0236u(c0226l, 2, this.f3125a, pushHash, this.f3132h, c0256j, this.f3133i.f3112b));
                } else if (this.f3127c != null) {
                    this.f3127c.m4643c(PushConstants.ERROR_NOT_REGISTER_OR_FOUND, this.f3133i.m4710a((int) PushConstants.ERROR_NOT_REGISTER_OR_FOUND, null, this.f3128d, this.f3129e, null, PushConstants.ERROR_NOT_REGISTER_FOUND, -1));
                }
            }
        } else if (this.f3127c != null) {
            this.f3127c.m4643c(PushConstants.ERROR_GET_LIGHT_INFO_FAIL, this.f3133i.m4710a((int) PushConstants.ERROR_GET_LIGHT_INFO_FAIL, null, this.f3128d, this.f3129e, null, PushConstants.ERROR_GET_LIGHT_INFO_FAIL_MSG, -1));
        }
    }
}
