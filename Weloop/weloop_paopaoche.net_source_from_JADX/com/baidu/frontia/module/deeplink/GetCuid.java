package com.baidu.frontia.module.deeplink;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.p062a.p063a.C0160a;
import com.baidu.android.p062a.p063a.C0161b;
import com.baidu.android.pushservice.p072f.C0269c;
import com.baidu.android.pushservice.p072f.C0284t;
import com.baidu.android.pushservice.util.NoProGuard;
import com.baidu.frontia.p075a.p081e.C0402c;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class GetCuid implements NoProGuard, C0407d {
    private static final boolean DEBUG = false;
    private static final String TAG = "GetCuid";
    Context mContext;

    public void execute(C0160a c0160a, C0161b c0161b) {
        Map a = c0160a.m4144a();
        if (a != null && a.size() >= 1) {
            String str = (String) a.get("callback");
            if (!TextUtils.isEmpty(str)) {
                this.mContext = C0423g.m5430a().m5437b();
                if (this.mContext != null) {
                    CharSequence a2 = C0402c.m5346a(this.mContext);
                    C0269c c0269c = new C0269c();
                    c0269c.g = "020801";
                    c0269c.h = System.currentTimeMillis();
                    if (a.get("ref_id") != null) {
                        c0269c.f3204c = (String) a.get("ref_id");
                    } else {
                        c0269c.f3204c = "other";
                    }
                    JSONObject jSONObject = new JSONObject();
                    try {
                        if (TextUtils.isEmpty(a2)) {
                            jSONObject.put("error", 1);
                            c0269c.j = 1;
                        } else {
                            jSONObject.put("cuid", a2);
                            jSONObject.put("error", 0);
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
