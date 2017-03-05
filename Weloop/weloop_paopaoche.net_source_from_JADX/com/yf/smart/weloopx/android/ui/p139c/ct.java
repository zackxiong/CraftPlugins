package com.yf.smart.weloopx.android.ui.p139c;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.ct */
class ct implements Runnable {
    final /* synthetic */ cs f8386a;

    ct(cs csVar) {
        this.f8386a = csVar;
    }

    public void run() {
        if (this.f8386a.f8385a.f8375t.m9607a()) {
            this.f8386a.f8385a.f8356a.setCenterItemLeft(((this.f8386a.f8385a.f8379x / 16) * 3) / 2);
            this.f8386a.f8385a.f8356a.setAdapter(this.f8386a.f8385a.f8377v);
            this.f8386a.f8385a.f8377v.m9160d();
            this.f8386a.f8385a.m10384d();
            return;
        }
        this.f8386a.f8385a.f8356a.setCenterItemLeft(((this.f8386a.f8385a.f8379x / 34) * 5) / 2);
        this.f8386a.f8385a.f8356a.setAdapter(this.f8386a.f8385a.f8376u);
        this.f8386a.f8385a.f8376u.m9160d();
        this.f8386a.f8385a.m10383b();
    }
}
