package com.baidu.lbsapi.auth;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* renamed from: com.baidu.lbsapi.auth.i */
class C0440i extends Handler {
    final /* synthetic */ LBSAuthManager f3750a;

    C0440i(LBSAuthManager lBSAuthManager, Looper looper) {
        this.f3750a = lBSAuthManager;
        super(looper);
    }

    public void handleMessage(Message message) {
        if (C0427a.f3727a) {
            C0427a.m5446a("handleMessage !!");
        }
        LBSAuthManagerListener lBSAuthManagerListener = (LBSAuthManagerListener) LBSAuthManager.listenerTable.get(message.getData().getString("listenerKey"));
        if (C0427a.f3727a) {
            C0427a.m5446a("handleMessage listener = " + lBSAuthManagerListener);
        }
        if (lBSAuthManagerListener != null) {
            lBSAuthManagerListener.onAuthResult(message.what, message.obj.toString());
        }
    }
}
