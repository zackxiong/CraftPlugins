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
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class GetNetworkType implements NoProGuard, C0407d {
    Context mContext;

    private int getApnId(String str) {
        Map hashMap = new HashMap();
        hashMap.put("3gnet", Integer.valueOf(21));
        hashMap.put("3gwap", Integer.valueOf(22));
        hashMap.put("cmnet", Integer.valueOf(31));
        hashMap.put("uninet", Integer.valueOf(32));
        hashMap.put("ctnet", Integer.valueOf(33));
        hashMap.put("cmwap", Integer.valueOf(41));
        hashMap.put("uniwap", Integer.valueOf(42));
        hashMap.put("ctwap", Integer.valueOf(43));
        return ((str != null ? 1 : 0) & hashMap.containsKey(str)) != 0 ? ((Integer) hashMap.get(str)).intValue() : 5;
    }

    public void execute(C0160a c0160a, C0161b c0161b) {
        Map a = c0160a.m4144a();
        if (a != null && a.size() >= 1) {
            String str = (String) a.get("callback");
            if (!TextUtils.isEmpty(str)) {
                this.mContext = C0423g.m5430a().m5437b();
                if (this.mContext != null) {
                    Object obj = "5_0";
                    NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
                    if (activeNetworkInfo != null) {
                        int subtype = activeNetworkInfo.getSubtype();
                        String extraInfo = activeNetworkInfo.getExtraInfo();
                        int type = activeNetworkInfo.getType();
                        if (type != 1) {
                            type = getApnId(extraInfo);
                        }
                        obj = type + "_" + subtype;
                    }
                    C0269c c0269c = new C0269c();
                    c0269c.g = "020804";
                    c0269c.h = System.currentTimeMillis();
                    if (a.get("ref_id") != null) {
                        c0269c.f3204c = (String) a.get("ref_id");
                    } else {
                        c0269c.f3204c = "other";
                    }
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("networkType", obj);
                        jSONObject.put("error", 0);
                    } catch (JSONException e) {
                        try {
                            jSONObject.put("networkType", obj);
                            jSONObject.put("error", 1);
                        } catch (Exception e2) {
                        }
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
