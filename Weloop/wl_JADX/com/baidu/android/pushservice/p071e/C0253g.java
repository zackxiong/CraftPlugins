package com.baidu.android.pushservice.p071e;

import com.baidu.android.pushservice.p070d.C0235t.C0234a;

/* renamed from: com.baidu.android.pushservice.e.g */
class C0253g implements C0234a {
    final /* synthetic */ String f3119a;
    final /* synthetic */ C0252f f3120b;

    C0253g(C0252f c0252f, String str) {
        this.f3120b = c0252f;
        this.f3119a = str;
    }

    public void m4780a(boolean z, C0249d c0249d) {
        if (this.f3120b.f3115c == 5) {
            this.f3120b.f3118f.m4732a(c0249d, this.f3120b.f3116d, null, this.f3119a);
        } else if (z) {
            this.f3120b.f3118f.m4734a(this.f3120b.f3116d, c0249d);
            this.f3120b.f3118f.m4749a(this.f3120b.f3117e, this.f3120b.f3116d, c0249d);
        }
    }
}
