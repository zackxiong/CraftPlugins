package com.baidu.location;

/* renamed from: com.baidu.location.H */
class C0462H implements Runnable {
    final /* synthetic */ C0448C f3889a;
    final /* synthetic */ C0460G f3890b;

    C0462H(C0460G c0460g, C0448C c0448c) {
        this.f3890b = c0460g;
        this.f3889a = c0448c;
    }

    public void run() {
        this.f3890b.m5600do(this.f3889a.getGeofenceId(), true);
    }
}
