package com.baidu.frontia.module.deeplink;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.text.TextUtils;
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

public class AccessWifi implements NoProGuard, C0407d {
    Context mContext;

    public void execute(C0160a c0160a, C0161b c0161b) {
        String string;
        Map a = c0160a.m4144a();
        if (a != null && a.size() >= 1) {
            String str = (String) a.get("callback");
            if (!TextUtils.isEmpty(str)) {
                String str2 = (String) a.get("params");
                String str3 = (String) a.get("zid");
                this.mContext = C0423g.m5430a().m5437b();
                if (this.mContext == null || TextUtils.isEmpty(str3)) {
                    C0416b.m5403a(c0161b, str, 2, "LocalServer API Params Wrong");
                    return;
                }
                JSONObject jSONObject;
                Object string2;
                CharSequence string3;
                String str4 = null;
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        jSONObject = new JSONObject(BaiduAppSSOJni.getDecrypted(str3, str2));
                        string = jSONObject.getString("ssid");
                        str4 = jSONObject.getString("psk");
                        string2 = jSONObject.getString("url");
                        string3 = jSONObject.getString("fail_url");
                    } catch (Exception e) {
                        C0416b.m5403a(c0161b, str, 2, "LocalServer API Params Wrong");
                        return;
                    }
                } else if (str3.equals(C0264b.m4817a(this.mContext, "com.baidu.push.wifi.ZID"))) {
                    try {
                        JSONObject jSONObject2 = new JSONObject(BaiduAppSSOJni.getDecrypted(str3, C0264b.m4817a(this.mContext, "com.baidu.push.wifi.WIFI_INFO")));
                        str4 = jSONObject2.getString("ssid");
                        try {
                            str2 = jSONObject2.getString("psk");
                            string = str4;
                        } catch (Exception e2) {
                            str2 = str4;
                            string = str2;
                            str2 = null;
                            string2 = null;
                            str4 = str2;
                            string3 = null;
                            if (!TextUtils.isEmpty(string)) {
                            }
                            C0416b.m5403a(c0161b, str, 2, "LocalServer API Params Wrong");
                            return;
                        }
                    } catch (Exception e3) {
                        str2 = str4;
                        string = str2;
                        str2 = null;
                        string2 = null;
                        str4 = str2;
                        string3 = null;
                        if (TextUtils.isEmpty(string)) {
                        }
                        C0416b.m5403a(c0161b, str, 2, "LocalServer API Params Wrong");
                        return;
                    }
                    string2 = null;
                    str4 = str2;
                    string3 = null;
                } else {
                    try {
                        String str5;
                        JSONArray jSONArray = new JSONArray(C0377i.m5262a(this.mContext, str3));
                        if (jSONArray.length() > 1) {
                            List<ScanResult> b = C0377i.m5267b(this.mContext);
                            int i = 0;
                            str5 = str4;
                            str4 = null;
                            Object obj = null;
                            while (i < jSONArray.length()) {
                                try {
                                    try {
                                        Object obj2;
                                        JSONObject jSONObject3 = jSONArray.getJSONObject(0);
                                        String string4 = jSONObject3.getString("ssid");
                                        for (ScanResult scanResult : b) {
                                            if (!TextUtils.isEmpty(scanResult.SSID)) {
                                                if (scanResult.SSID.replace("\"", "").equals(string4)) {
                                                    try {
                                                        string = jSONObject3.getString("psk");
                                                        obj2 = 1;
                                                        str4 = string4;
                                                        break;
                                                    } catch (Exception e4) {
                                                        str5 = string4;
                                                    }
                                                }
                                            }
                                        }
                                        obj2 = obj;
                                        string = str4;
                                        str4 = str5;
                                        str5 = str4;
                                        str4 = string;
                                        obj = obj2;
                                    } catch (Exception e5) {
                                    }
                                    if (obj != null) {
                                        break;
                                    }
                                    i++;
                                } catch (Exception e6) {
                                    str2 = str4;
                                    string = str5;
                                }
                            }
                        } else {
                            JSONObject jSONObject4 = jSONArray.getJSONObject(0);
                            str5 = jSONObject4.getString("ssid");
                            try {
                                str4 = jSONObject4.getString("psk");
                            } catch (Exception e7) {
                                str2 = null;
                                string = str5;
                                string2 = null;
                                str4 = str2;
                                string3 = null;
                                if (TextUtils.isEmpty(string)) {
                                }
                                C0416b.m5403a(c0161b, str, 2, "LocalServer API Params Wrong");
                                return;
                            }
                        }
                        string3 = null;
                        string2 = null;
                        string = str5;
                    } catch (Exception e8) {
                        str2 = null;
                        string = str4;
                        string2 = null;
                        str4 = str2;
                        string3 = null;
                        if (TextUtils.isEmpty(string)) {
                        }
                        C0416b.m5403a(c0161b, str, 2, "LocalServer API Params Wrong");
                        return;
                    }
                }
                if (TextUtils.isEmpty(string) || TextUtils.isEmpty(str4)) {
                    C0416b.m5403a(c0161b, str, 2, "LocalServer API Params Wrong");
                    return;
                }
                jSONObject = new JSONObject();
                try {
                    jSONObject.put(ProGuard.f5475c, 0);
                    jSONObject.put("ssid", string);
                    jSONObject.put("psk", str4);
                    if (!TextUtils.isEmpty(string2)) {
                        jSONObject.put("url", string2);
                    }
                    if (!TextUtils.isEmpty(string3)) {
                        jSONObject.put("fail_url", string3);
                    }
                    C0264b.m4816a(this.mContext, "com.baidu.push.wifi.WIFI_INFO", BaiduAppSSOJni.getEncrypted(str3, jSONObject.toString()), System.currentTimeMillis() + 300000);
                    C0264b.m4815a(this.mContext, "com.baidu.push.wifi.ZID", str3);
                    C0416b.m5403a(c0161b, str, 0, " ACCESSING ... ");
                    C0377i.m5266a(this.mContext, string, str4);
                } catch (JSONException e9) {
                    e9.printStackTrace();
                }
                C0376h.m5259a(this.mContext, "020806", str3, string, null, string2, 0);
                new C0415a(this).start();
            }
        }
    }
}
