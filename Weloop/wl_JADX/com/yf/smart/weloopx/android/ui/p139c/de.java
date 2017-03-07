package com.yf.smart.weloopx.android.ui.p139c;

import android.content.Intent;
import com.yf.smart.weloopx.activitys.RegisterStart;
import com.yf.smart.weloopx.p149d.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.de */
class de implements Runnable {
    final /* synthetic */ dc f8433a;

    de(dc dcVar) {
        this.f8433a = dcVar;
    }

    public void run() {
        Class i;
        if (ProGuard.m11006b().m11010c()) {
            i = ProGuard.m11006b().m11016i();
        } else {
            i = RegisterStart.class;
        }
        this.f8433a.getActivity().startActivity(new Intent(this.f8433a.getActivity(), i));
        this.f8433a.getActivity().finish();
    }
}
