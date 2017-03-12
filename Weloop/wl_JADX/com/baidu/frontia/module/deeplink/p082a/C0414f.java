package com.baidu.frontia.module.deeplink.p082a;

import android.util.Log;
import com.umeng.update.ProGuard;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.frontia.module.deeplink.a.f */
class C0414f {
    private String f3690a;
    private String f3691b;
    private String f3692c;
    private String f3693d;
    private boolean f3694e;

    C0414f() {
        this.f3690a = null;
        this.f3691b = null;
        this.f3692c = null;
        this.f3693d = null;
        this.f3694e = false;
    }

    public static List<C0414f> m5398a(JSONObject jSONObject) {
        JSONException jSONException;
        List<C0414f> list = null;
        if (jSONObject == null) {
            return null;
        }
        try {
            List<C0414f> arrayList = new ArrayList();
            try {
                Iterator keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String str = (String) keys.next();
                    C0414f c0414f = new C0414f();
                    c0414f.f3690a = str;
                    JSONObject jSONObject2 = jSONObject.getJSONObject(str);
                    if (jSONObject2 != null) {
                        if (jSONObject2.has(ProGuard.f5475c)) {
                            c0414f.f3691b = jSONObject2.getString(ProGuard.f5475c);
                        }
                        if (jSONObject2.has("desc")) {
                            c0414f.f3692c = jSONObject2.getString("desc");
                        }
                        if (jSONObject2.has("example")) {
                            c0414f.f3693d = jSONObject2.getString("example");
                        }
                        if (jSONObject2.has("option")) {
                            c0414f.f3694e = 1 == jSONObject2.getInt("option");
                        }
                    }
                    arrayList.add(c0414f);
                }
                return arrayList;
            } catch (JSONException e) {
                JSONException jSONException2 = e;
                list = arrayList;
                jSONException = jSONException2;
                Log.e("DLURParams", "error " + jSONException.getMessage());
                return list;
            }
        } catch (JSONException e2) {
            jSONException = e2;
            Log.e("DLURParams", "error " + jSONException.getMessage());
            return list;
        }
    }

    public String m5399a() {
        return this.f3690a;
    }

    public String m5400b() {
        return "\"" + this.f3690a + "\":{" + "\"" + ProGuard.f5475c + "\":" + "\"" + this.f3691b + "\"," + "\"" + "desc" + "\":" + "\"" + this.f3692c + "\"," + "\"" + "example" + "\":" + "\"" + this.f3693d + "\"," + "\"" + "option" + "\":" + (this.f3694e ? 1 : 0) + "}";
    }
}
