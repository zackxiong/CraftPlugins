package com.baidu.mapapi.map;

import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.map.C0636y;

public final class BaiduMapOptions {
    MapStatus f4256a;
    boolean f4257b;
    int f4258c;
    boolean f4259d;
    boolean f4260e;
    boolean f4261f;
    boolean f4262g;
    boolean f4263h;
    boolean f4264i;

    public BaiduMapOptions() {
        this.f4256a = new MapStatus(0.0f, new LatLng(39.914935d, 116.403119d), 0.0f, 12.0f, null, null);
        this.f4257b = true;
        this.f4258c = 1;
        this.f4259d = true;
        this.f4260e = true;
        this.f4261f = true;
        this.f4262g = true;
        this.f4263h = true;
        this.f4264i = true;
    }

    C0636y m6201a() {
        return new C0636y().m6610a(this.f4256a.m6248c()).m6611a(this.f4257b).m6609a(this.f4258c).m6612b(this.f4259d).m6613c(this.f4260e).m6614d(this.f4261f).m6615e(this.f4262g);
    }

    public BaiduMapOptions compassEnabled(boolean z) {
        this.f4257b = z;
        return this;
    }

    public BaiduMapOptions mapStatus(MapStatus mapStatus) {
        if (mapStatus != null) {
            this.f4256a = mapStatus;
        }
        return this;
    }

    public BaiduMapOptions mapType(int i) {
        this.f4258c = i;
        return this;
    }

    public BaiduMapOptions overlookingGesturesEnabled(boolean z) {
        this.f4261f = z;
        return this;
    }

    public BaiduMapOptions rotateGesturesEnabled(boolean z) {
        this.f4259d = z;
        return this;
    }

    public BaiduMapOptions scaleControlEnabled(boolean z) {
        this.f4264i = z;
        return this;
    }

    public BaiduMapOptions scrollGesturesEnabled(boolean z) {
        this.f4260e = z;
        return this;
    }

    public BaiduMapOptions zoomControlsEnabled(boolean z) {
        this.f4263h = z;
        return this;
    }

    public BaiduMapOptions zoomGesturesEnabled(boolean z) {
        this.f4262g = z;
        return this;
    }
}
