package com.baidu.location;

import android.location.Location;
import android.os.Handler;
import android.os.Message;
import uk.co.chrisjenx.calligraphy.ProGuard;

class ap extends Handler {
    final /* synthetic */ ao f4037a;

    ap(ao aoVar) {
        this.f4037a = aoVar;
    }

    public void handleMessage(Message message) {
        if (C0532n.gR) {
            switch (message.what) {
                case ProGuard.styleable.View_android_focusable /*1*/:
                    this.f4037a.m5926b((Location) message.obj);
                case ProGuard.styleable.View_paddingStart /*2*/:
                    if (this.f4037a.af != null) {
                        this.f4037a.af.m5898a((String) message.obj);
                    }
                case ProGuard.styleable.View_paddingEnd /*3*/:
                    this.f4037a.m5918a("&og=1", (Location) message.obj);
                case ProGuard.styleable.View_theme /*4*/:
                    this.f4037a.m5918a("&og=2", (Location) message.obj);
                default:
            }
        }
    }
}
