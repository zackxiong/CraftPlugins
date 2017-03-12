package com.baidu.android.pushservice.util;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.android.pushservice.jni.BaiduAppSSOJni;
import com.baidu.android.pushservice.p072f.p073a.C0264b;
import com.baidu.frontia.module.deeplink.GetApn;
import com.baidu.frontia.p075a.p081e.C0401b;
import com.baidu.frontia.p075a.p081e.C0402c;
import com.baidu.frontia.p075a.p081e.C0405e;
import com.baidu.mapapi.SDKInitializer;
import com.umeng.update.ProGuard;
import java.net.URLEncoder;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.util.i */
public class C0377i {
    private static WifiConfiguration m5260a(String str, String str2, int i) {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.allowedAuthAlgorithms.clear();
        wifiConfiguration.allowedGroupCiphers.clear();
        wifiConfiguration.allowedKeyManagement.clear();
        wifiConfiguration.allowedPairwiseCiphers.clear();
        wifiConfiguration.allowedProtocols.clear();
        wifiConfiguration.SSID = "\"" + str + "\"";
        if (i == 1) {
            wifiConfiguration.wepKeys[0] = "";
            wifiConfiguration.allowedKeyManagement.set(0);
            wifiConfiguration.wepTxKeyIndex = 0;
        }
        if (i == 2) {
            wifiConfiguration.hiddenSSID = true;
            wifiConfiguration.wepKeys[0] = "\"" + str2 + "\"";
            wifiConfiguration.allowedAuthAlgorithms.set(1);
            wifiConfiguration.allowedGroupCiphers.set(3);
            wifiConfiguration.allowedGroupCiphers.set(2);
            wifiConfiguration.allowedGroupCiphers.set(0);
            wifiConfiguration.allowedGroupCiphers.set(1);
            wifiConfiguration.allowedKeyManagement.set(0);
            wifiConfiguration.wepTxKeyIndex = 0;
        }
        if (i == 3) {
            wifiConfiguration.preSharedKey = "\"" + str2 + "\"";
            wifiConfiguration.hiddenSSID = true;
            wifiConfiguration.allowedAuthAlgorithms.set(0);
            wifiConfiguration.allowedGroupCiphers.set(2);
            wifiConfiguration.allowedKeyManagement.set(1);
            wifiConfiguration.allowedPairwiseCiphers.set(1);
            wifiConfiguration.allowedGroupCiphers.set(3);
            wifiConfiguration.allowedPairwiseCiphers.set(2);
            wifiConfiguration.status = 2;
        }
        return wifiConfiguration;
    }

