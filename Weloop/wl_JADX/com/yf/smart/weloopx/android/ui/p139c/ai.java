package com.yf.smart.weloopx.android.ui.p139c;

import android.view.View;
import android.view.View.OnClickListener;
import com.yf.smart.weloopx.android.ui.p139c.ah.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.ai */
class ai implements OnClickListener {
    final /* synthetic */ ah f8206a;

    ai(ah ahVar) {
        this.f8206a = ahVar;
    }

    public void onClick(View view) {
        boolean z = true;
        this.f8206a.f8198b = true;
        if (this.f8206a.f8205i != null) {
            ProGuard a = this.f8206a.f8205i;
            String b = this.f8206a.f8204h;
            if (this.f8206a.f8199c) {
                z = false;
            }
            a.m9302a(b, z);
        }
        this.f8206a.m10167b();
    }
}
