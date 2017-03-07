package com.tencent.p099b.p100a;

/* renamed from: com.tencent.b.a.u */
public enum C0709u {
    INSTANT(1),
    ONLY_WIFI(2),
    BATCH(3),
    APP_LAUNCH(4),
    DEVELOPER(5),
    PERIOD(6),
    ONLY_WIFI_NO_CACHE(7);
    
    int f5324h;

    private C0709u(int i) {
        this.f5324h = i;
    }

    public static C0709u m7088a(int i) {
        for (C0709u c0709u : C0709u.values()) {
            if (i == c0709u.f5324h) {
                return c0709u;
            }
        }
        return null;
    }
}
