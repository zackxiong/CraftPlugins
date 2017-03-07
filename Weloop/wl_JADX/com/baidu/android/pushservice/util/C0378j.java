package com.baidu.android.pushservice.util;

import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.util.j */
final class C0378j extends Thread {
    final /* synthetic */ JSONObject f3609a;

    C0378j(JSONObject jSONObject) {
        this.f3609a = jSONObject;
    }

    public void run() {
        try {
            C0369a.m5147a("https://cp01-rdqa-dev404.cp01.baidu.com:8443/rest/2.0/zwifi/validate", this.f3609a);
        } catch (Exception e) {
        }
    }
}
