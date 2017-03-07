package com.baidu.android.pushservice;

import android.text.TextUtils;
import com.baidu.android.pushservice.p068b.C0196b.C0198a;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.p */
class C0329p extends C0198a {
    final /* synthetic */ IPushLightappListener f3399a;
    final /* synthetic */ String f3400b;
    final /* synthetic */ PushLightapp f3401c;

    C0329p(PushLightapp pushLightapp, IPushLightappListener iPushLightappListener, String str) {
        this.f3401c = pushLightapp;
        this.f3399a = iPushLightappListener;
        this.f3400b = str;
    }

    public void m5096a(int i, String str) {
    }

    public void m5097b(int i, String str) {
        if (this.f3399a != null) {
            if (i != 0) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.optString("api_key", "null").equals("null")) {
                        jSONObject.put("api_key", this.f3400b);
                    }
                    if (!TextUtils.isEmpty(jSONObject.optString(PushConstants.EXTRA_APP_ID, ""))) {
                        jSONObject.remove(PushConstants.EXTRA_APP_ID);
                    }
                    str = jSONObject.toString();
                } catch (JSONException e) {
                }
            }
            this.f3399a.onSubscribeByApiKey(i, str);
        }
    }

    public void m5098c(int i, String str) {
    }
}
