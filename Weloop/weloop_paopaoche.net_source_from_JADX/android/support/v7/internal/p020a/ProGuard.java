package android.support.v7.internal.p020a;

import android.support.v4.view.ak;
import android.support.v4.view.bm;
import android.view.View;

/* renamed from: android.support.v7.internal.a.c */
class ProGuard extends bm {
    final /* synthetic */ ProGuard f812a;

    ProGuard(ProGuard proGuard) {
        this.f812a = proGuard;
    }

    public void m1862b(View view) {
        if (this.f812a.f781A && this.f812a.f803r != null) {
            ak.m1025b(this.f812a.f803r, 0.0f);
            ak.m1025b(this.f812a.f799n, 0.0f);
        }
        if (this.f812a.f802q != null && this.f812a.f809x == 1) {
            this.f812a.f802q.setVisibility(8);
        }
        this.f812a.f799n.setVisibility(8);
        this.f812a.f799n.setTransitioning(false);
        this.f812a.f786F = null;
        this.f812a.m1851c();
        if (this.f812a.f798m != null) {
            ak.m1041l(this.f812a.f798m);
        }
    }
}
