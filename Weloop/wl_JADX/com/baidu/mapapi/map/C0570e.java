package com.baidu.mapapi.map;

/* renamed from: com.baidu.mapapi.map.e */
class C0570e implements Runnable {
    final /* synthetic */ int f4496a;
    final /* synthetic */ int f4497b;
    final /* synthetic */ int f4498c;
    final /* synthetic */ HeatMap f4499d;

    C0570e(HeatMap heatMap, int i, int i2, int i3) {
        this.f4499d = heatMap;
        this.f4496a = i;
        this.f4497b = i2;
        this.f4498c = i3;
    }

    public void run() {
        this.f4499d.m6232b(this.f4496a, this.f4497b, this.f4498c);
    }
}
