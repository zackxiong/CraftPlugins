package com.baidu.location;

import android.os.Handler;
import android.os.Message;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.location.Y */
class C0488Y extends Handler {
    final /* synthetic */ C0487X f3968a;

    C0488Y(C0487X c0487x) {
        this.f3968a = c0487x;
    }

    public void handleMessage(Message message) {
        if (C0532n.gR) {
            switch (message.what) {
                case ProGuard.styleable.View_android_focusable /*1*/:
                    this.f3968a.m5769d();
                default:
            }
        }
    }
}
