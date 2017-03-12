package com.baidu.location;

import android.os.Handler;

/* renamed from: com.baidu.location.w */
class C0544w implements C0452e {
    private static C0544w f4113a;
    private Handler f4114Y;
    private boolean f4115Z;
    private boolean aa;

    static {
        f4113a = null;
    }

    private C0544w() {
        this.f4114Y = null;
        this.f4115Z = false;
        this.aa = false;
        this.f4114Y = new Handler();
    }

    private void m6105a() {
    }

    public static C0544w b5() {
        if (f4113a == null) {
            f4113a = new C0544w();
        }
        return f4113a;
    }

    public void b4() {
        this.f4114Y.post(new C0545x(this));
    }

    public void b6() {
        this.f4115Z = false;
    }
}
