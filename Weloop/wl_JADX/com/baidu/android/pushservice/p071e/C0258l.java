package com.baidu.android.pushservice.p071e;

import com.baidu.android.pushservice.PushConstants;
import com.umeng.update.ProGuard;
import java.util.HashMap;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.e.l */
class C0258l implements C0251o {
    final /* synthetic */ C0246a f3141a;
    final /* synthetic */ String f3142b;
    final /* synthetic */ int f3143c;
    final /* synthetic */ String f3144d;
    final /* synthetic */ C0250e f3145e;

    C0258l(C0250e c0250e, C0246a c0246a, String str, int i, String str2) {
        this.f3145e = c0250e;
        this.f3141a = c0246a;
        this.f3142b = str;
        this.f3143c = i;
        this.f3144d = str2;
    }

    public void m4785a(int i, HashMap<String, String> hashMap) {
        String str;
        if (this.f3141a != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(ProGuard.f5475c, "subscribe_service");
                jSONObject.put("error", i);
                jSONObject.put("api_key", this.f3142b);
                if (i != 0) {
                    str = hashMap != null ? (String) hashMap.get(PushConstants.EXTRA_ERROR_CODE) : null;
                    try {
                        jSONObject.put(PushConstants.EXTRA_ERROR_CODE, str);
                    } catch (Exception e) {
                        this.f3141a.m4647e(i, hashMap.toString());
                        this.f3141a.m4647e(i, str);
                        if (i == 0) {
                            return;
                        }
                    }
                }
                str = hashMap != null ? (String) hashMap.get("details") : null;
                jSONObject.put("tag", str);
                str = jSONObject.toString();
            } catch (Exception e2) {
                str = null;
                this.f3141a.m4647e(i, hashMap.toString());
                this.f3141a.m4647e(i, str);
                if (i == 0) {
                }
                return;
            }
            this.f3141a.m4647e(i, str);
        }
        if (i == 0 && this.f3143c == 2) {
            this.f3145e.m4732a(new C0249d(this.f3142b, null), null, this.f3144d, null);
        }
    }
}
