package com.baidu.location;

import android.os.Handler;

/* renamed from: com.baidu.location.r */
class C0536r implements C0452e {
    private static C0536r f4099a;
    public Handler hj;

    private C0536r() {
        this.hj = null;
        this.hj = new Handler();
    }

    public static C0536r bO() {
        if (f4099a == null) {
            f4099a = new C0536r();
        }
        return f4099a;
    }

    public boolean bP() {
        return false;
    }

    public synchronized void bQ() {
    }

    public boolean bR() {
        return false;
    }

    public synchronized void bS() {
    }
}