    public static String m5261a(Context context) {
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService(GetApn.APN_TYPE_WIFI)).getConnectionInfo();
        if (connectionInfo == null) {
            return null;
        }
        String ssid = connectionInfo.getSSID();
        return ssid != null ? ssid.replace("\"", "") : ssid;
    }

    public static String m5262a(Context context, String str) {
        String a = C0402c.m5346a(context);
        String d = C0371c.m5156d(context);
        String a2 = C0371c.m5149a();
        List<ScanResult> b = C0377i.m5267b(context);
        JSONArray jSONArray = new JSONArray();
        for (ScanResult scanResult : b) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("ssid", scanResult.SSID.replace("\"", ""));
                jSONObject.put("bssid", scanResult.BSSID);
                int i = scanResult.level + 96;
                if (i > 99) {
                    i = 99;
                } else if (i < 0) {
                    i = 0;
                }
                jSONObject.put("strength", i);
                jSONObject.put("capabilities", scanResult.capabilities);
                jSONArray.put(jSONObject.toString());
            } catch (Exception e) {
            }
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("cuid", a);
            jSONObject2.put("apinfo", d);
            jSONObject2.put("cip", a2);
            jSONObject2.put("zid", str);
            jSONObject2.put("wifi_infos", jSONArray.toString());
            jSONObject2.put("sign", C0377i.m5263a("POST", "https://cp01-rdqa-dev404.cp01.baidu.com:8443/rest/2.0/zwifi/getzidwifiinfo", jSONObject2));
            JSONObject jSONObject3 = new JSONObject(C0369a.m5147a("https://cp01-rdqa-dev404.cp01.baidu.com:8443/rest/2.0/zwifi/getzidwifiinfo", jSONObject2));
            if (jSONObject3.optInt(SDKInitializer.SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE, -1) == 0) {
                return BaiduAppSSOJni.getDecrypted(str, jSONObject3.optString("response_params"));
            }
        } catch (Exception e2) {
        }
        return null;
    }

    private static String m5263a(String str, String str2, JSONObject jSONObject) {
        String str3;
        Iterator keys = jSONObject.keys();
        ArrayList arrayList = new ArrayList();
        while (keys.hasNext()) {
            str3 = (String) keys.next();
            String str4 = null;
            try {
                str4 = jSONObject.getString(str3);
            } catch (JSONException e) {
            }
            arrayList.add(str3 + "=" + str4);
        }
        Collections.sort(arrayList, Collator.getInstance(Locale.ENGLISH));
        str3 = str + str2;
        int i = 0;
        while (i < arrayList.size()) {
            String str5 = str3 + ((String) arrayList.get(i));
            i++;
            str3 = str5;
        }
        Log.d("WifiUtils", "unsign: " + str3);
        return C0405e.m5358a(URLEncoder.encode(str3).getBytes(), false);
    }

    private static List<ScanResult> m5264a(List<ScanResult> list) {
        int i = 0;
        List arrayList = new ArrayList();
        List<ScanResult> arrayList2 = new ArrayList();
        if (list == null || list.size() == 0) {
            return arrayList2;
        }
        int i2;
        for (i2 = 0; i2 < list.size(); i2++) {
            CharSequence replace = ((ScanResult) list.get(i2)).SSID.replace("\"", "");
            if (!(TextUtils.isEmpty(replace) || arrayList.contains(replace))) {
                arrayList.add(replace);
                arrayList2.add(list.get(i2));
            }
        }
        while (i < arrayList2.size()) {
            for (i2 = 1; i2 < arrayList2.size(); i2++) {
                if (((ScanResult) arrayList2.get(i)).level < ((ScanResult) arrayList2.get(i2)).level) {
                    ScanResult scanResult = (ScanResult) arrayList2.get(i);
                    arrayList2.set(i, arrayList2.get(i2));
                    arrayList2.set(i2, scanResult);
                }
            }
            i++;
        }
        return arrayList2;
    }

    public static synchronized void m5265a(Context context, boolean z) {
        synchronized (C0377i.class) {
            Object a = C0264b.m4817a(context, "com.baidu.push.wifi.WIFI_INFO");
            Object a2 = C0264b.m4817a(context, "com.baidu.push.wifi.ZID");
            if (!(TextUtils.isEmpty(a) || TextUtils.isEmpty(a2))) {
                try {
                    JSONObject jSONObject = new JSONObject(BaiduAppSSOJni.getDecrypted(a2, a));
                    int optInt = jSONObject.optInt(ProGuard.f5475c, 0);
                    String optString = jSONObject.optString("ssid", "");
                    Object optString2 = jSONObject.optString("url", "");
                    Object optString3 = jSONObject.optString("fail_url", "");
                    String optString4 = jSONObject.optString("val_token", "");
                    String optString5 = jSONObject.optString("psk", "");
                    boolean equals = optString.equals(C0377i.m5261a(context));
                    if (!equals || TextUtils.isEmpty(optString2)) {
                        if (!equals) {
                            if (!TextUtils.isEmpty(optString3)) {
                                C0374f.m5217f(context, null, optString3);
                            }
                        }
                        if (z) {
                        }
                    } else {
                        C0374f.m5217f(context, null, optString2);
                    }
                    if (equals && optInt == 1) {
                        String a3 = C0402c.m5346a(context);
                        String d = C0371c.m5156d(context);
                        String a4 = C0371c.m5149a();
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("cuid", a3);
                        jSONObject2.put("apinfo", d);
                        jSONObject2.put("cip", a4);
                        jSONObject2.put("ssid", optString);
                        jSONObject2.put("bssid", C0377i.m5268c(context).getBSSID());
                        jSONObject2.put("zid", a2);
                        jSONObject2.put("psk", C0401b.m5343a(optString5.getBytes(), "utf-8"));
                        jSONObject2.put("val_token", optString4);
                        List<ScanResult> b = C0377i.m5267b(context);
                        JSONArray jSONArray = new JSONArray();
                        for (ScanResult scanResult : b) {
                            JSONObject jSONObject3 = new JSONObject();
                            try {
                                jSONObject3.put("ssid", scanResult.SSID.replace("\"", ""));
                                jSONObject3.put("bssid", scanResult.BSSID);
                                int i = scanResult.level + 96;
                                if (i > 99) {
                                    i = 99;
                                } else if (i < 0) {
                                    i = 0;
                                }
                                jSONObject3.put("strength", i);
                                jSONObject3.put("capabilities", scanResult.capabilities);
                                jSONArray.put(jSONObject3.toString());
                            } catch (Exception e) {
                            }
                        }
                        jSONObject2.put("wifi_infos", jSONArray.toString());
                        jSONObject2.put("sign", C0377i.m5263a("POST", "https://cp01-rdqa-dev404.cp01.baidu.com:8443/rest/2.0/zwifi/validate", jSONObject2));
                        new C0378j(jSONObject2).start();
                        C0264b.m4820b(context, "com.baidu.push.wifi.ZID");
                        C0264b.m4820b(context, "com.baidu.push.wifi.WIFI_INFO");
                    }
                } catch (Exception e2) {
                }
            }
        }
    }

    public static boolean m5266a(Context context, String str, String str2) {
        WifiManager wifiManager = (WifiManager) context.getSystemService(GetApn.APN_TYPE_WIFI);
        if (!wifiManager.isWifiEnabled()) {
            wifiManager.setWifiEnabled(true);
        }
        for (WifiConfiguration wifiConfiguration : wifiManager.getConfiguredNetworks()) {
            if (wifiConfiguration.SSID != null && str.equals(wifiConfiguration.SSID.replace("\"", ""))) {
                wifiManager.removeNetwork(wifiConfiguration.networkId);
            }
        }
        return wifiManager.enableNetwork(wifiManager.addNetwork(C0377i.m5260a(str, str2, 3)), true);
    }

    public static List<ScanResult> m5267b(Context context) {
        return C0377i.m5264a(((WifiManager) context.getSystemService(GetApn.APN_TYPE_WIFI)).getScanResults());
    }

    private static WifiInfo m5268c(Context context) {
        return ((WifiManager) context.getSystemService(GetApn.APN_TYPE_WIFI)).getConnectionInfo();
    }
}
