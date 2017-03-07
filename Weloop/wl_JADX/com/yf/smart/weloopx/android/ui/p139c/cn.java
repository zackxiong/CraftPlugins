package com.yf.smart.weloopx.android.ui.p139c;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.cn */
class cn implements OnKeyListener {
    final /* synthetic */ ck f8355a;

    cn(ck ckVar) {
        this.f8355a = ckVar;
    }

    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0 || i != 4) {
            return false;
        }
        this.f8355a.m10366e();
        return true;
    }
}
