package com.baidu.location;

/* renamed from: com.baidu.location.I */
class C0463I implements Runnable {
    final /* synthetic */ C0448C f3891a;
    final /* synthetic */ C0460G f3892b;

    C0463I(C0460G c0460g, C0448C c0448c) {
        this.f3892b = c0460g;
        this.f3891a = c0448c;
    }

    public void run() {
        this.f3892b.m5600do(this.f3891a.getGeofenceId(), false);
    }
}
