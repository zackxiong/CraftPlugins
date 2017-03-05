package com.baidu.platform.comapi.map;

import android.os.Handler;
import android.os.Message;

/* renamed from: com.baidu.platform.comapi.map.r */
class C0630r extends Handler {
    final /* synthetic */ C0629q f4839a;

    C0630r(C0629q c0629q) {
        this.f4839a = c0629q;
    }

    public void handleMessage(Message message) {
        super.handleMessage(message);
        if (C0629q.f4835c != null) {
            this.f4839a.f4837d.m6606a(message);
        }
    }
}
