package com.baidu.android.pushservice.p072f;

import com.umeng.update.ProGuard;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.f.h */
public class C0273h {
    public String f3229a;
    public String f3230b;
    private String f3231c;
    private boolean f3232d;
    private String f3233e;
    private JSONArray f3234f;

    public C0273h() {
        this.f3231c = "";
        this.f3232d = true;
        this.f3233e = "";
        this.f3234f = new JSONArray();
    }

    public String m4878a() {
        return this.f3231c;
    }

    public void m4879a(String str) {
        this.f3231c = str;
    }

    public void m4880a(boolean z) {
        this.f3232d = z;
    }

    public String m4881b() {
        return this.f3233e;
    }

    public void m4882b(String str) {
        this.f3233e = str;
    }

    public void m4883c(String str) {
        this.f3234f.put(str);
    }

    public boolean m4884c() {
        return this.f3232d;
    }

    public JSONArray m4885d() {
        return this.f3234f;
    }

    public JSONObject m4886e() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ProGuard.f5477e, m4878a());
        jSONObject.put("package_name", m4881b());
        jSONObject.put("msg_switcher", m4884c());
        jSONObject.put("black_list", m4885d());
        return jSONObject;
    }
}
