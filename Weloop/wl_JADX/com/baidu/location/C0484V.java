package com.baidu.location;

import android.os.Handler;
import android.os.Message;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.location.V */
class C0484V extends Handler {
    final /* synthetic */ C0483U f3960a;

    C0484V(C0483U c0483u) {
        this.f3960a = c0483u;
    }

    public void handleMessage(Message message) {
        if (C0532n.gR) {
            switch (message.what) {
                case ProGuard.styleable.View_android_focusable /*1*/:
                    try {
                        this.f3960a.m5758a();
                    } catch (Exception e) {
                    }
                default:
            }
        }
    }
}
