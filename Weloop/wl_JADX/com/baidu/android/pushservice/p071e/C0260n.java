package com.baidu.android.pushservice.p071e;

import java.util.HashMap;

/* renamed from: com.baidu.android.pushservice.e.n */
class C0260n implements C0251o {
    final /* synthetic */ C0246a f3155a;
    final /* synthetic */ C0250e f3156b;

    C0260n(C0250e c0250e, C0246a c0246a) {
        this.f3156b = c0250e;
        this.f3155a = c0246a;
    }

    public void m4787a(int i, HashMap<String, String> hashMap) {
        String str = null;
        if (hashMap != null) {
            str = (String) hashMap.get("details");
        }
        if (this.f3155a != null) {
            this.f3155a.m4648f(i, str);
        }
    }
}
