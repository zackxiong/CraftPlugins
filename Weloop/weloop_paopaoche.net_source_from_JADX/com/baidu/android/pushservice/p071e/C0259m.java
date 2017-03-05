package com.baidu.android.pushservice.p071e;

import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.p070d.C0235t.C0234a;
import com.umeng.update.ProGuard;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.e.m */
class C0259m implements C0234a {
    final /* synthetic */ String f3146a;
    final /* synthetic */ String f3147b;
    final /* synthetic */ String f3148c;
    final /* synthetic */ String f3149d;
    final /* synthetic */ String f3150e;
    final /* synthetic */ String f3151f;
    final /* synthetic */ C0246a f3152g;
    final /* synthetic */ int f3153h;
    final /* synthetic */ C0250e f3154i;

    C0259m(C0250e c0250e, String str, String str2, String str3, String str4, String str5, String str6, C0246a c0246a, int i) {
        this.f3154i = c0250e;
        this.f3146a = str;
        this.f3147b = str2;
        this.f3148c = str3;
        this.f3149d = str4;
        this.f3150e = str5;
        this.f3151f = str6;
        this.f3152g = c0246a;
        this.f3153h = i;
    }

    public void m4786a(boolean z, C0249d c0249d) {
        if (z) {
            this.f3154i.m4719b(this.f3146a, this.f3147b, this.f3148c, this.f3149d, this.f3150e, this.f3151f, this.f3152g, this.f3153h);
            this.f3154i.m4737a(c0249d.m4694b(), c0249d.m4696c(), c0249d.m4698d(), c0249d.m4702f());
            return;
        }
        String str = null;
        if (this.f3152g != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(ProGuard.f5475c, "subscribe_service");
                jSONObject.put("error", PushConstants.ERROR_GET_LIGHT_INFO_FAIL);
                jSONObject.put("api_key", this.f3146a);
                jSONObject.put(PushConstants.EXTRA_ERROR_CODE, PushConstants.ERROR_GET_LIGHT_INFO_FAIL_MSG);
                jSONObject.put("tag", this.f3147b);
                str = jSONObject.toString();
            } catch (Exception e) {
            }
            this.f3152g.m4647e(PushConstants.ERROR_GET_LIGHT_INFO_FAIL, str);
        }
    }
}
