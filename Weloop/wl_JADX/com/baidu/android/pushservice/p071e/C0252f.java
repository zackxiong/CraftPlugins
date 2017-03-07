package com.baidu.android.pushservice.p071e;

import android.text.TextUtils;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.util.C0374f;
import com.umeng.update.ProGuard;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.e.f */
class C0252f implements C0251o {
    final /* synthetic */ C0246a f3113a;
    final /* synthetic */ String f3114b;
    final /* synthetic */ int f3115c;
    final /* synthetic */ String f3116d;
    final /* synthetic */ boolean f3117e;
    final /* synthetic */ C0250e f3118f;

    C0252f(C0250e c0250e, C0246a c0246a, String str, int i, String str2, boolean z) {
        this.f3118f = c0250e;
        this.f3113a = c0246a;
        this.f3114b = str;
        this.f3115c = i;
        this.f3116d = str2;
        this.f3117e = z;
    }

    public void m4779a(int i, HashMap<String, String> hashMap) {
        if (hashMap != null) {
            String str = (String) hashMap.get("channel_id");
            String str2 = (String) hashMap.get(PushConstants.EXTRA_USER_ID);
            if (this.f3113a != null) {
                CharSequence d = C0374f.m5211d(this.f3118f.f3112b, str, str2);
                JSONObject jSONObject = new JSONObject();
                if (i != 0 || TextUtils.isEmpty(d)) {
                    try {
                        jSONObject.put("error", i);
                        jSONObject.put("api_key", this.f3114b);
                        jSONObject.put(PushConstants.EXTRA_ERROR_CODE, hashMap.get(PushConstants.EXTRA_ERROR_CODE));
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    this.f3113a.m4636a(i, jSONObject.toString());
                    CharSequence charSequence = d;
                } else {
                    try {
                        jSONObject.put(ProGuard.f5475c, "bind_light");
                        jSONObject.put("error", i);
                        jSONObject.put("pushToken", d);
                        jSONObject.put("api_key", this.f3114b);
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                    this.f3113a.m4636a(i, jSONObject.toString());
                    str = d;
                }
            } else {
                str = null;
            }
            if (i == 0) {
                if (this.f3115c != 5) {
                    this.f3118f.m4745a(this.f3114b, null, true);
                }
                this.f3118f.m4717a(this.f3114b, null, null, new C0253g(this, str));
            }
        }
    }
}
