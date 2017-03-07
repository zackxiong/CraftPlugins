package com.yf.smart.weloopx.android.services;

/* renamed from: com.yf.smart.weloopx.android.services.h */
class ProGuard implements Runnable {
    final /* synthetic */ LocationService f7197a;

    ProGuard(LocationService locationService) {
        this.f7197a = locationService;
    }

    public void run() {
        this.f7197a.m9060a(true);
    }
}
