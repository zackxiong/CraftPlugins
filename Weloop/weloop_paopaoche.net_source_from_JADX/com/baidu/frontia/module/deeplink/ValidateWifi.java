package com.baidu.frontia.module.deeplink;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.p062a.p063a.C0160a;
import com.baidu.android.p062a.p063a.C0161b;
import com.baidu.android.pushservice.jni.BaiduAppSSOJni;
import com.baidu.android.pushservice.p072f.p073a.C0264b;
import com.baidu.android.pushservice.util.C0376h;
import com.baidu.android.pushservice.util.C0377i;
import com.baidu.android.pushservice.util.NoProGuard;
import com.umeng.update.ProGuard;
import java.util.Map;
import org.json.JSONObject;

public class ValidateWifi implements NoProGuard, C0407d {
    private static final String TAG = "ValidateWifi";
    Context mContext;

    public void execute(C0160a c0160a, C0161b c0161b) {
        Map a = c0160a.m4144a();
        if (a != null && a.size() >= 1) {
            String str = (String) a.get("callback");
            if (!TextUtils.isEmpty(str)) {
                String str2 = (String) a.get("params");
                String str3 = (String) a.get("zid");
                this.mContext = C0423g.m5430a().m5437b();
                if (this.mContext == null || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
                    C0416b.m5403a(c0161b, str, 2, "LocalServer API Params Wrong");
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(BaiduAppSSOJni.getDecrypted(str3, str2));
                    String string = jSONObject.getString("ssid");
                    str2 = jSONObject.getString("psk");
                    if (TextUtils.isEmpty(string) || TextUtils.isEmpty(str2)) {
                        C0416b.m5403a(c0161b, str, 2, "LocalServer API Params Wrong");
                        return;
                    }
                    jSONObject.put(ProGuard.f5475c, 1);
                    C0264b.m4816a(this.mContext, "com.baidu.push.wifi.WIFI_INFO", BaiduAppSSOJni.getEncrypted(str3, jSONObject.toString()), System.currentTimeMillis() + 300000);
                    C0264b.m4815a(this.mContext, "com.baidu.push.wifi.ZID", str3);
                    C0416b.m5403a(c0161b, str, 0, " VALIDATING ... ");
                    C0377i.m5266a(this.mContext, string, str2);
                    new C0426j(this).start();
                    C0376h.m5259a(this.mContext, "020805", str3, string, null, null, 0);
                } catch (Exception e) {
                    C0416b.m5403a(c0161b, str, 2, "LocalServer API Params Wrong");
                }
            }
        }
    }
}
