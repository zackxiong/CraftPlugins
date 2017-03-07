package com.baidu.location;

import android.os.HandlerThread;

/* renamed from: com.baidu.location.B */
class C0446B {
    private static HandlerThread f3765a;

    static {
        f3765a = null;
    }

    static HandlerThread m5497a() {
        if (f3765a == null) {
            f3765a = new HandlerThread("ServiceStartArguments", 10);
            f3765a.start();
        }
        return f3765a;
    }
}
