package com.baidu.frontia.module.deeplink;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.android.p062a.p063a.C0160a;
import com.baidu.android.p062a.p063a.C0161b;
import com.baidu.android.pushservice.jni.BaiduAppSSOJni;
import com.baidu.android.pushservice.p072f.p073a.C0264b;
import com.baidu.android.pushservice.util.C0376h;
import com.baidu.android.pushservice.util.C0377i;
import com.baidu.android.pushservice.util.NoProGuard;
import com.umeng.update.ProGuard;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class IsWifiAvailable implements NoProGuard, C0407d {
    private static final String TAG = "IsWifiAvailable";
    Context mContext;

    public void execute(C0160a c0160a, C0161b c0161b) {
        String string;
        Map a = c0160a.m4144a();
        if (a != null && a.size() >= 1) {
            String str = (String) a.get("callback");
            if (!TextUtils.isEmpty(str)) {
                String str2 = (String) a.get("zid");
                this.mContext = C0423g.m5430a().m5437b();
                if (this.mContext == null || TextUtils.isEmpty(str2)) {
                    C0416b.m5403a(c0161b, str, 2, "LocalServer API Params Wrong");
                    return;
                }
                Object obj = null;
                String str3 = "";
                Object obj2 = "";
                try {
                    JSONArray jSONArray = new JSONArray(C0377i.m5262a(this.mContext, str2));
                    List<ScanResult> b = C0377i.m5267b(this.mContext);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            String string2;
                            Object obj3;
                            String str4;
                            JSONObject jSONObject = jSONArray.getJSONObject(0);
                            string = jSONObject.getString("ssid");
                            for (ScanResult scanResult : b) {
                                if (!TextUtils.isEmpty(scanResult.SSID) && scanResult.SSID.replace("\"", "").equals(string)) {
                                    try {
                                        string2 = jSONObject.getString("psk");
                                        String str5 = string;
                                        obj3 = 1;
                                        str4 = str5;
                                        break;
                                    } catch (Exception e) {
                                        str3 = string;
                                    }
                                }
                            }
                            string2 = str4;
                            obj3 = obj;
                            str4 = str3;
                            str3 = str4;
                            obj = obj3;
                            str4 = string2;
                        } catch (Exception e2) {
                        }
                        if (obj != null) {
                            break;
                        }
                    }
                    string = str3;
                } catch (Exception e3) {
                    string = str3;
                }
                if (obj != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put(ProGuard.f5475c, 0);
                        jSONObject2.put("ssid", string);
                        jSONObject2.put("psk", obj2);
                        C0264b.m4816a(this.mContext, "com.baidu.push.wifi.WIFI_INFO", BaiduAppSSOJni.getEncrypted(str2, jSONObject2.toString()), System.currentTimeMillis() + 300000);
                        C0264b.m4815a(this.mContext, "com.baidu.push.wifi.ZID", str2);
                    } catch (JSONException e4) {
                        Log.e(TAG, "error " + e4.getMessage());
                    }
                    C0376h.m5259a(this.mContext, "020807", str2, string, null, null, 0);
                    C0416b.m5403a(c0161b, str, 0, "zwifi available " + string);
                    return;
                }
                C0376h.m5259a(this.mContext, "020807", str2, string, null, null, 1);
                C0416b.m5403a(c0161b, str, 1, "zwifi unavailable ");
            }
        }
    }
}
