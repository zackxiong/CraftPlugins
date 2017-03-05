package com.baidu.frontia.module.deeplink;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.baidu.android.p062a.p063a.C0160a;
import com.baidu.android.p062a.p063a.C0161b;
import com.baidu.android.pushservice.p072f.C0269c;
import com.baidu.android.pushservice.p072f.C0284t;
import com.baidu.android.pushservice.util.NoProGuard;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class GetApn implements NoProGuard, C0407d {
    public static final String APN_TYPE_WIFI = "wifi";
    private static final boolean DEBUG = false;
    public static final String PKGNAME_PREFIX = "com.baidu.searchbox";
    private static final String TAG = "GetApn";
    Context mContext;

    public GetApn() {
        this.mContext = null;
    }

    public void execute(C0160a c0160a, C0161b c0161b) {
        int i = 0;
        Map a = c0160a.m4144a();
        if (a != null && a.size() >= 1) {
            String str = (String) a.get("callback");
            if (!TextUtils.isEmpty(str)) {
                this.mContext = C0423g.m5430a().m5437b();
                if (this.mContext != null) {
                    CharSequence a2;
                    ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo == null) {
                        NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
                        if (allNetworkInfo != null) {
                            int length = allNetworkInfo.length;
                            while (i < length) {
                                NetworkInfo networkInfo = allNetworkInfo[i];
                                if (!networkInfo.isConnectedOrConnecting()) {
                                    networkInfo = activeNetworkInfo;
                                }
                                i++;
                                activeNetworkInfo = networkInfo;
                            }
                        }
                    }
                    String str2 = (activeNetworkInfo == null || !APN_TYPE_WIFI.equals(activeNetworkInfo.getTypeName().toLowerCase())) ? null : APN_TYPE_WIFI;
                    if (str2 == null) {
                        a2 = new C0417c(this.mContext).m5415a();
                    } else {
                        Object obj = str2;
                    }
                    JSONObject jSONObject = new JSONObject();
                    C0269c c0269c = new C0269c();
                    c0269c.g = "020802";
                    c0269c.h = System.currentTimeMillis();
                    if (a.get("ref_id") != null) {
                        c0269c.f3204c = (String) a.get("ref_id");
                    } else {
                        c0269c.f3204c = "other";
                    }
                    try {
                        if (TextUtils.isEmpty(a2)) {
                            jSONObject.put("error", 1);
                            c0269c.j = 1;
                        } else {
                            jSONObject.put("error", 0);
                            jSONObject.put("apn", a2);
                            c0269c.j = 0;
                        }
                    } catch (JSONException e) {
                    }
                    c0161b.m4148a("text/javascript");
                    c0161b.m4146a().put("Cache-Control", "no-cache");
                    c0161b.m4149b(str + " && " + str + "(" + jSONObject.toString() + ");");
                    c0161b.m4147a(200);
                    C0284t.m4930a(this.mContext, c0269c);
                }
            }
        }
    }
}
